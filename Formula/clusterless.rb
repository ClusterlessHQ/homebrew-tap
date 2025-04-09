# Generated with JReleaser 1.8.0 at 2025-04-09T00:05:05.235624006Z
class Clusterless < Formula
  desc "Clusterless is a framework for building serverless data oriented applications."
  homepage "https://github.com/ClusterlessHQ"
  url "https://github.com/ClusterlessHQ/clusterless/releases/download/v1.0-wip-100/clusterless-1.0-wip-100.zip"
  version "1.0-wip-100"
  sha256 "1a7524d0321719b73b72b128d7175d2e92b64775353fb4d0870b7b79db2d74f4"
  license "MPL-2.0"

  depends_on "openjdk@17"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/cls" => "cls"
  end

  test do
    output = shell_output("#{bin}/cls --version")
    assert_match "1.0-wip-100", output
  end
end
