# Generated with JReleaser 1.15.0 at 2024-11-05T04:50:31.554830787Z

class Subpop < Formula
  desc "SubPop is a command line utility for finding the differences between one or more tabular datasets."
  homepage "https://github.com/ClusterlessHQ"
  url "https://github.com/ClusterlessHQ/subpop/releases/download/v1.0-wip-11/subpop-1.0-wip-11.zip"
  version "1.0-wip-11"
  sha256 "b584d71e7165ac5c86b34f7e08c67920a19352162532e6ba6c3959bbf31c5ae4"
  license "MPL-2.0"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    (bin/"subpop").write_env_script libexec/"bin/subpop", JAVA_HOME: Formula["openjdk@21"].opt_prefix
  end

  test do
    output = shell_output("#{bin}/subpop --version")
    assert_match "1.0-wip-11", output
  end
end
