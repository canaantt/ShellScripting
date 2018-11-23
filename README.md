# ShellScripting

## Learning Resource:
- [ ] [BOOK] Learning Linux Shell Scripting 
- [ ] [BOOK] MASTERING_LINUX_SHELL_SCRIPTING_SECOND_EDITION
- [ ] [VIDEO] Linux Shell Scripting: A Project-Based Approach to Learning
- [ ] [VIDEO] Bash Scripting Solutions


## Vagrant
```shell
$mkdir <project_name>
$cd <project_name>
$vagrant init jasonc/centos7 // Initialize the Vagrant project
$vagrant up // Vagrant will import the box into VirtualBox and start it in headless[No UI] mode.
   - $vagrant up / multi-Machine: vagrant up [VM_NAME]
		- $vagrant up master
		- $vagrant up server1
$vagrant halt // Stop the VM
$vagrant up // Start the VM
$vagrant suspend // Suspend the VM
$vagrant resume // Resume the VM
$vagrant destroy // Remove the VM
$vagrant // List options
    - To change the host name 
        - $vagrant halt
        - update vagrant file by adding `config.vm.hostname = “textbox01”`
        - $vagrant up 
        - $vagrant reload // a shortcut to call halt + up all together 
```

