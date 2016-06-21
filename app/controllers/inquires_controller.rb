class InquiresController < ApplicationController

  # respond_to :json, only: :create
  layout false

  def create
    # @request = Request.new request_params
    # if @request.save
    #   respond_with @request, status: :created, location: '/'
    # else
    #   respond_with @request.errors, status: :unprocessable_entity
    # end

    @inquire = Inquire.new inquire_params
    if @inquire.save
      InquireMailer.inquire_received(@inquire).deliver_now
      render json: {}, status: :created
    else
      render json: {}, status: :unprocessable_entity
    end
  end

  # def index;end

  private
  def inquire_params
    params.require(:inquire).permit(:name, :email, :phone, :business, :money, :wagelvl)
  end

end
