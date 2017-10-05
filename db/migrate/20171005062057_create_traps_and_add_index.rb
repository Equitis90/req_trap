class CreateTrapsAndAddIndex < ActiveRecord::Migration[5.1]
  def change
    create_table :traps do |t|
      t.string :trap_id

      t.timestamps
    end

    add_reference :requests, :trap, index: true
  end
end
