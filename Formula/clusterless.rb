# Generated with JReleaser 1.8.0 at 2025-01-24T17:21:10.01305112Z
class Clusterless < Formula
  desc "Clusterless is a framework for building serverless data oriented applications."
  homepage "https://github.com/ClusterlessHQ"
  url "https://github.com/ClusterlessHQ/clusterless/releases/download/v1.0-wip-83/clusterless-1.0-wip-83.zip"
  version "1.0-wip-83"
  sha256 "a78a0f015d1b621944016381dc6a6228d7abd8748b6791f42e10e67dcace4320"
  license "MPL-2.0"

  depends_on "openjdk@17"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/cls" => "cls"
  end

  test do
    output = shell_output("#{bin}/cls --version")
    assert_match "1.0-wip-83", output
  end
end
