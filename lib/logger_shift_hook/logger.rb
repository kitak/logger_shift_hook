
class Logger
  def initialize_with_hook(log_dev, shift_age, shift_size, &blk)
    @shift_hooks = @shift_hooks || []
    @shift_hooks << blk if blk
    initialize_without_hook(logdev, shift_age, shift_size)
  end
  alias_method :initialize_without_hook, :initialize
  alias_method :initialize, :initialize_with_hook

  def shift_hook(&blk)
    @shift_hooks << blk if blk
  end
end
