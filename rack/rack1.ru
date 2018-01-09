require 'rack'
#rack_proc=lambda{|env|[200,{'content-type'=>'text/plain'},["\nhello world"]]}
rack_proc=proc{|env|[200,{'content-type'=>'text/plain'},["\nhello world"]]}
#run rack_proc						    
#rack_proc=proc{|env|[200 => 'OK',{'content-type'=>'text/plain'},["\nhello world"]]}
#puts env.inspect
#Rack::Handler::WEBrick.run rack_proc						    
run proc{|env|[200,{'content-type'=>'text/plain'},["\nhello world"]]}


