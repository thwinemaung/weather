class AddSummaryToForecast < ActiveRecord::Migration[5.2]
  def change
    add_column :forecasts, :summary, :string
  end
end
