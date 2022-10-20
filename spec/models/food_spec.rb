require 'rails_helper'

RSpec.describe Food, type: :model do
  describe 'Food testing validations' do
    @user = User.new(name: 'Afolabi', email: '12abcd@gmail.com', password: '123456')
    subject { Food.new(name: 'Rice', price: 1000, user: @user, measurement_unit: 'kg', quantity: 4) }

    before { subject.save }

    it 'should have a valid name' do
      subject.name = nil
      expect(subject).to_not be_valid
    end

    it 'name should not be blank' do
      subject.name = ''
      expect(subject).to_not be_valid
    end

    it 'should have a valid price' do
      subject.price = -1
      expect(subject).to_not be_valid
    end

    it 'quantity should not be less than 0' do
      subject.quantity = -1
      expect(subject).to_not be_valid
    end

    it 'should have a valid measurement unit in kg' do
      expect(subject.measurement_unit).to eq('kg')
    end

    it 'price should not be nil' do
      subject.price = nil
      expect(subject).to_not be_valid
    end
  end
end
