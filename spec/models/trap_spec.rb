require 'rails_helper'

RSpec.describe Trap, type: :model do
  it 'should create trap' do
    count = Trap.count
    FactoryGirl.create(:trap)
    expect(Trap.count).to eq count + 1
  end

  it 'should not create trap without trap_id' do
    expect {FactoryGirl.create(:trap, trap_id: nil)}.to raise_error ActiveRecord::RecordInvalid
  end
end
