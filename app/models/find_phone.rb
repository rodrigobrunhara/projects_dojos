class FindPhone
  def read_input
    File.open("arquivo.txt") do |txt|
      txt.each_line() do |line|
        line = line.chomp
        if validate_char?(line)
          puts convert_to_number(line)
        end
      end
    end
  end

  def validate_char?(line)
    line.size >= 1 && line.size <= 30
  end

  def convert_to_number(name)
    value = name.upcase

    value = value.tr(["A","B","C"].to_s, '2')

    value = value.tr(["D","E","F"].to_s, '3')

    value = value.tr(["G","H","I"].to_s, '4')

    value = value.tr(["J","K","L"].to_s, '5')

    value = value.tr(["M","N","O"].to_s, '6')

    value = value.tr(["P","Q","R","S"].to_s, '7')

    value = value.tr(["T","U","V"].to_s, '8')

    value = value.tr(["W","X","Y","Z"].to_s, '9')

    value
  end
end