class MarketCommentsController < ApplicationController
  before_action :set_market_comment, only: [:show, :edit, :update, :destroy]

  # GET /market_comments
  # GET /market_comments.json
  def index
    @market_comments = MarketComment.all
  end

  # GET /market_comments/1
  # GET /market_comments/1.json
  def show
  end

  # GET /market_comments/new
  def new
    @market_comment = MarketComment.new
  end

  # GET /market_comments/1/edit
  def edit
  end

  # POST /market_comments
  # POST /market_comments.json
  def create
    @market_comment = MarketComment.new(market_comment_params)

    respond_to do |format|
      if @market_comment.save
        format.html { redirect_to @market_comment, notice: 'Market comment was successfully created.' }
        format.json { render action: 'show', status: :created, location: @market_comment }
      else
        format.html { render action: 'new' }
        format.json { render json: @market_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /market_comments/1
  # PATCH/PUT /market_comments/1.json
  def update
    respond_to do |format|
      if @market_comment.update(market_comment_params)
        format.html { redirect_to @market_comment, notice: 'Market comment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @market_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /market_comments/1
  # DELETE /market_comments/1.json
  def destroy
    @market_comment.destroy
    respond_to do |format|
      format.html { redirect_to market_comments_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_market_comment
      @market_comment = MarketComment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def market_comment_params
      params.require(:market_comment).permit(:comment, :status)
    end
end
