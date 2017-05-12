use Mix.Config

version =
  Path.join(__DIR__, "VERSION")
  |> File.read!
  |> String.strip

pkg = "nerves_system_nanopi_neo"

config :nerves_system_nanopi_neo, :nerves_env,
  type: :system,
  version: version,
  compiler: :nerves_package,
  # artifact_url: ["https://github.com/dhanson358/#{pkg}/releases/download/v#{version}/#{pkg}-#{version}.tar.gz"],
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
      "linux_defconfig",
      "nerves_defconfig",
      "VERSION"
  ]
