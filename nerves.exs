use Mix.Config

version =
  Path.join(__DIR__, "VERSION")
  |> File.read!
  |> String.strip

config :nerves_system_nanopi_neo, :nerves_env,
  type: :system,
  version: version,
  mirrors: ["http://www.nine70labs.com/nerves/nerves_system_nanopi_neo_0_0_11.tar.gz"],
  build_platform: Nerves.System.Platforms.BR,
  build_config: [
    defconfig: "nerves_defconfig",
    package_files: [
      "busybox_defconfig",
      "rootfs-additions",
      "fwup.conf",
      "post-createfs.sh",
      "uboot",
      "uboot-script.cmd",
      "linux"
    ]
  ]
