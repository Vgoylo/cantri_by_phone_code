require 'spec_helper'

RSpec.describe Phone do 
  let!(:phone) { Phone.new(number) }

  describe "#operator" do
    context 'life' do     
      let(:number) { '+375259038314' }
    
      it "return life" do
        expect(phone.operator).to eq 'Life'
      end
    end
  end
end
