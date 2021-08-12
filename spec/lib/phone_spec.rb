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
        ['+375336832636', 
        '+375339832636', 
        '+375333832636', 
        '80292832636', 
        '80298832636', 
        '80296832636', 
        '80294832636']
      end
     
      it 'return mts' do
        numbers.each do|number|
          phone = Phone.new(number)
          expect(phone.operator).to eq 'Mts'
        end
      end
    end

    context 'velcome' do 
      let(:numbers) do 
        ['+375331832636', 
        '+37533832636', 
        '+375332832636', 
        '+375334832636', 
        '+375335832636', 
        '+375337832636',
        '+375338832636',  
        '80292132636', 
        '80293832636', 
        '80295832636', 
        '80297832636',
        '80299832636']
      end
     
      it 'return velcome' do
        numbers.each do|number|
          phone = Phone.new(number)
          expect(phone.operator).to eq 'Velcome'
        end
      end
    end
  end
end
