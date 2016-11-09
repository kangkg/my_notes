# When starting out:
$ bundle install
$ bundle exec rake db:create
$ bundle exec rake db:migrate
$ bundle exec rake db:seed
##

# random code snippets
bundle exec rake generate:migration NAME=add_name_here

bundle exec rake db:
bundle exec rspec

class CreateDogs < ActiveRecord::Migration
  def change
    create_table :dogs do |t|
      t.string   :name, { null: false, limit: 50 }
      t.string   :license, { null: false }
      t.integer  :age
      t.integer  :weight
      t.integer  :owner_id

      t.timestamps
    end
  end
end


class AddBreedToDogs < ActiveRecord::Migration
  def change
    add_column :dogs, :breed, :string # NEED 3 ARGS OMGGG
    #
    remove_column :dogs, :weight
    #
    change_table :ratings do |t|
      t.rename :rater_id, :judge_id
    end

  end
end



