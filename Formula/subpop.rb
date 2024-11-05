# Generated with JReleaser 1.15.0 at 2024-11-04T21:33:46.036741-08:00

class Subpop < Formula
  desc "SubPop is a command line utility for finding the differences between one or more tabular datasets."
  homepage "https://github.com/ClusterlessHQ"
  url "https://github.com/ClusterlessHQ/subpop/releases/download/v1.0-wip-dev/subpop-1.0-wip-dev.zip"
  version "1.0-wip-dev"
  sha256 "166e7f2b7884b526ed824e737382ea7a0013c86706f81f1f4787a364e8a20a51"
  license "MPL-2.0"

  depends_on "jdk" => "graalvm-jdk@21"
  depends_on "jdk" => "graalvm-jdk@21"

  def install
    libexec.install Dir["*"]
    (bin/"subpop").write_env_script libexec/"bin/subpop", JAVA_HOME: Formula[""].opt_prefix
  end

  test do
    output = shell_output("#{bin}/subpop --version")
    assert_match "1.0-wip-dev", output
  end
end
