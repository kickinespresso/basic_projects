= BasicProjects

[![Build Status](https://semaphoreci.com/api/v1/projects/ca231f16-c6a5-48de-8188-1b019bdc3d85/529792/badge.svg)](https://semaphoreci.com/kickinespresso/basic_projects)


This project rocks and uses MIT-LICENSE.


= Scaffold


    rails g scaffold category title:string description:text slug:string:uniq -c=scaffold_controller
    rails g scaffold project title:string lead:string excerpt:text description:text content:text project_link:string image:string slug:string:uniq  category:references position:integer -c=scaffold_controller