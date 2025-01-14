# Generated with JReleaser 1.8.0 at 2025-01-14T17:45:27.322416744Z
class Clusterless < Formula
  desc "Clusterless is a framework for building serverless data oriented applications."
  homepage "https://github.com/ClusterlessHQ"
  url "https://github.com/ClusterlessHQ/clusterless/releases/download/v1.0-wip-79/clusterless-1.0-wip-79.zip"
  version "1.0-wip-79"
  sha256 "fe38b9409efa2d1427dd653bafc01482be9a838771d6fc8f75ba578243890488"
  license "MPL-2.0"

  depends_on "openjdk@17"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/cls" => "cls"
  end

  test do
    output = shell_output("#{bin}/cls --version")
    assert_match "1.0-wip-79", output
  end
end
