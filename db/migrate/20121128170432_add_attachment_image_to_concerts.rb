class AddAttachmentImageToConcerts < ActiveRecord::Migration
  def self.up
    change_table :concerts do |t|
      t.has_attached_file :image
    end
  end

  def self.down
    drop_attached_file :concerts, :image
  end
end
