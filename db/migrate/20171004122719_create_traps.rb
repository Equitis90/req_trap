class CreateTraps < ActiveRecord::Migration[5.1]
  def change
    create_table :traps do |t|
      t.datetime :request_date
      t.string :remote_ip
      t.string :request_method
      t.string :scheme
      t.string :query_string
      t.string :query_params
      t.string :cookies
      t.string :headers

      t.timestamps
    end
  end
end
