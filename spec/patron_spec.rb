require 'rspec'
require './lib/patron'
require './lib/exhibit'

describe Patron do
  it 'has a name' do
    patron_1 = Patron.new("Bob", 20)

    expect(patron_1.name).to eq("Bob")
  end

  it 'has spending money' do
    patron_1 = Patron.new("Bob", 20)

    expect(patron_1.spending_money).to eq(20)
  end

  it 'starts with an empty array of interests but can add interests' do
   patron_1 = Patron.new("Bob", 20)

   expect(patron_1.interests).to eq([])
   patron_1.add_interest("Dead Sea Scrolls")
   patron_1.add_interest("Gems and Minerals")
   expect(patron_1.interests).to eq(["Dead Sea Scrolls", "Gems and Minerals"])
  end
end
