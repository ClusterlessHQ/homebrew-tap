# Generated with JReleaser 1.15.0 at 2024-11-04T16:30:29.629605119Z

class Subpop < Formula
  desc "SubPop is a command line utility for finding the differences between one or more tabular datasets."
  homepage "https://github.com/ClusterlessHQ"
  url "https://github.com/ClusterlessHQ/subpop/releases/download/v1.0-wip-9/subpop-1.0-wip-9.zip"
  version "1.0-wip-9"
  sha256 "0e39688dd958ff52bb40edd58b66c6264a565bdce039ae1b72a3b22e84fb2dae"
  license "MPL-2.0"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/subpop" => "subpop"
  end

  test do
    output = shell_output("#{bin}/subpop --version")
    assert_match "1.0-wip-9", output
  end
end
