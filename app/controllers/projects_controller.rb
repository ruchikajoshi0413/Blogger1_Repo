class ProjectsController < ApplicationController
    params.require(:project).permit(:image, :title, :description, {avatars: []})
end
