require 'spec_helper'

RSpec.describe Phone do 
  describe "#operator" do
    context 'life' do  
      let(:phone) { Phone.new(number) }   
      let(:number) { '+375259038314' }
    
      it 'return life' do
        expect(phone.operator).to eq 'Life'
      end
    end

    context 'mts' do 
      let(:numbers) do 
        ['+375296832636', '+375299832636', '+375293832636', '80292832636', '80298832636', '80296832636', '80294832636']
      end
     
      it 'return mts' do
        numbers.each do|number|
          phone = Phone.new(number)
          expect(phone.operator).to eq 'Mts'
        end
      end
    end
  end
end
