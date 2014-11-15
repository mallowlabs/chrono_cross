# ChronoCross

Cron like task scheduler.

## Requirements

* Ruby 1.9+

## Usage

Using ChronoCross is quite simple:

```ruby
require 'chrono_cross'

class MyJob
  def perform(name)
    puts "Hello #{name}"
  end
end

key = 'unique_key'
schedule = '30 * * * *'
# MyJob#perform will be fired every 30 mins
ChronoCross::JobManager.register(key, schedule, MyJob, 'foo')

# unregister job
ChronoCross::JobManager.unregister(key)
```

## Persistency
ChronoCross has no persistency.
You need to re-register jobs in initializer.

## Authors

* [@mallowlabs](https://github.com/mallowlabs/)

## License

The MIT License (MIT) Copyright (c) 2014 mallowlabs

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
