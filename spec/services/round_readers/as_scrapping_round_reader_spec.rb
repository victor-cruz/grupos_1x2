require 'spec_helper'

describe RoundReaders::AsScrappingRoundReader do
  describe '#round_data' do
    before(:each) do
      round_data_accessor = RoundReaders::AsScrappingRoundReader.new
      @round_data = round_data_accessor.round_data
    end

    it 'load 15 bets' do
      @round_data.length.should == 15
    end

    it 'load correct string names into the bet' do
      @round_data.each {|match_item| match_item[0].class.should == String; match_item[1].class.should == String }
    end
  end
end
