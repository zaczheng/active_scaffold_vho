ActiveScaffold::Bridges.bridge "TinyMCE" do
  install do
    require File.join(File.dirname(__FILE__), "lib/tiny_mce_bridge.rb")
    directory = File.dirname(__FILE__)
    destination = File.join(Rails.root, "public/javascripts/active_scaffold/default/")

    if ActiveScaffold.js_framework == :jquery
      source = File.join(directory, "public/javascripts/jquery/tiny_mce_bridge.js")
      FileUtils.rm(File.join(destination, 'tiny_mce_bridge.js')) if File.exist?(File.join(destination, 'tiny_mce_bridge.js'))
      FileUtils.cp(source, destination)
    else
      source = File.join(directory, "public/javascripts/prototype/tiny_mce_bridge.js")
      FileUtils.rm(File.join(destination, 'tiny_mce_bridge.js')) if File.exist?(File.join(destination, 'tiny_mce_bridge.js'))
      FileUtils.cp(source, destination)
    end unless defined?(ACTIVE_SCAFFOLD_INSTALL_ASSETS) && ACTIVE_SCAFFOLD_INSTALL_ASSETS == false
  end

  install? do
    true
  end
end
