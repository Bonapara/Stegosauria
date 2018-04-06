class ChangeColumnNameDomainToSpeciality1 < ActiveRecord::Migration[5.1]
  def change
    rename_column :artists, :domain, :speciality1
  end
end
