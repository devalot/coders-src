#!/usr/bin/env ruby

################################################################################
class Scanner

  ##############################################################################
  def initialize
    raise("expected a directory name") if ARGV.empty?
  end

  ##############################################################################
  def run
    ARGV.each do |directory|
      raise("#{directory} isn't a directory") unless File.directory?(directory)
      process_directory(directory)
    end
  end

  ##############################################################################
  private

  ##############################################################################
  def process_directory (directory)
    artist = File.basename(directory)
    insert_artist(artist)

    Dir.foreach(directory) do |album|
      next if album.match(/^\./)
      insert_album(artist, album)

      Dir.foreach(File.join(directory, album)) do |song|
        next if song.match(/^\./)
        next unless File.extname(song) == '.mp3'
        insert_song(artist, album, File.join(directory, album, song))
      end
    end
  end

  ##############################################################################
  def insert_artist (artist)
    puts(%Q|INSERT INTO artists (name) VALUES ('#{escape(artist)}');|)
  end

  ##############################################################################
  def insert_album (artist, album)
    sql = <<-EOT
      INSERT INTO albums (artist_id, name)
      SELECT id, '#{escape(album)}'
       FROM artists
      WHERE name = '#{escape(artist)}';
    EOT

    puts(sql)
  end

  ##############################################################################
  def insert_song (artist, album, file)
    info = `id3tool "#{file}" 2>&1`
    return if info.match(/No ID3 Tag/)

    title = info.match(/Song Title:\s+(.+)\n/)[1].strip
    year  = info.match(/Year:\s+(\d+)/)[1].strip
    track = info.match(/Track:\s+(\d+)/)[1].strip

    # clean up stupid titles
    title.sub!(/\s*[\[\(].*$/, '')

    sql = <<-EOT
      INSERT INTO songs (album_id, title, year, track_number)
      SELECT albums.id, '#{escape(title)}', #{escape(year)}, #{escape(track)}
        FROM artists, albums
       WHERE artists.id = albums.artist_id
         AND artists.name = '#{escape(artist)}'
         AND albums.name = '#{escape(album)}';
    EOT

    puts(sql)
  end

  ##############################################################################
  def escape (str)
    str.gsub("'", "''")
  end

  ##############################################################################
  def puts (str)
    $stdout.puts(str.gsub(/\s*\n\s*/, ' ').strip)
  end
end

################################################################################
begin
  Scanner.new.run
rescue RuntimeError => e
  $stderr.puts(File.basename($0) + ": ERROR: #{e}")
  exit(1)
end
