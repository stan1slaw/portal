module TagsHelper

    def tagging(p)
    
        p.map(&:name).map { |t| link_to t, tag_path(t) }.join(', ')
    
    end

end
