node /appserver.*/ {
  include apt_get_update
  include nodejs
}

node /dbserver.*/ {
  include apt_get_update
  include mysql
}

node default {
  include apt_get_update
}
