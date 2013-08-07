get '/' do
  erb :index
end

get '/' do
  # let user create new short URL, display a list of shortened URLs
end

post '/urls' do
  #take a URL from the user
  #verify that it's a valid URL
  #shorten it

  # return params[:original_url]
  @url= Url.create(original_url: params[:original_url])

  erb :url
end

# e.g., /q6bda
get '/:shortened_url' do
  @record = Url.find_by_shortened_url(params[:shortened_url])
  @record.increase_page_count
  redirect to @record.original_url
end
