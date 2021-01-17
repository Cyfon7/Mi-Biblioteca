class ChangeColumnInTable < ActiveRecord::Migration[5.2]
  def change
    change_column(:books, :status, :integer)
  end
end
