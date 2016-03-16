require 'rails_helper'

RSpec.describe Post, type: :model do
  context 'Validation' do
    it { is_expected.to validate_presence_of :title }
    it { is_expected.to validate_presence_of :content }
  end

  context 'Association' do
    it { is_expected.to belong_to :user }
    it { is_expected.to have_many :comments }
  end
end
