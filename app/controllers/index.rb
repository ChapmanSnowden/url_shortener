get '/' do
  erb :index
end

get '/' do
  # let user create new short URL, display a list of shortened URLs
end

post '/urls' do
  @url= Url.find_or_create(original_url: params[:original_url])

  erb :url
end

# e.g., /q6bda
get '/:shortened_url' do
  @record = Url.find_by_shortened_url(params[:shortened_url])
  @record.increase_page_count
  redirect to @record.original_url
end
