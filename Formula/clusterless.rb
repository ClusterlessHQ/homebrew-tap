# Generated with JReleaser 1.8.0 at 2025-12-17T18:17:53.952768217Z
class Clusterless < Formula
  desc "Clusterless is a framework for building serverless data oriented applications."
  homepage "https://github.com/ClusterlessHQ"
  url "https://github.com/ClusterlessHQ/clusterless/releases/download/v1.0-wip-112/clusterless-1.0-wip-112.zip"
  version "1.0-wip-112"
  sha256 "49654b2553c4a8f7f8f5e668c628bdd605e1de7e983a8774ac6a13847fd51a6a"
  license "MPL-2.0"

  depends_on "openjdk@17"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/cls" => "cls"
  end

  test do
    output = shell_output("#{bin}/cls --version")
    assert_match "1.0-wip-112", output
  end
end
