module MakeFlaggable
  class Flagging < ActiveRecord::Base
    belongs_to :flaggable, :polymorphic => true, counter_cache: true
    belongs_to :flagger, :polymorphic => true, counter_cache: true

    attr_accessible :flaggable, :flagger, :reason
  end
end
