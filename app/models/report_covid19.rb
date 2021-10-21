class ReportCovid19
  include Mongoid::Document
  field :collection_date, type: Date
  field :received_date, type: Date
  field :reported_date, type: Date
  field :patient_name, type: String
  field :patient_hn, type: String
  field :patient_an, type: String
  field :hospital_name, type: String
  field :physician_name, type: String
  field :accepted_sample, type: Mongoid::Boolean
  field :sample_type, type: String
  field :result, type: String
  field :target_n1, type: String
  field :target_n2, type: String
  field :target_rp, type: String
  field :reported_by, type: String
  field :confirmed_by, type: String
  field :approved_by, type: String
  field :report_id, type: String
  field :token, type: String
  field :checksum, type: String
end
