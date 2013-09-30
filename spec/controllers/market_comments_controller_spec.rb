require 'spec_helper'

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

describe MarketCommentsController do

  # This should return the minimal set of attributes required to create a valid
  # MarketComment. As you add validations to MarketComment, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "comment" => "MyText" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # MarketCommentsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all market_comments as @market_comments" do
      market_comment = MarketComment.create! valid_attributes
      get :index, {}, valid_session
      assigns(:market_comments).should eq([market_comment])
    end
  end

  describe "GET show" do
    it "assigns the requested market_comment as @market_comment" do
      market_comment = MarketComment.create! valid_attributes
      get :show, {:id => market_comment.to_param}, valid_session
      assigns(:market_comment).should eq(market_comment)
    end
  end

  describe "GET new" do
    it "assigns a new market_comment as @market_comment" do
      get :new, {}, valid_session
      assigns(:market_comment).should be_a_new(MarketComment)
    end
  end

  describe "GET edit" do
    it "assigns the requested market_comment as @market_comment" do
      market_comment = MarketComment.create! valid_attributes
      get :edit, {:id => market_comment.to_param}, valid_session
      assigns(:market_comment).should eq(market_comment)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new MarketComment" do
        expect {
          post :create, {:market_comment => valid_attributes}, valid_session
        }.to change(MarketComment, :count).by(1)
      end

      it "assigns a newly created market_comment as @market_comment" do
        post :create, {:market_comment => valid_attributes}, valid_session
        assigns(:market_comment).should be_a(MarketComment)
        assigns(:market_comment).should be_persisted
      end

      it "redirects to the created market_comment" do
        post :create, {:market_comment => valid_attributes}, valid_session
        response.should redirect_to(MarketComment.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved market_comment as @market_comment" do
        # Trigger the behavior that occurs when invalid params are submitted
        MarketComment.any_instance.stub(:save).and_return(false)
        post :create, {:market_comment => { "comment" => "invalid value" }}, valid_session
        assigns(:market_comment).should be_a_new(MarketComment)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        MarketComment.any_instance.stub(:save).and_return(false)
        post :create, {:market_comment => { "comment" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested market_comment" do
        market_comment = MarketComment.create! valid_attributes
        # Assuming there are no other market_comments in the database, this
        # specifies that the MarketComment created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        MarketComment.any_instance.should_receive(:update).with({ "comment" => "MyText" })
        put :update, {:id => market_comment.to_param, :market_comment => { "comment" => "MyText" }}, valid_session
      end

      it "assigns the requested market_comment as @market_comment" do
        market_comment = MarketComment.create! valid_attributes
        put :update, {:id => market_comment.to_param, :market_comment => valid_attributes}, valid_session
        assigns(:market_comment).should eq(market_comment)
      end

      it "redirects to the market_comment" do
        market_comment = MarketComment.create! valid_attributes
        put :update, {:id => market_comment.to_param, :market_comment => valid_attributes}, valid_session
        response.should redirect_to(market_comment)
      end
    end

    describe "with invalid params" do
      it "assigns the market_comment as @market_comment" do
        market_comment = MarketComment.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        MarketComment.any_instance.stub(:save).and_return(false)
        put :update, {:id => market_comment.to_param, :market_comment => { "comment" => "invalid value" }}, valid_session
        assigns(:market_comment).should eq(market_comment)
      end

      it "re-renders the 'edit' template" do
        market_comment = MarketComment.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        MarketComment.any_instance.stub(:save).and_return(false)
        put :update, {:id => market_comment.to_param, :market_comment => { "comment" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested market_comment" do
      market_comment = MarketComment.create! valid_attributes
      expect {
        delete :destroy, {:id => market_comment.to_param}, valid_session
      }.to change(MarketComment, :count).by(-1)
    end

    it "redirects to the market_comments list" do
      market_comment = MarketComment.create! valid_attributes
      delete :destroy, {:id => market_comment.to_param}, valid_session
      response.should redirect_to(market_comments_url)
    end
  end

end
