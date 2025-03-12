# Generated with JReleaser 1.8.0 at 2025-03-12T22:00:14.804704626Z
class Clusterless < Formula
  desc "Clusterless is a framework for building serverless data oriented applications."
  homepage "https://github.com/ClusterlessHQ"
  url "https://github.com/ClusterlessHQ/clusterless/releases/download/v1.0-wip-87/clusterless-1.0-wip-87.zip"
  version "1.0-wip-87"
  sha256 "9e6396110ec3bb3b7d84d2afee5db907fa91196bd62bb6f95c85f627e2812691"
  license "MPL-2.0"

  depends_on "openjdk@17"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/cls" => "cls"
  end

  test do
    output = shell_output("#{bin}/cls --version")
    assert_match "1.0-wip-87", output
  end
end
