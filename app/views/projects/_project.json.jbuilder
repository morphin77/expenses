json.extract! project, :id, :title, :description, :is_finished, :created_at, :updated_at
json.url project_url(project, format: :json)
