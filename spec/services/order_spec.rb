require 'rails_helper'

RSpec.describe Order do
  describe '.total' do
    it 'returns the total, items and status of the order' do
      expect(Order.total).to eq(0)
      expect(Order.items).to be_nil
      expect(Order.status).to eq("draft")
    end

    it 'is a draft order' do
      expect(Order).to be_draft
    end
  end
end
