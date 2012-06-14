module SalesforceBulk
  class Batch
    
    attr_accessor :created_at
    attr_accessor :id
    attr_accessor :job_id
    attr_accessor :processed_records
    attr_accessor :state
    attr_accessor :updated_at
    
# <id>751D0000000004rIAA</id>
# <jobId>750D0000000002lIAA</jobId>
# <state>InProgress</state>
# <createdDate>2009-04-14T18:15:59.000Z</createdDate>
# <systemModstamp>2009-04-14T18:15:59.000Z</systemModstamp>
# <numberRecordsProcessed>0</numberRecordsProcessed>
    
    def initialize
      
    end
    
    def in_progress?
      state? 'InProgress'
    end
    
    def queued?
      state? 'Queued'
    end
    
    def completed?
      state? 'Completed'
    end
    
    def failed?
      state? 'Failed'
    end
    
    def state?(value)
      self.state.present? && self.state.casecmp(value) == 0
    end
  end
end