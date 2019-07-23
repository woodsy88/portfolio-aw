Analytics = Segment::Analytics.new({
  write_key: SEGMENT_WRITE_KEY,
  on_error: Proc.new { |status, msg| print msg }
})