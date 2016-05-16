class Tuteedatetime < ActiveRecord::Migration
  def change
  	add_column :tutee_ts, :tuteedatetime, :datetime
  end
end
