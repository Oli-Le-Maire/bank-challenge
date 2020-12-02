class Date

  attr_reader :frozen_time

  def initialize
    @date = Time.new
  end

  def date_formatter
    @formatted_date = @date.strftime("%d/%m/%Y")
  end

end
