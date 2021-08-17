# frozen_string_literal: true

require 'spec_helper'

RSpec.describe Phone do
  describe '#operator' do
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
        numbers.each do |number|
          phone = Phone.new(number)
          expect(phone.operator).to eq 'Mts'
        end
      end
    end

    context 'velcome' do
      let(:numbers) do
        ['+375444832636',
         '+375445832636',
         '+375447832636',
         '80291132636',
         '80293832636',
         '80299832636']
      end

      it 'return velcome' do
        numbers.each do |number|
          phone = Phone.new(number)
          expect(phone.operator).to eq 'Velcome'
        end
      end
    end
  end

  describe '#format' do
    context 'with plus' do
      let(:phone) { Phone.new(number) }
      let(:number) { '+375259038314' }
      let(:correct_number_format) { '+375(25)-903-83-14' }

      it 'returns number with correct format' do
        expect(phone.format).to eq correct_number_format
      end
    end

    context 'without plus' do
      let(:phone) { Phone.new(number) }
      let(:number) { '80298832636' }
      let(:correct_number_format) { '80(29)-883-26-36' }

      it 'return number with correct format' do
        expect(phone.format).to eq correct_number_format
      end
    end
  end

  describe '#valid?' do
    let(:phone) { Phone.new(number) }

    context 'valid' do
      let(:number) { '+375298832636' }

      it 'is valid' do
        expect(phone.valid?).to be_truthy
      end
    end

    context 'valid' do
      let(:number) { '80291132636' }

      it 'is valid' do
        expect(phone.valid?).to be_truthy
      end
    end

    context 'valid' do
      let(:number) { '+375339832636' }

      it 'is valid' do
        expect(phone.valid?).to be_truthy
      end
    end

    context 'valid' do
      let(:number) { '80251132336' }

      it 'is valid' do
        expect(phone.valid?).to be_truthy
      end
    end
  end

  describe '#invalid?' do
    let(:phone) { Phone.new(number) }

    context 'invalid' do
      context 'include letters' do
        let(:number) { '+375298832636dfghjk' }

        it 'is invalid' do
          expect(phone.valid?).to be_falsey
        end
      end

      context 'include letters && spaces ' do
        let(:number) { '+375298832636df gh jk' }

        it 'is invalid' do
          expect(phone.valid?).to be_falsey
        end
      end

      context 'include letters && spaces && \- ' do
        let(:number) { '+375298832636df g-h jk' }

        it 'is invalid' do
          expect(phone.valid?).to be_falsey
        end
      end

      context 'include letters && \s && \- error number' do
        let(:number) { '3752  08448bnm98832636df g-h jk' }

        it 'is invalid' do
          expect(phone.valid?).to be_falsey
        end
      end

      context 'include letters && = && \s && \- error number' do
        let(:number) { '+375298832636==df g-h jk' }

        it 'is invalid' do
          expect(phone.valid?).to be_falsey
        end
      end
    end
  end
end
