require 'rails_helper'

RSpec.describe Request, type: :model do
  it 'should create request' do
    count = Request.count
    trap = FactoryGirl.create(:trap)
    FactoryGirl.create(:request, trap_id: trap.id)
    expect(Request.count).to eq count + 1
  end

  it 'should not create request without trap' do
    expect {FactoryGirl.create(:request)}.to raise_error ActiveRecord::RecordInvalid
  end
end
