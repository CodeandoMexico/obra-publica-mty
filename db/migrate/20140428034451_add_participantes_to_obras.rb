class AddParticipantesToObras < ActiveRecord::Migration
  def change
    add_column :obras, :participantes, :integer
  end
end
