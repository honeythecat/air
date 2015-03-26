require 'rails_helper'

describe Rental do
  it {should validate_presence_of :location}
  it {should validate_presence_of :price}
end
