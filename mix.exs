defmodule NervesSystemNanopiNeo.Mixfile do
  use Mix.Project

  @version Path.join(__DIR__, "VERSION")
    |> File.read!
    |> String.strip

  def project do
    [app: :nerves_system_nanopi_neo,
     version: @version,
     elixir: "~> 1.2",
     compilers: Mix.compilers ++ [:nerves_system],
     description: description,
     package: package,
     deps: deps]
  end

  def application do
    []
  end

  defp deps do
    [{:nerves, "~> 0.4.0"},
     {:nerves_system_br, "~> 0.9.2"},
     {:nerves_toolchain_arm_unknown_linux_gnueabihf, "~> 0.9.0"}]
  end

  defp description do
    """
    Nerves System - NanoPi NEO
    """
  end

  defp package do
    [maintainers: ["David Hanson"],
     files: ["rootfs-additions", "busybox_defconfig", "LICENSE",
             "mix.exs", "nerves_defconfig", "nerves.exs", "README.md",
             "VERSION", "fwup.conf", "post-createfs.sh", "uboot",
             "uboot-script.cmd", "linux"],
     licenses: ["Apache 2.0"],
     links: %{"Github" => "https://github.com/dhanson358/nerves_system_nanopi_neo"}]
  end
end
