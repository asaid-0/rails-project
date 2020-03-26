class CreateUsers < ActiveRecord::Migration[6.0]
  def up
    create_table :users do |t|
      t.string :name
    end

    User.create :name => "Ahmed"
  end

  def down
    drop_table :users
  end

end
