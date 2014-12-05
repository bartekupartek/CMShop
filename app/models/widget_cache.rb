require 'net/http'
require 'digest/md5'

class WidgetCache

  def initialize(cache_dir='/tmp/widgets_cache')
    @cache_dir = cache_dir
  end

  def fetch(url, max_age=2.minutes) #0
    file = MD5.hexdigest(url)
    file_path = File.join("", @cache_dir, file)

    if File.exists? file_path
      return File.new(file_path).read if Time.now-File.mtime(file_path)<max_age
    end

    File.open(file_path, "w") do |data|
      data << Net::HTTP.get_response(URI.parse(url)).body
    end
  end

end
