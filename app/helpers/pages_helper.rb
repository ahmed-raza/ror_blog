module PagesHelper
  def attachment(resource)
    resource.attachment || Attachment.new
  end
  def name_or_email(current_user)
    if current_user.first_name?
      current_user.first_name
    else
      current_user.email
    end
  end
end
