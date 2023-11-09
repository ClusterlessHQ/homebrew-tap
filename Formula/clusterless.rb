# Generated with JReleaser 1.8.0 at 2023-11-09T00:56:43.010117611Z
class Clusterless < Formula
  desc "Clusterless is a framework for building serverless data oriented applications."
  homepage "https://github.com/ClusterlessHQ"
  url "https://github.com/ClusterlessHQ/clusterless/releases/download/v1.0-wip-72/clusterless-1.0-wip-72.zip"
  version "1.0-wip-72"
  sha256 "f9ba6dacac4ae6f59fa28b33b2d265480048f4b3f9602788cf5733209e2f4f00"
  license "MPL-2.0"

  depends_on "openjdk@17"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/cls" => "cls"
  end

  test do
    output = shell_output("#{bin}/cls --version")
    assert_match "1.0-wip-72", output
  end
end
