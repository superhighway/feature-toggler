class FeatureToggler
  TOGGLES = {}

  class << self
    ### Setting values
    def set_value(feature, value)
      TOGGLES[feature] = value
    end
    
    def enable(feature)
      TOGGLES[feature] = true
    end
  
    def disable(feature)
      TOGGLES[feature] = false
    end
    
    ### Getting values
    def values
      TOGGLES
    end

    def value_of(feature)
      TOGGLES[feature]
    end

    def enabled?(feature)
      TOGGLES[feature] || false
    end
    
    def disabled?(feature)
      !TOGGLES[feature]
    end
    
    ### DSL
    def configure(&block)
      instance_eval &block
    end
  end  
end
