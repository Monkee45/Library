require 'CSV'

module Library
  module LoadLibrary

    def read_file(filename)
      CSV.read(filename)
    end

  end
end
