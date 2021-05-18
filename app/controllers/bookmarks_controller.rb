class BookmarksController < ApplicationController
    before_action :set_bookmark, only: %i[ show edit update destroy ]
    # GET /bookmarks or /bookmarks.json
    def index
    @bookmarks = Bookmark.all
    render json: @bookmarks
    end
    # GET /bookmarks/1 or /bookmarks/1.json
    def show
    render json: @bookmarks
    end
    # GET /bookmarks/1/edit
    def edit
    end
    # POST /bookmarks or /bookmarks.json
    def create
    @bookmark = Bookmark.new(bookmark_params)
    if @bookmark.save
    render json: @bookmark , status: :created, location: @bookmark
    end
    end
    private
    def set_bookmark
    @bookmark = Bookmark.find(params[:id])
    end
    # Only allow a list of trusted parameters through.
    def bookmark_params
    params.require(:bookmark).permit(:title, :url)
    end
    end