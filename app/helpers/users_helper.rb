module UsersHelper

  # Returns the Gravatar for the given user.
  def gravatar_for_index(user, size: 160)
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}&d=mm"
    image_tag(gravatar_url, alt: user.username, class: "card-img-top")
  end

  def gravatar_for_comments(user, size: 160)
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}&d=mm"
    image_tag(gravatar_url, alt: user.username, class: "img-fluid user-photo")
  end  

  def gravatar_for(user, size: 80)
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}&d=mm"
    image_tag(gravatar_url, alt: user.username, class: "gravatar")
  end

  def gravatar_for_header(user, size: 20)
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}&d=mm"
    image_tag(gravatar_url, alt: user.username, class: "gravatar_header")
  end
end