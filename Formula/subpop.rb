# Generated with JReleaser 1.14.0 at 2024-11-03T19:14:24.188666565Z

class Subpop < Formula
  desc "SubPop is a command line utility for finding the differences between one or more tabular datasets."
  homepage "https://github.com/ClusterlessHQ"
  url "https://github.com/ClusterlessHQ/subpop/releases/download/v1.0-wip-4/subpop-1.0-wip-4.zip"
  version "1.0-wip-4"
  sha256 "be12aac53b322773531107ccec7ba9064fb290fcff2c59a4d392c3a04ff7473f"
  license "MPL-2.0"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/subpop" => "subpop"
  end

  test do
    output = shell_output("#{bin}/subpop --version")
    assert_match "1.0-wip-4", output
  end
end
