# Generated with JReleaser 1.8.0 at 2025-12-22T23:48:21.614805353Z
class Clusterless < Formula
  desc "Clusterless is a framework for building serverless data oriented applications."
  homepage "https://github.com/ClusterlessHQ"
  url "https://github.com/ClusterlessHQ/clusterless/releases/download/v1.0-wip-113/clusterless-1.0-wip-113.zip"
  version "1.0-wip-113"
  sha256 "cac822a5b29763deab014aaff1fa6dd4931b7f82152a047c85fe982bdbfcef3a"
  license "MPL-2.0"

  depends_on "openjdk@17"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/cls" => "cls"
  end

  test do
    output = shell_output("#{bin}/cls --version")
    assert_match "1.0-wip-113", output
  end
end
