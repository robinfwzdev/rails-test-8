require 'rails_helper'

RSpec.describe User, type: :model do
  context 'Association' do
    it { is_expected.to have_many :posts }
  end
end
