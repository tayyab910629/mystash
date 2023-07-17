class DashboardController < ApplicationController
  before_action :authenticate_user!
  def main
    @trxlist=current_user.transactions.reverse_order
    @sum=current_user.transactions.sum(:buying_amount)
    @sold_amount=current_user.transactions.sum (:selling_amount)
    # @transaction = @trxlist.first
    
  
    # @transaction = current_user.transactions(params[:id])

    # @transaction = current_user.transactions.find(params[:id])




  end


  



end
