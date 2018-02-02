it "create a new bookmark" do 
	get "/bookmarks"
	bookmarks = JSON.parse(last_response.body)
	last_size =bookmarks.last_size

	post "/bookmarks"
	{:url =>"http://www.test.com",:title=>"Test"}
	last_response.status,should==201
	last_response.body.should match(/|?bookmark|/|d+)

	get "/bookmarks"
	bookmarks=JSON.parse(last_response.body)
	except(bookmarks.size).to eq(last_size+1)

end

it "u"