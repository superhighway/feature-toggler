# Feature Toggler

Example Usage:

```ruby
require './feature_toggler'

environment = "production"

FeatureToggler.configure do
  enable :cool_feature
  disable :buggy_feature
  set_value :feature_mode, environment
end

puts FeatureToggler.enabled?(:cool_feature) #=> true
puts FeatureToggler.disabled?(:cool_feature) #=> false
puts FeatureToggler.value_of(:cool_feature) #=> true

puts FeatureToggler.enabled?(:buggy_feature) #=> false
puts FeatureToggler.disabled?(:buggy_feature) #=> true
puts FeatureToggler.value_of(:buggy_feature) #=> false

puts FeatureToggler.enabled?(:feature_mode) #=> true
puts FeatureToggler.disabled?(:feature_mode) #=> false
puts FeatureToggler.value_of(:feature_mode) #=> "production"
```
