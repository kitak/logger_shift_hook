
class Logger
  def initialize_with_hook(logdev, shift_age, shift_size, &blk)
    initialize_without_hook(logdev, shift_age, shift_size)
    shift_hook &blk if blk
  end
  alias_method :initialize_without_hook, :initialize
  alias_method :initialize, :initialize_with_hook

  def shift_hook(&blk)
    @logdev.shift_hook &blk
  end

  def shift_hooks
    @logdev.shift_hooks
  end
end
