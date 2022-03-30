class AddCreatorsToGeneralInfos < ActiveRecord::Migration[6.1]
  def change
    add_column :general_infos, :creators, :string
  end
end
