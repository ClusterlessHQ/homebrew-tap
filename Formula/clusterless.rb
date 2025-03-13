# Generated with JReleaser 1.8.0 at 2025-03-13T23:25:19.789991972Z
class Clusterless < Formula
  desc "Clusterless is a framework for building serverless data oriented applications."
  homepage "https://github.com/ClusterlessHQ"
  url "https://github.com/ClusterlessHQ/clusterless/releases/download/v1.0-wip-89/clusterless-1.0-wip-89.zip"
  version "1.0-wip-89"
  sha256 "9fe7e7cbab88acbf8e97fcb1f25bce998b8f9f56543ead195600969ebcfbcff6"
  license "MPL-2.0"

  depends_on "openjdk@17"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/cls" => "cls"
  end

  test do
    output = shell_output("#{bin}/cls --version")
    assert_match "1.0-wip-89", output
  end
end
