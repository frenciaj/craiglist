class DeleteConditionTable < ActiveRecord::Migration
  def change
    drop_table :conditions
  end
end
