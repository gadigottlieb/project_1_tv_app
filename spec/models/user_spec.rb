require 'rails_helper'

describe User do
  let(:gadi) {User.new(username: "gadspads24",
                       first_name: "Gadi",
                       last_name: "Gottlieb",
                       password: "qwerty",
                       password_confirmation: "qwerty",
                       email: "gadigottlieb@gmail.com",
                       birthday: "1990-05-16",
                       phone: 7120)}

  it "is valid with a username, first_name, last_name, password, email, birthday, and phone" do
    expect(gadi).to be_valid
  end

  it "is invalid without a first name" do
    expect(User.new(first_name: nil)).to have(1).errors_on(:first_name)
  end

  it "is invalid without a username" do
    expect(User.new(username: nil)).to have(1).errors_on(:username)
  end

  it "is invalid without a unique username" do
    gadi.save!
    roni = User.new(username: "gadspads24",
                    first_name: "Roni",
                    last_name: "Gottlieb",
                    password: "qwerty",
                    password_confirmation: "qwerty",
                    email: "gottroni@gmail.com",
                    birthday: "1996-08-19",
                    phone: 7123)
    expect(roni).to have(1).errors_on(:username)
  end

end
