module UsersHelper
    
    
    def default_avatar(size)
        image_tag("risa.jpg", alt: "avatar", size: size)
    end
    
end
