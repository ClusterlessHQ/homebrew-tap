# Generated with JReleaser 1.8.0 at 2023-11-08T05:31:02.179002346Z
class Clusterless < Formula
  desc "Clusterless is a framework for building serverless data oriented applications."
  homepage "https://github.com/ClusterlessHQ"
  url "https://github.com/ClusterlessHQ/clusterless/releases/download/v1.0-wip-71/clusterless-1.0-wip-71.zip"
  version "1.0-wip-71"
  sha256 "5ba27ea5ed58a0113a2a69d1ad7c9c87a19a35144a3e95f5401cc50df628ae83"
  license "MPL-2.0"

  depends_on "openjdk@17"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/cls" => "cls"
  end

  test do
    output = shell_output("#{bin}/cls --version")
    assert_match "1.0-wip-71", output
  end
end
