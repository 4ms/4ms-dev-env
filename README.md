### 4ms Dev Environment ###

*This project is for old, legacy 4ms projects (circa < 2020). For newer projects, follow the building instructions in those projects' READMEs*

This uses vagrant to provide a consistant development environment for compiling 4ms source code.

The [SWN](https://github.com/4ms/SWN) is cloned as an example project.

To use:

Clone the repo:

```
git clone https://github.com/4ms/4ms-dev-env.git
```

Start the vagrant box:

```
cd 4ms-dev-env
vagrant up
```

Log into the vagrant box:

```
vagrant ssh
cd SWN
```

Build the project

```
make
```

The .elf and .hex files will be in `build/`

To build the bootloader:

```
cd bootloader
make
```

### Synced Folders ###

If you want to use your own OS and tools for debugging or code editing, while still using the virtual environment to compile 
consider a [vagrant synced folder](https://www.vagrantup.com/docs/synced-folders/basic_usage.html)

Uncomment the line containing `config.vm.synced_folder` in Vagrantfile to enable a synced folder. You may need to adjust the path to point to the files on your local machine.

