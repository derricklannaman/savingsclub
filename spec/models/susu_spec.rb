require 'rails_helper'

describe Susu, :type => :model do

  it 'has a name' do
    subject.name = 'Team Derrick'
    expect(subject.name).to eq('Team Derrick')
  end
  xit 'has a start date' do
    subject.start_date = '2/15/2015'
    expect(subject.start_date).to eq('2/15/2015')
  end

  it 'has a member count' do
    subject.member_count = 10
    expect(subject.member_count).to eq(10)
  end

  it 'has a total value'


end
