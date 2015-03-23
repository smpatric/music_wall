# Homepage (Root path)
get '/' do 
  erb :index
end

get '/posts' do
  @posts = Post.all
  erb:'posts/index'
end

get '/posts/new' do
  erb:'posts/new'
end

post '/posts' do
  @post = Post.new(
    song_title: params[:song_title],
    author: params[:author],
    link: params[:link]
    )
  if @post.save
    redirect '/posts'
  else
    erb:'posts/new'
  end
end

