require 'rails_helper'

RSpec.describe Airline, type: :model do
    let(:airline) { FactoryBot.create(:airline) }

    context 'expects model to have 3 feilds' do
        it { expect(airline.name).to eq('My Airline') }
        it { expect(airline.image_url).to eq('some_url') }
        it { expect(airline.slug).to eq('my-airline') }
    end
    
    context 'slugifly method should turn name into slug' do
        let(:airline) { FactoryBot.create(:airline, name: "Solomon Airlines") }

        it { expect(airline.slug).to eq(airline.name.parameterize) }
    end    
end    