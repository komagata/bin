module MyCompressor
  def compress(path)
    system "convert '#{path}' -resize 50% -quality 90 '#{path}'"
  end
end
