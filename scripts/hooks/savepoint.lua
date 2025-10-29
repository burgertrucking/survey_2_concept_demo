local Savepoint, super = HookSystem.hookScript(Savepoint)

-- Savepoints no longer heal by default
function Savepoint:init(x, y, properties)
    super.init(self, x, y, properties)
    self.heals = properties["heals"] == true
end

return Savepoint
