module UsernameHelper
  def help(id)
    User.find(id).username
  end

  def helpimg(id)
    url = User.find(id).avatar.url
    if url.nil?
      url = "https://cdn.iconscout.com/icon/premium/png-256-thumb/human-user-profile-man-face-avatar-51412.png"
    else
      url
    end
  end
end

