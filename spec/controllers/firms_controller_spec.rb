require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe FirmsController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # Firm. As you add validations to Firm, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # FirmsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all firms as @firms" do
      firm = Firm.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:firms)).to eq([firm])
    end
  end

  describe "GET #show" do
    it "assigns the requested firm as @firm" do
      firm = Firm.create! valid_attributes
      get :show, {:id => firm.to_param}, valid_session
      expect(assigns(:firm)).to eq(firm)
    end
  end

  describe "GET #new" do
    it "assigns a new firm as @firm" do
      get :new, {}, valid_session
      expect(assigns(:firm)).to be_a_new(Firm)
    end
  end

  describe "GET #edit" do
    it "assigns the requested firm as @firm" do
      firm = Firm.create! valid_attributes
      get :edit, {:id => firm.to_param}, valid_session
      expect(assigns(:firm)).to eq(firm)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Firm" do
        expect {
          post :create, {:firm => valid_attributes}, valid_session
        }.to change(Firm, :count).by(1)
      end

      it "assigns a newly created firm as @firm" do
        post :create, {:firm => valid_attributes}, valid_session
        expect(assigns(:firm)).to be_a(Firm)
        expect(assigns(:firm)).to be_persisted
      end

      it "redirects to the created firm" do
        post :create, {:firm => valid_attributes}, valid_session
        expect(response).to redirect_to(Firm.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved firm as @firm" do
        post :create, {:firm => invalid_attributes}, valid_session
        expect(assigns(:firm)).to be_a_new(Firm)
      end

      it "re-renders the 'new' template" do
        post :create, {:firm => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested firm" do
        firm = Firm.create! valid_attributes
        put :update, {:id => firm.to_param, :firm => new_attributes}, valid_session
        firm.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested firm as @firm" do
        firm = Firm.create! valid_attributes
        put :update, {:id => firm.to_param, :firm => valid_attributes}, valid_session
        expect(assigns(:firm)).to eq(firm)
      end

      it "redirects to the firm" do
        firm = Firm.create! valid_attributes
        put :update, {:id => firm.to_param, :firm => valid_attributes}, valid_session
        expect(response).to redirect_to(firm)
      end
    end

    context "with invalid params" do
      it "assigns the firm as @firm" do
        firm = Firm.create! valid_attributes
        put :update, {:id => firm.to_param, :firm => invalid_attributes}, valid_session
        expect(assigns(:firm)).to eq(firm)
      end

      it "re-renders the 'edit' template" do
        firm = Firm.create! valid_attributes
        put :update, {:id => firm.to_param, :firm => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested firm" do
      firm = Firm.create! valid_attributes
      expect {
        delete :destroy, {:id => firm.to_param}, valid_session
      }.to change(Firm, :count).by(-1)
    end

    it "redirects to the firms list" do
      firm = Firm.create! valid_attributes
      delete :destroy, {:id => firm.to_param}, valid_session
      expect(response).to redirect_to(firms_url)
    end
  end

end