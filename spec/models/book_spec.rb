# frozen_string_literal: true

require 'rails_helper'
require 'spec_helper'

describe Book, type: :model do
  subject(:book) { create(:book) }

  it { is_expected.to be_valid }
  it { should validate_presence_of :year }
  it { should validate_presence_of :title }
  it { should validate_presence_of :genre }
  it { should validate_presence_of :author }
  it { should validate_presence_of :editor }
  it { should validate_presence_of :image }
end
