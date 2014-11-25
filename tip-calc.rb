class Tab
  attr_reader :amount
  def initialize amount
    @amount = amount
  end
end

class TipCalculator
  TIP_PERCENTS = [0.10, 0.15, 0.18, 0.20, 0.22, 0.25]

  def self.generate_tip tab, tip_display
    tip_display.column_headers
    TIP_PERCENTS.each do |percentage|
      amount = (tab.amount * (percentage)).round(2)
      percent = (percentage*100).to_i

      tip_display.print_tip amount, percent
    end
  end
end

class TipDisplay
  def column_headers
    puts "Percent ".ljust(12) + "Tip Amount".ljust(12)
  end

  def print_tip tip_amount, percentage
    puts "#{percentage}".ljust(12) + "$#{tip_amount}".ljust(12)
  end
end

TipCalculator.generate_tip Tab.new(ARGV.first.to_i), TipDisplay.new