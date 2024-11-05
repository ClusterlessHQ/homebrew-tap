# Generated with JReleaser 1.15.0 at 2024-11-05T07:30:00.453549-08:00

class Subpop < Formula
  desc "SubPop is a command line utility for finding the differences between one or more tabular datasets."
  homepage "https://github.com/ClusterlessHQ"
  url "https://github.com/ClusterlessHQ/subpop/releases/download/v1.0-wip-dev/subpop-1.0-wip-dev.zip"
  version "1.0-wip-dev"
  sha256 "79432dd85260549dd711c1da7084c606f91c2a410da6edf1839ea77e2863eabe"
  license "MPL-2.0"

  depends_on "java" => "graalvm-jdk@21"
  depends_on "java" => "graalvm-jdk@21"

  def install
    libexec.install Dir["*"]
    (bin/"subpop").write_env_script libexec/"bin/subpop", JAVA_HOME: Formula[self.class.depends_on["java"]].opt_prefix
  end

  test do
    output = shell_output("#{bin}/subpop --version")
    assert_match "1.0-wip-dev", output
  end
end
