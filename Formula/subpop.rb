# Generated with JReleaser 1.15.0 at 2024-11-04T21:37:42.273755-08:00

class Subpop < Formula
  desc "SubPop is a command line utility for finding the differences between one or more tabular datasets."
  homepage "https://github.com/ClusterlessHQ"
  url "https://github.com/ClusterlessHQ/subpop/releases/download/v1.0-wip-dev/subpop-1.0-wip-dev.zip"
  version "1.0-wip-dev"
  sha256 "da222430e8e7fb392fc94eba972b3a4e06a097faa76bd2fd9ae7dee2b9a1a087"
  license "MPL-2.0"

  depends_on "graalvm-jdk@21"
  depends_on "graalvm-jdk@21"

  def install
    libexec.install Dir["*"]
    (bin/"subpop").write_env_script libexec/"bin/subpop", JAVA_HOME: Formula[""].opt_prefix
  end

  test do
    output = shell_output("#{bin}/subpop --version")
    assert_match "1.0-wip-dev", output
  end
end
