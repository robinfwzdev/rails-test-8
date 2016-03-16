require 'rails_helper'

RSpec.describe Comment, type: :model do
  context 'Validation' do
    it { is_expected.to validate_presence_of :message }
  end
end
