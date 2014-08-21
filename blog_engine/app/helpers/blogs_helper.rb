module BlogsHelper

  def blogs_access user_role
    
    case user_role
      when 'Blog Owner'
        'Blogs I Own'
      when 'Blog Contributor'
        'Blog I contribute To'
      when 'Blog Subscribe'
        'Blog I have Subscribed'
    end

  end

end
