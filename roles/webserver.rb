name 'webserver'
run_list  'recipe[apt]',
          'recipe[nginx]',
          'recipe[webserver-config]'