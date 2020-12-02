class Date

  attr_reader :date_formatter

  def initialize
    @date = Time.new
  end

  def date_formatter
    @formatted_date = @date.strftime("%d/%m/%Y")
  end

end
