class TransactionsController < ApplicationController
  
  def destroy
    @transaction = current_user.transactions.find(params[:id])
    @transaction.destroy
    redirect_to dashboard_path, notice: 'Transaction was successfully deleted.'
  end


  def create

    @trx = current_user.transactions.new(data)
    if @trx.save
      redirect_to dashboard_path, notice: 'Transaction was successfully updated.'
    end
  end

  def edit
    @transaction = Transaction.find(params[:id])
  end

  def update
    @transaction = Transaction.find(params[:id])
    if @transaction.update(transaction_params)
      redirect_to dashboard_path, notice: 'Transaction was successfully updated.'
    else
      render :edit
    end
  end


 
  

  private
  def data
    {
      item_description: params[:item_description],
      item_tag: params[:item_tag], bought_date: params[:bought_date],
      buying_amount: params[:buying_amount]


    }
  end

  def transaction_params
    params.require(:transaction).permit(:selling_date, :selling_amount)
  end





end
