
class ReviewsController < ApplicationController

 before_action :confirm_user, :only => [:create, :destroy]

  def create
    @review = Review.new(review_params)
    @review.user = current_user
    @review.product_id = params[:product_id]
    if @review.save
      redirect_to '/products/' + @review.product_id.to_s
    end
  end

   def destroy
    @review = Review.find(params[:id])
      @review.destroy
      redirect_to "/products/#{params[:product_id]}"
   end



    private
    # @review.user = current_user
      def review_params
        params.require(:review).permit(:rating, :description)
      end



      def confirm_user
        if current_user
        end
      end



end