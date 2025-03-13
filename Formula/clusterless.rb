# Generated with JReleaser 1.8.0 at 2025-03-13T00:00:44.883578278Z
class Clusterless < Formula
  desc "Clusterless is a framework for building serverless data oriented applications."
  homepage "https://github.com/ClusterlessHQ"
  url "https://github.com/ClusterlessHQ/clusterless/releases/download/v1.0-wip-88/clusterless-1.0-wip-88.zip"
  version "1.0-wip-88"
  sha256 "492e3d656f1c719438dcc13e7aef4807015fb76ac762230589fe6b8f4f27ab52"
  license "MPL-2.0"

  depends_on "openjdk@17"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/cls" => "cls"
  end

  test do
    output = shell_output("#{bin}/cls --version")
    assert_match "1.0-wip-88", output
  end
end
