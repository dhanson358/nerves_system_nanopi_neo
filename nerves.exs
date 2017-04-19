use Mix.Config

version =
  Path.join(__DIR__, "VERSION")
  |> File.read!
  |> String.strip

config :nerves_system_nanopi_neo, :nerves_env,
  type: :system,
  version: version,
  compiler: :nerves_package,
  artifact_url: ["https://github.com/dhanson358/nerves_system_nanopi_neo/releases/download/v0.0.15/nerves_system_nanopi_neo_015.tar.gz"],
  platform: Nerves.System.BR,
  platform_config: [
   defconfig: "nerves_defconfig",
  ],
  checksum: [
      "busybox_defconfig",
      "rootfs-additions",
      "fwup.conf",
      "post-createfs.sh",
      "uboot",
      "uboot-script.cmd",
      "linux",
      "VERSION"
  ]
