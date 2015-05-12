module ImageShack
  def image_shack_images
    result = image_shack_api_call("#{ENV['image_shack_url']}/images")
    result['images'] unless result.nil?
  end

  def image_shack_albums
    result = image_shack_api_call("#{ENV['image_shack_url']}/albums")
    result['albums'] unless result.nil?
  end

  def thumbnail(direct_link)
    parts = direct_link.split(".")
    length = parts.length
    parts.insert(length - 1, 'th').join('.')
  end

  #def image_shack_upload(binary, album)
  #  image_shack_auth
  #  params = {}
  #  params['file'] = binary
  #  params['album'] = album
  #  params['key'] = ENV['image_shack_api']
  #  binding.pry
  #  c = Curl::Easy.http_post("https://api.imageshack.com/v2/images", params)
  #end

  def image_shack_api_call(url, type = :get, params = {}, multipart = false)
    c = Curl::Easy.new
    c.url = "#{url}?#{Curl::postalize(params)}"
    c.method type
    c.ssl_verify_peer = false
    c.perform
    c.response_code == 200 ? JSON.parse(c.body)['result'] : nil
  end

  def image_shack_auth
    params = {}
    params['user'] = ENV['image_shack_user']
    params['password'] = ENV['image_shack_pw']
    image_shack_api_call("#{ENV['image_shack_url']}/user/login", :get, params)
  end
end
