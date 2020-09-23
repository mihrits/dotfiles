function initcommands(repl)

@eval ENV["JULIA_EDITOR"] = "nano"

# packages
@eval using OhMyREPL
@eval using Revise

end

atreplinit(initcommands)
