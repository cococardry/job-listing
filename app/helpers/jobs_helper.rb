module JobsHelper
  def render_job_status(job)
    if  job.is_hidden
      "(hidden)"
    else
      "(Public)"
    end
  end
end
