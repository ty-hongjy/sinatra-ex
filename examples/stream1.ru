# this example does *not* work properly with WEBrick
#
# run *one* of these:
#
#   rackup -s mongrel stream.ru   # gem install mongrel
#   thin -R stream.ru start       # gem install thin
#   unicorn stream.ru             # gem install unicorn
#   puma stream.ru                # gem install puma

require 'sinatra/base'
require 'json'

class Stream < Sinatra::Base
  get '/' do

    content_type :json
    stream do |out|
      out << "It's gonna be legen -".to_json
      p "It's gonna be legen -".to_json
      sleep 0.5
      out << " (wait for it) ".to_json
      sleep 1
      out << "- dary!".to_json
     
    end
  end
end

run Stream
