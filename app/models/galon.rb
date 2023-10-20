class Galon < ApplicationRecord
  def image=(uploaded_io)
    write_attribute(:image, uploaded_io.original_filename)
  end
  def image
    read_attribute(:image)
  end
end
