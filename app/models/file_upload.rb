class FileUpload < ApplicationRecord
  has_one_attached :file_data

  after_save :extract_data

  def extract_data
    # Example for text file
    if file_data.content_type == 'text/plain'
      extracted_text = file_data.download
      # Process the extracted_text as needed
    end
  end
end