# Generated with JReleaser 1.8.0 at 2025-04-02T18:45:26.37801227Z
class Clusterless < Formula
  desc "Clusterless is a framework for building serverless data oriented applications."
  homepage "https://github.com/ClusterlessHQ"
  url "https://github.com/ClusterlessHQ/clusterless/releases/download/v1.0-wip-92/clusterless-1.0-wip-92.zip"
  version "1.0-wip-92"
  sha256 "5bebf6f7a091d6cfdc7109b50ee1d192ac3d06cf49377cb2744063b9467a2dca"
  license "MPL-2.0"

  depends_on "openjdk@17"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/cls" => "cls"
  end

  test do
    output = shell_output("#{bin}/cls --version")
    assert_match "1.0-wip-92", output
  end
end
