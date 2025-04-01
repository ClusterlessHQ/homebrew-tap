# Generated with JReleaser 1.8.0 at 2025-04-01T16:39:46.695951172Z
class Clusterless < Formula
  desc "Clusterless is a framework for building serverless data oriented applications."
  homepage "https://github.com/ClusterlessHQ"
  url "https://github.com/ClusterlessHQ/clusterless/releases/download/v1.0-wip-91/clusterless-1.0-wip-91.zip"
  version "1.0-wip-91"
  sha256 "0eaa1d30fb04d678607373459c8edd48ff4fe9bab9c7aba3feaafea882913eaf"
  license "MPL-2.0"

  depends_on "openjdk@17"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/cls" => "cls"
  end

  test do
    output = shell_output("#{bin}/cls --version")
    assert_match "1.0-wip-91", output
  end
end
