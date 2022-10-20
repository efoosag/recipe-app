require 'rails_helper'

RSpec.describe User, type: :model do
    describe 'Testing validations' do
        subject { User.new(name: 'Afolabi', 
            email: '12abcd@gmail.com', 
            password: '123456') }
        
        before { subject.save }

        it 'should have a valid name' do
            subject.name = nil
            expect(subject).to_not be_valid
        end

        it 'name should not be blank' do
            subject.email = ''
            expect(subject).to_not be_valid
        end

        it 'should have a valid email' do
            subject.email = nil
            expect(subject).to_not be_valid
        end
    end
end