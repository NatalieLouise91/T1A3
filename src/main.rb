require "tty-prompt"

prompt = TTY::Prompt.new
answer = prompt.select("Which treatment would you like?", %w(Facial Massage Haircut))


puts answer