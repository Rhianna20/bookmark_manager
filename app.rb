require 'sinatra/base'
require './lib/bookmark'
 
class BookmarkManager < Sinatra::Base
  get '/' do
    "Hello World"
  end
 

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    # p ENV
    erb :'bookmarks/index'
end



run if app_file == $0

end