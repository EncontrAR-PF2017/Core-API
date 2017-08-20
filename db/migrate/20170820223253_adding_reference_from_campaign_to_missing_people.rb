class AddingReferenceFromCampaignToMissingPeople < ActiveRecord::Migration[5.0]
  def change
  	add_reference :campaigns, :missing_person, index: true
  end
end
