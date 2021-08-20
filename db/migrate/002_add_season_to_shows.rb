class AddSeasonToShows < ActiveRecord::Migration[5.2]
    def change
        add_column :shows, :season, :string
    end 
end 

#table, column, datatype
#run rake db:migrate to migrate this new change over 