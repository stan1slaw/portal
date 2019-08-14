module ImageHelper
    def picturevalid(url)
         url.nil? ? url = "https://cdn.iconscout.com/icon/premium/png-256-thumb/human-user-profile-man-face-avatar-51412.png" : url
    end
end
