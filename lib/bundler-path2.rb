class BundlerPath2 < Bundler.plugin("1")
  name "Path source as a plugin"


  # Users can now define 
  #> gem "name", :path2 => "/path/to/your/unpacked/gem"
  # The passed value will go to initializer method
  source "path2" do
  	
    require_relative "source"
    Source
  end


end
