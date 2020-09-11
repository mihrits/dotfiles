function initcommands()

@eval ENV["JULIA_EDITOR"] = "nano"

# packages
@eval using OhMyREPL
@eval using Revise

end

atreplinit(initcommands)
