require "csv"
CSV.parse("data.csv"){|row|
  p row.to_a
}
