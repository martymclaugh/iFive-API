class PhoneNumbersController < ApplicationController
  def new
    @phone_number = PhoneNumbers.new
  end

  def create
    p params
    @phone_number = PhoneNumber.find_or_create_by(phone_number: params[:phone_number])
    @phone_number.create_pin
    @phone_number.send_pin
  end

end
