require 'rails_helper'

RSpec.describe Contact, type: :model do

  subject { 
    described_class.new(
      first_name: 'John',
      last_name: 'Doe',
      email: 'john.doe@gmail.com',
      mobile_number: '9876543210',
      message: 'hello world'
    ) 
  }

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end
  
  it "is not valid without a first name" do
    subject.first_name = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a last name" do
    subject.last_name = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without an email" do
    subject.email = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without message" do
    subject.message = nil
    expect(subject).to_not be_valid
  end

  it "is valid without mobile number" do
    subject.mobile_number = nil
    expect(subject).to be_valid
  end

  it "is invalid with invalid email" do
    subject.email = "john.doegmail.com"
    expect(subject).to_not be_valid
  end

end
