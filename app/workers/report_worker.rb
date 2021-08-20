class ReportWorker
	include Sidekiq::Worker
	sidekiq_options retry: false

def perform(start_date, end_date)
	puts "SIDEKIQ WORKER GENERATING REPORT FROM #{start_date} TO #{end_date}"
end


 

end