json.jobs do
  json.array!(@jobs) do |job|
    json.title job.job_title
    json.url job_path(job)
  end
end

json.portfolios do
  json.array!(@portfolios) do |portfolio|
    json.title portfolio.title
    json.url portfolio_path(portfolio)
  end
end

json.skills do
  json.array!(@skills) do |skill|
    json.title skill.title
    json.url skill_path(skill)
  end
end