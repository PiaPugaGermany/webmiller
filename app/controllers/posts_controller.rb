class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  # load_and_authorize_resource


  # levanta una excepcion si el usuario no tiene permiso. En el application controller, se maneja la excepcion para poder redirigir al usuario a un pagina especifica, mandando algun mensaje en caso que el usuario no tenga el acceso específico

  # GET /posts
  # GET /posts.json
  def index
    @posts = Post.order("created_at DESC")
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
    @comments = @post.comments.order("created_at DESC")
    @posts = Post.order("created_at DESC")
  end

  # GET /posts/new
  def new
    @post = Post.new
  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts
  # POST /posts.json
  def create
    @post = Post.new(post_params)
# agregar current_user al metodo de instancia de post.user
    @post.user = current_user

    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: 'Post was successfully created.' }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to @post, notice: 'Post was successfully updated.' }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_url, notice: 'Post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:title, :description, :photo)
    end


end
