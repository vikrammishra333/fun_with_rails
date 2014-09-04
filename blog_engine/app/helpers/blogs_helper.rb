module BlogsHelper

  def blogs_access user_role   

    case user_role
    when 'Blog Owner', 'Admin'
      'Blogs I Own'
    when 'Blog Contributor'
      'Blog I contribute To'
    when 'Blog Subscribe'
      'Blog I have Subscribed'
    end

  end

  def no_blogs_message user_role   
    
    case user_role
    when 'Blog Owner', 'Admin'
      'You do not Own any blogs.'+link_to('Create New Blog', new_blog_path)
    when 'Blog Contributor'
      'You are not the contributor for any blog. Ask your friend(who owns a blog) to make you a contributor.'
    when 'Blog Subscribe'
      'You have not subscribed to any blog.'+link_to('Subscribe to a Blog', blogs_path)
    end

  end

end
