class CreateRandomgenerators < ActiveRecord::Migration
  def change
    create_table :randomgenerators do |t|

      t.timestamps
    end
  end
end
