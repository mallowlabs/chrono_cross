# coding: utf-8
require 'chrono'
require 'active_support/inflector'

module ChronoCross
  class JobManager
    class << self
      def register(key, schedule, clazz, *args)
        clazz = clazz.classify.constantize if clazz.is_a? String

        unregister(key)

        jobs[key] = Thread.new do
          Chrono::Trigger.new(schedule) do
            clazz.new.send(:perform, args)
          end.run
        end
      end

      def unregister(key)
        thread = jobs.delete(key)
        thread.exit if thread
      end

      def jobs
        @@jobs ||= {}
      end
    end
  end
end
