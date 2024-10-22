# Verible Dockerized

.bashrc
```
alias verible-verilog-lint="sudo docker run -ti -v ${PWD}:/work --user root:root androz2091/verible:main verible-verilog-lint"
```
