class MP3Importer
    attr_accessor :path 

    def initialize(path)
        @path = path 
    end 

    def files 
        @files = []
        Dir.foreach(@path){|file| @files << file if file.include?(".mp3")}
        @files
    end 

    def import
        self.files.each{ |filename| Song.new_by_filename(filename) }
      end
end 