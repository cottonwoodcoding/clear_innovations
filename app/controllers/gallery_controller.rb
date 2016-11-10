require "#{Rails.root}/lib/services/image_shack.rb"

class GalleryController < ApplicationController
  include ImageShack

  def index
    @entries = []
    #feed = Feedjira::Feed.fetch_and_parse('http://davematthews.tumblr.com/rss')
    #feed.entries[0..10].each do |e|
    #  @entries << {title: e.title, content: e.summary.html_safe}
    #end

    @album_hash = {}
    #image_shack_images.each do |image|
    #  image_hash = {}
    #  direct_link = image['direct_link']
    #  image_hash[:src] = direct_link
    #  image_hash[:description] = image['description']
    #  image_hash[:thumb] = thumbnail(direct_link)
    #  album = image['album']
    #  if @album_hash.has_key?(album['id'])
    #    @album_hash[album['id']][:images] << image_hash
    #  else
    #    @album_hash[album['id']] = { name: album['title'], images: [] }
    #    @album_hash[album['id']][:images] << image_hash
    #  end
    #end
  end

  #def upload
  #  redirect_to gallery_path unless params[:upload]
  #  upload_to_tumblr(params[:upload]) if params[:tumblr]
  #  result = upload_to_imageshack(params[:upload], params[:album]) if params[:imageShack]
  #  redirect_to gallery_path
  #end

  #  private
  #    def upload_to_imageshack(file, album)
  #      image_shack_upload(file['datafile'].tempfile, album)
  #    end
end
