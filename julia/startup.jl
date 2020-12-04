# ln -s /home/moorits/dotfiles/julia/startup.jl /home/moorits/.julia/config/startup.jl

function initcommands(repl)

@eval ENV["AOC_SESSION"] = "53616c7465645f5fc6bc0f8e55a320e50ba92f5c182daf6037bafc0b79038e95f663b816ff7135f61e0c0f2c6e5f354c"
@eval ENV["JULIA_EDITOR"] = "nano"

# packages
@eval using OhMyREPL
# @eval using Revise

end

atreplinit(initcommands)
