# frozen_string_literal: true

require 'rails_helper'

describe Book, type: :model do

  subject(:book) { build(:book) }

  it { is_expected.to be_valid }
  it { is_expected.to validate_presence_of(:year) }

  describe '#generate_verification_code' do
    context 'When the user is created' do
      it 'generates a random verification code' do
        book.save!
        expect(book.year).to be_present
      end
    end
  end

end
