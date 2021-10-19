class AdventureSerializer < ActiveModel::Serializer
  attributes :id, :adventure_summary

  def adventure_summary

    @end = self.object.adventure_status ? "ADVENTURE STATUS: Success!" : "Your last words were \"#{self.object.last_words}\". ADVENTURE STATUS: Failure"

    "On this day, you were a peasant by the name of #{self.object.character_name}. #{self.object.choice_1} #{self.object.choice_2} #{self.object.choice_3} #{self.object.choice_4} #{self.object.choice_5} #{@end}"
  end

end

