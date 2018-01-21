require 'rest-client'
require 'JSON'
require_relative '../../secrets'
require 'twilio-ruby'

class Roll < ApplicationRecord

  validates :cuid, uniqueness: true
  after_create :get_specifics

  def self.fetch_recent_votes
    JSON.parse(RestClient.get("#{API_BASE}/both/votes/recent.json", headers={"X-API-Key": API_KEY}))
  end

  def self.get_recent_votes
    votes = Roll.fetch_recent_votes
    votes['results']['votes'][0...2].each do |vote|
      roll = Roll.new(cuid: Roll.generate_cuid(vote))
      if roll.save
        puts "Success"
      else
        puts "Fail"
      end
    end
  end

  def self.generate_cuid(sushi)
    "#{sushi['congress']}-#{sushi['chamber']}-#{sushi['session']}-#{sushi['roll_call']}"
  end

  def fetch_specifics
    congress, chamber, session, roll_call = self.cuid.split('-')
    raw_vote_data = JSON.parse(RestClient.get(
      "#{API_BASE}/#{congress}/#{chamber}/sessions/#{session}/votes/#{roll_call}.json",
      headers={"X-API-Key": API_KEY})
    )
    raw_vote_data['results']['votes']['vote']
  end

  def text_body(voter, bill_id, description)
    "This is a text from LAA regarding #{voter['name']}(#{voter['party']}) who voted #{voter['vote_position']} on bill #{bill_id} which is in reference to #{description}."
  end

  def message_user(user, body)
    client = Twilio::REST::Client.new(TWILIO_SID, TWILIO_TOKEN)

    message = client.messages.create(
      'body': body,
      'to': user.phone_number,
      'from': '+15013024280'
    )

    puts message.sid
  end

  def get_specifics
    vote_data = self.fetch_specifics
    vote_data['positions'].each do |voter|

      body = text_body(voter, vote_data['bill']['bill_id'], vote_data['description'])

      state = State.find_by(abbreviation: voter['state'])

      if voter['district']
        district = District.find_by(number: voter['district'], state: state)
        district.users.each do |user|
          message_user(user, body)
        end
      else
        state.users.each do |user|
          message_user(user, body)
        end
      end
    end
  end

  def self.funny
    client = Twilio::REST::Client.new(TWILIO_SID, TWILIO_TOKEN)
    message = client.message.create(
      'body': "How's life over there?",
      'to': '+15018279722',
      'from': '+15013024280'
    )
    message.sid
  end

end
