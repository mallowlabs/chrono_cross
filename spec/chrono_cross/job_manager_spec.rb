require 'spec_helper'

class MyJob
  def perform(name)
    puts name
  end
end

describe ChronoCross do
  context 'jobs' do
    it 'can register and unregister' do
      expect(ChronoCross::JobManager.jobs.size).to eq(0)
      ChronoCross::JobManager.register('foo', '* * * * *', MyJob, 'bob')
      expect(ChronoCross::JobManager.jobs.size).to eq(1)
      ChronoCross::JobManager.unregister('foo')
      expect(ChronoCross::JobManager.jobs.size).to eq(0)
    end
  end
end

