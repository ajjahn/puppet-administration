class administration ($username   = 'admin',
                      $password   = '',
                      $email      = 'admin@example.com',
                      $groups     = ['wheel'],
                      $public_key = '',
                      $uid        = 2000) {
                        
  include administration::user
  include administration::group
  include administration::file
  include administration::directory
  include administration::key
}