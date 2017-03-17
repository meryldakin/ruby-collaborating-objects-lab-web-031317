require 'pry'
class MP3Importer
  attr_accessor :path


  def initialize(file_path)
    @path = Dir[file_path].join
  end

  def files
    Dir.entries(@path).select do |file|
      file.split(".").last == "mp3"
    end
  end

  def import
    files.each do |mp3|
      Song.new_by_filename(mp3)
    end
  end

end
