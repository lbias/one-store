class CreateIntros < ActiveRecord::Migration[5.0]
  def change
    create_table :intros do |t|

      t.timestamps
    end
  end
end
