class Mepo < Formula
  include Language::Python::Virtualenv

  desc "Tool to manage (m)ultiple git r(epo)sitories"
  homepage "https://github.com/GEOS-ESM/mepo"
  url "https://github.com/GEOS-ESM/mepo/archive/refs/tags/v2.1.0.tar.gz"
  sha256 "361bcdcfe05bc5b91df36919a0bc8b9fcacb759165a7a4ddbd3c65eb328c7760"
  license "Apache-2.0"

  depends_on "libyaml"
  depends_on "python@3.12"

  resource "colorama" do
    url "https://files.pythonhosted.org/packages/d8/53/6f443c9a4a8358a93a6792e2acffb9d9d5cb0a5cfd8802644b7b1c9a02e4/colorama-0.4.6.tar.gz"
    sha256 "08695f5cb7ed6e0531a20572697297273c47b8cae5a63ffc6d6ed5c201be6e44"
  end

  resource "pyyaml" do
    url "https://files.pythonhosted.org/packages/54/ed/79a089b6be93607fa5cdaedf301d7dfb23af5f25c398d5ead2525b063e17/pyyaml-6.0.2.tar.gz"
    sha256 "d584d9ec91ad65861cc08d42e834324ef890a082e591037abe114850ff7bbc3e"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"git", "clone", "https://github.com/GMAO-SI-Team/mepo-test.git"
    cd testpath/"mepo-test" do
      system bin/"mepo", "clone"
      system bin/"mepo", "status"
    end
  end
end
