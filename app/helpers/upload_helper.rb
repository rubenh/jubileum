module UploadHelper

  def file_name(file)
    if file.present?
      File.basename(file.url)
    end
  end

  def file_name_with_link(file, path, options = {})
    name = file_name(file)
    if name
      link_to(name, path, options)
    end
  end

end
