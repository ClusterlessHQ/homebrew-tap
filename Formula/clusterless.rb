# Generated with JReleaser 1.8.0 at 2023-12-20T00:16:35.381840691Z
class Clusterless < Formula
  desc "Clusterless is a framework for building serverless data oriented applications."
  homepage "https://github.com/ClusterlessHQ"
  url "https://github.com/ClusterlessHQ/clusterless/releases/download/v1.0-wip-77/clusterless-1.0-wip-77.zip"
  version "1.0-wip-77"
  sha256 "52d841d885d910ba53414516432786c435549c10bf667e952f633b0ba0d26698"
  license "MPL-2.0"

  depends_on "openjdk@17"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/cls" => "cls"
  end

  test do
    output = shell_output("#{bin}/cls --version")
    assert_match "1.0-wip-77", output
  end
end
