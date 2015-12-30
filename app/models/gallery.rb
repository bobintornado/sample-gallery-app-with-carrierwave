class Gallery < ActiveRecord::Base
  mount_uploaders :images, ImageUploader
end
