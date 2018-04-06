
# VIEWS
set :haml, :format => :html5, :attr_wrapper => '"'
set :views, File.dirname(__FILE__) + "/views"

# HELPERS
helpers do
  def img(name)
    "<img src='#{name}' alt='#{name}' width='1024' height='815' />"
  end
end

# ROUTES
get '/' do
  original_image = img "theater.jpg"
  
  # resized_image = ImageProcessing::Vips
  #   .source(File.open("public/theater.jpg"))
  #   .resize_to_limit(512, 512)
  #   .saver(strip: true)
  #   .call(destination: "public/theater2.jpg")

  haml :index, :locals => {original_image: original_image, resized_image: img("theater2.jpg")}
end
