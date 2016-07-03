pkg-deps:
  pkg.installed:
    - pkgs:
      - git
      - redis-server
      - npm
      - nodejs-legacy

npm install:
  cmd.run: 
    - cwd: {{ salt['pillar.get']('www_dir') }}
    - runas: {{ salt['pillar.get']('user') }}
