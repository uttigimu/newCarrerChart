class CreateAfterInterships < ActiveRecord::Migration
  def change
    create_table :after_interships do |t|
      t.integer :intershipPriod
      t.string :workingHours
      t.string :impressionContents
      t.string :levelOfAchievement
      t.string :overallImpression
      t.string :ambition
      t.string :commentsOfTachers

      t.timestamps
    end
  end
end
