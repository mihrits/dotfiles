function initcommands(repl)

@eval ENV["JULIA_EDITOR"] = "micro"

# packages
@eval using OhMyREPL
@eval using Revise

end

atreplinit(initcommands)
