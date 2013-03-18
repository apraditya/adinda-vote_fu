require 'adinda-vote_fu/acts_as_voteable'
require 'adinda-vote_fu/acts_as_voter'
require 'adinda-vote_fu/has_karma'
require 'adinda-vote_fu/models/vote.rb'

module AdindaVoteFu
  def self.included(receiver)
    receiver.send :include, Juixe::Acts::Voteable,
                            PeteOnRails::Acts::Voter,
                            PeteOnRails::VoteFu::Karma
  end
end

ActiveRecord::Base.send :include, AdindaVoteFu
