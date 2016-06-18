if defined?(ChefSpec)
  def save_modules(resource_name)
    ChefSpec::Matchers::ResourceMatcher.new(:modules, :save, resource_name)
  end

  def load_modules(resource_name)
    ChefSpec::Matchers::ResourceMatcher.new(:modules, :load, resource_name)
  end

  def remove_modules(resource_name)
    ChefSpec::Matchers::ResourceMatcher.new(:modules, :remove, resource_name)
  end

  def save_modules_multi(resource_name)
    ChefSpec::Matchers::ResourceMatcher.new(:modules_multi, :save, resource_name)
  end

  def remove_modules_multi(resource_name)
    ChefSpec::Matchers::ResourceMatcher.new(:modules_multi, :remove, resource_name)
  end
end
