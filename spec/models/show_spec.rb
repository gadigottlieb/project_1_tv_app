require 'rails_helper'

describe Show do
  it { is_expected.to validate_presence_of :title }
  it { is_expected.to validate_presence_of :genre }
  it { is_expected.to validate_presence_of :network }
  it { is_expected.to have_many :users}
end
