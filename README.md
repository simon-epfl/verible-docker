# Verible Dockerized

## Update your bash profile

.bashrc
```
alias verible-verilog-lint="sudo docker run -ti -v ${PWD}:/work --user root:root androz2091/verible:main verible-verilog-lint"
```

## Usage

As you would use the standard command! 
`verible-verilog-lint --version`
