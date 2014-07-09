class SyntaxHighlighter

  def self.highlight(code)
    command = "pygmentize -f html -O nowrap=false -l ruby"
    IO.popen(command, mode = 'r+') do |pygments|
      pygments << code
      pygments.close_write
      pygments.read.chomp
    end
  end

end