require 'spec_helper'

describe AdindaVoteFu do
  describe '#acts_as_voter' do
    it 'should respond to #votes if a model acts as voter' do
      User.class_eval { acts_as_voter }
      user = User.new
      user.should respond_to(:votes)
    end

    it 'should not respond to #votes for other model' do
      user = User.new
      user.should_not respond_to(:votes)
    end
  end
end