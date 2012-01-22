class CreateMuzykas < ActiveRecord::Migration
  def self.up
    create_table :muzykas do |t|
      t.string :title
      t.integer :rating

      t.timestamps
    end
  end

  def self.down
    drop_table :muzykas
  end
end
