require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do
    it 'should be auto-assigned by AR for saved records' do
      @user = User.new(name: "andy", email: "voandy1998@gmail.com", password: "password", password_confirmation: "password")
      # we use bang here b/c we want our spec to fail if save fails (due to validations)
      # we are not testing for successful save so we have to assume it will be successful
      @user.save!
      expect(@user.id).to be_present
    end

    it 'should validate the presence of an email' do
      should validate_presence_of(:email)
    end

    it 'should validate that emails are unique' do
      should validate_uniqueness_of(:email).case_insensitive
    end

    it 'should validate the presence of a name' do
      should validate_presence_of(:name)
    end

    it 'should validate the presence of a password' do
      should validate_presence_of(:password)
    end

    it 'should validate the presence of a password confirmation' do
      should validate_presence_of(:password_confirmation)
    end

    it 'should validate that password and password confirmation match' do
      should have_secure_password
    end

    it 'should validate that passwords are atleast 5 characters' do
      should validate_length_of(:password).is_at_least(5).on(:create)
    end
  end

  describe '.authenticate_with_credentials' do
    it 'should validate if email(including leading/trailing whitespace, and case insensitive) exists and password matches' do
      @user = User.new(name: "andy", email: "voandy1998@gmail.com", password: "password", password_confirmation: "password")
      @user.save!
      found_user = User.authenticate_with_credentials("    vOaNdY1998@gMaIl.CoM    ", "password")
      expect(found_user).not_to be nil
    end
  end
end








