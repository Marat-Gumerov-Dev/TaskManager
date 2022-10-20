class API::TasksController < API::ApplicationController
  def show
  end

  def index
    tasks = Task.all
              .ransack(ransack_params)
              .result
              .page(page)
              .per(per_page)

    respond_with(tasks, each_serializer: TaskSerializer, root: 'items', meta: build_meta(tasks))
  end

  def create
  end

  def update
  end

  def destroy
  end
end