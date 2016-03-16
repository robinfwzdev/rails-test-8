require 'rails_helper'

RSpec.describe Comment, type: :model do
  context 'Validation' do
    it { is_expected.to validate_presence_of :message }
  end

  context 'Association' do
    it { is_expected.to belong_to :user }
    it { is_expected.to belong_to :post }
  end
end
