class FindPhone
  attr_reader :filepath
  DICIONARIO = {
    'ABC' => '2',
    'DEF' => '3',
    'GHI' => '4',
    'JKL' => '5',
    'MNO' => '6',
    'PQRS' => '7',
    'TUV' => '8',
    'WXYZ' => '9'
  }

  def initialize(filepath)
    @filepath = filepath
  end

  def read_input
    File.open(filepath) do |txt|
      txt.each_line do |line|
        line = line.chomp
        if validate_char?(line)
          puts convert_to_number(line)
        else
          puts "Linha incorreta!"
        end
      end
    end
  end

  def validate_char?(line)
    line.size >= 1 && line.size <= 30
  end

  def convert_to_number(name)
    name.upcase.gsub(*er)
  end

  private
  def er
    h = {}
    DICIONARIO.each do |d, v|
      d.each_char { |c| h[c] = v }
    end

   [/[A-Z]/, h]
  end
end
