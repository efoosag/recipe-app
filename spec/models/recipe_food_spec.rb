require 'rails_helper'

RSpec.describe RecipeFood, type: :model do
    describe 'Testing validations' do
        @user = User.new(name: 'Afolabi', email: '12abcd@gmail.com', password: '123456')
        @food = Food.new(name: 'Rice', price: 1000, user: @user, measurement_unit: 'kg', quantity: 4 )
        @recipe = Recipe.new(name: 'Yam flour', user: @user, description: 'This is the best african food')
        subject { RecipeFood.new(food: @food, recipe: @recipe, quantity: 4) }

        before { subject.save }

        it 'should have a valid food' do
            subject.food = nil
            expect(subject).to_not be_valid
        end

        it 'should have a valid recipe' do
            subject.recipe = nil
            expect(subject).to_not be_valid
        end

        it 'quantity should not be less than 0' do
            subject.quantity = -1
            expect(subject).to_not be_valid
        end

        it 'quantity should not be nil' do
            subject.quantity = nil
            expect(subject).to_not be_valid
        end
    end
end