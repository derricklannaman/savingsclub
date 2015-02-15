require 'rails_helper'

describe Susu, :type => :model do

  it 'has a name' do
    subject.name = 'Team Derrick'
    expect(subject.name).to eq('Team Derrick')
  end
  it 'has a start date' do
    subject.start_date = '2015-02-20 00:00:00.000000'
    expect(subject.start_date).to eq('2015-02-20 00:00:00.000000')
  end

  it 'has a member count' do
    subject.member_count = 10
    expect(subject.member_count).to eq(10)
  end

  it 'has a total value' do
    subject.total_value = 2000
    expect(subject.total_value).to eq(2000)
  end

end
