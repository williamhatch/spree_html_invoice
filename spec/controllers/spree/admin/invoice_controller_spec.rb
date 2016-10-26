require 'spec_helper'

describe Spree::Admin::InvoiceController, type: :controller do

  describe "GET 'lasku'" do

    let(:order) { create(:order) }

    before do
      send_request
    end

    def send_request
      get :lasku, { template: 'invoice', id: order.number }
    end

    it 'assigns @invoice to true' do
      expect(assigns[:invoice]).to eq true
    end

    it 'renders invoices templates' do
      expect(response).to render_template(:invoice)
    end

    it 'assigns @order from params[:id]' do
      expect(assigns[:order]).to eq order
    end

    it "recieves status to be 200" do
      expect(response.status).to eq 200
    end

  end

end
