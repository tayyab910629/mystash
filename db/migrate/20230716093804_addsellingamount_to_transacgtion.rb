class AddsellingamountToTransacgtion < ActiveRecord::Migration[6.1]
  def change
    add_column :transactions, :selling_amount, :integer
    add_column :transactions, :selling_date, :date

    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
