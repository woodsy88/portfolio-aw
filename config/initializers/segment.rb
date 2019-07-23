Analytics = Segment::Analytics.new({
  write_key: 'i4oTbP0cP9Os4kZNhCgoruzxdfb1YmiG',
  on_error: Proc.new { |status, msg| print msg }
})