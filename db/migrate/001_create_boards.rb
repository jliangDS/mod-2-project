class CreateBoards < ActiveRecord::Migration[4.2]
    def change
        create_table :boards do |t|
            t.string :name
        end
    end
end