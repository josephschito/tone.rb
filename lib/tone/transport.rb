module Tone
  module Transport
    class << self
      def start(time = nil)
        if time
          `Tone.Transport.start(time)`
        else
          `Tone.Transport.start()`
        end
      end

      def stop(time = nil)
        if time
          `Tone.Transport.stop(time)`
        else
          `Tone.Transport.stop()`
        end
      end

      def cancel
        `Tone.Transport.cancel()`
      end

      def schedule_once(time, &block)
        `Tone.Transport.scheduleOnce(#{block.to_n}, time)`
      end
    end
  end
end
