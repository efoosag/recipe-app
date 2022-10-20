require 'rails_helper'

RSpec.describe Recipe, type: :model do
  describe 'Testing validations' do
    @user = User.new(name: 'Victor', email: '12abcd@gmail.com', password: '123456')
    subject { Recipe.new(name: 'Yam flour', user: @user, description: 'This is the best african food') }

    before { subject.save }

    it 'should have a valid name' do
      subject.name = nil
      expect(subject).to_not be_valid
    end

    it 'name should not be blank' do
      subject.name = ''
      expect(subject).to_not be_valid
    end

    it 'should have a valid description' do
        subject.description = nil
        expect(subject).to_not be_valid
    end

    it 'preparation time should not be blank' do
        subject.preparation_time = ''
        expect(subject).to_not be_valid
    end

    it 'cooking time should not be blank' do
        subject.cooking_time = ''
        expect(subject).to_not be_valid
    end
  end
end