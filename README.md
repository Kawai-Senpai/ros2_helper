# ROS2 Helper Scripts

          O
         _|_
   ,_.-_' _ '_-._,
    \ (')(.)(') /
 _,  `\_-===-_/`  ,_
>  |----"""""----|  <
`""`--/   _-@-\--`""`
     |===L_I===|
      \       /
      _\__|__/_
 jgs `""""`""""`

A collection of helpful bash scripts for ROS2 and related tools installation and setup. This repository serves as a personal toolkit to streamline common installation processes and make future setups easier.

## Available Scripts

### ROS2 Installation Scripts
- `ro2/install_ros2_gui.sh`: Installs ROS2 Jazzy with desktop (GUI) components
- `ro2/install_ros2_base.sh`: Installs ROS2 Jazzy base version (no GUI components)

### ORB-SLAM3 Installation
- `orbslam3/install_orbslam3_KawaiSenpai.sh`: Installs ORB-SLAM3 with ROS2 integration using Kawai-Senpai's implementation

## Usage

1. Clone this repository:
```bash
git clone git https://github.com/Kawai-Senpai/ros2_helper.git
```

2. Make the scripts executable:
```bash
chmod +x ros2_helper/ro2/*.sh
chmod +x ros2_helper/orbslam3/*.sh
```

3. Run the desired script:
```bash
./ros2_helper/ro2/install_ros2_gui.sh
```

## Notes

- All scripts are designed for Ubuntu systems
- The ROS2 scripts install the Jazzy distribution
- Make sure you have sufficient permissions (sudo) before running the scripts
- The scripts will handle dependency installation automatically

## Contributing

Feel free to add more helper scripts or improve existing ones by submitting pull requests.