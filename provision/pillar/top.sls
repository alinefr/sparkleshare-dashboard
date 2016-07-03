base:
  'vagrant*':
    - vagrant.variables

  '* and not vagrant*':
    - match: compound
    - default.variables
