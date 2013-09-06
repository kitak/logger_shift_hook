class Logger
  class LogDevice
    attr_reader :shift_hooks

    def shift_hook(&blk)
      @shift_hooks ||= []
      @shift_hooks << blk if blk
    end

    private
    def shift_log_age_with_hook
      shift_log_age_without_hook
      @shift_hooks.each do |hook|
        hook.call
      end
    end
    alias_method :shift_log_age_without_hook, :shift_log_age
    alias_method :shift_log_age, :shift_log_age_with_hook

    def shift_log_period_with_hook(period_end)
      shift_log_period_without_hook(period_end)
      @shift_hooks.each do |hook|
        hook.call
      end
    end
    alias_method :shift_log_period_without_hook, :shift_log_period
    alias_method :shift_log_period, :shift_log_period_with_hook
  end
end
