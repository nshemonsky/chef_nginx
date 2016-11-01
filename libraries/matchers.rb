if defined?(ChefSpec)
# Custom ChefSpec matchers
  def enable_nginx_site(name)
    ChefSpec::Matchers::ResourceMatcher.new(:nginx_site, :enable, name)
  end

  def disable_nginx_site(name)
    ChefSpec::Matchers::ResourceMatcher.new(:nginx_site, :disable, name)
  end
end
