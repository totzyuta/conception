class Conception
  class << self
    def run
      concept = self.create
      self.log(concept)
    end

    # Create a pure "meaningless" word
    def create
      concept = (0..3).map { ('A'..'Z').to_a[rand(26)] }.join
      puts concept
      return concept
    end

    # Log the word into a text file
    def log(output)
      file = File.open("./output/#{Date.today.to_s}.txt", "a")
      file.puts("#{output}\n")
    end
  end
end
