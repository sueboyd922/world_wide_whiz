class AddCountryCodeToQuestions < ActiveRecord::Migration[6.0]
  def change
    add_column :questions, :country_code, :string
  end
end
