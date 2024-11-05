# Generated with JReleaser 1.15.0 at 2024-11-05T04:42:15.841310259Z

class Subpop < Formula
  desc "SubPop is a command line utility for finding the differences between one or more tabular datasets."
  homepage "https://github.com/ClusterlessHQ"
  url "https://github.com/ClusterlessHQ/subpop/releases/download/v1.0-wip-10/subpop-1.0-wip-10.zip"
  version "1.0-wip-10"
  sha256 "a6d94c52c16e7ea87fc5f7e52b2213de271b454b9f9b3614204fb874d6517bdb"
  license "MPL-2.0"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    (bin/"subpop").write_env_script libexec/"bin/subpop", JAVA_HOME: Formula["openjdk@21"].opt_prefix
  end

  test do
    output = shell_output("#{bin}/subpop --version")
    assert_match "1.0-wip-10", output
  end
end
