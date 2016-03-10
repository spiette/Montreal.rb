class CreateHabtmRelationshipBetweenMembersAndEvents < ActiveRecord::Migration
  def change
    create_table :events_members do |t|
      t.belongs_to :event,  index: true
      t.belongs_to :member, index: true
    end
  end
end
