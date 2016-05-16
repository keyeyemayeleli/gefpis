class Tprdatetime < ActiveRecord::Migration
  def change
  	add_column :tpr_ts, :tprdatetime, :datetime
  end
end
