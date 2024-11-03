# Generated with JReleaser 1.14.0 at 2024-11-03T19:21:45.753413013Z

class Subpop < Formula
  desc "SubPop is a command line utility for finding the differences between one or more tabular datasets."
  homepage "https://github.com/ClusterlessHQ"
  url "https://github.com/ClusterlessHQ/subpop/releases/download/v1.0-wip-4/subpop-1.0-wip-4.zip"
  version "1.0-wip-4"
  sha256 "e97c114a471983dba41a533946c3a0a9ec184f0d45b15ad11dcbebaad022ec0c"
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
