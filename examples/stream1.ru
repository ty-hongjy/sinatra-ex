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
#    content_type :application/json

    content_type :json
    stream do |out|
      out << "It's gonna be legen -\n".to_json
#      "It's gonna be legen -\n".to_json
      sleep 0.5
      out << " (wait for it) \n".to_json
#       " (wait for it) \n".to_json
      sleep 1
      out << "- dary!\n".to_json
#      "- dary!\n".to_json
      out<< env.to_json
     
    end
  end
end

run Stream
