namespace :todo do
  desc "Complete items older than seven days"
  task complete_items: :environment do
    Item.where("created_at <= ?", Time.now - 7.days).each do |t|
      t.update_attribute :completed, 'true'
    end
  end

end
