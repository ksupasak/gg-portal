json.extract! report_covid19, :id, :collection_date, :received_date, :reported_date, :hospital_name, :physician_name, :accepted_sample, :sample_type, :result, :target_orf1ab, :target_n, :target_b2m, :reported_by, :confirmed_by, :approved_by, :report_id, :token, :checksum, :created_at, :updated_at
json.url report_covid19_url(report_covid19, format: :json)
