# frozen_string_literal: true

module MyDebugger
  def debug(value)
    puts '*' * 20
    pp value
    puts '*' * 20
  end
end
