# Generated with JReleaser 1.8.0 at 2025-05-03T15:36:06.098176739Z
class Clusterless < Formula
  desc "Clusterless is a framework for building serverless data oriented applications."
  homepage "https://github.com/ClusterlessHQ"
  url "https://github.com/ClusterlessHQ/clusterless/releases/download/v1.0-wip-105/clusterless-1.0-wip-105.zip"
  version "1.0-wip-105"
  sha256 "53fc773e8382dad01fa6ac15a0b3eff9d048c4ed2e7e7d744c15de17dbd30cf3"
  license "MPL-2.0"

  depends_on "openjdk@17"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/cls" => "cls"
  end

  test do
    output = shell_output("#{bin}/cls --version")
    assert_match "1.0-wip-105", output
  end
end
