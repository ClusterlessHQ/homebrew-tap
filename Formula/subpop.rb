# Generated with JReleaser 1.14.0 at 2024-11-03T18:29:45.552962476Z

class Subpop < Formula
  desc "SubPop is a command line utility for finding the differences between one or more tabular datasets."
  homepage "https://github.com/ClusterlessHQ"
  url "https://github.com/ClusterlessHQ/subpop/releases/download/v1.0-wip-4/subpop-1.0-wip-4.zip"
  version "1.0-wip-4"
  sha256 "3ff8a6cdc93e91f2b650c5e6d55f0e841154a3c2391a2cd209f3e3922326f3c1"
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
