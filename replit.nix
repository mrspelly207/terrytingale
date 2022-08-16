{ pkgs }: {
	deps = [
        pkgs.lua52Packages.luarocks-nix
        pkgs.openssh_with_kerberos
        pkgs.bpytop
        pkgs.xlibs.xcalc
        pkgs.neofetch
        pkgs.lua
        pkgs.sumneko-lua-language-server
	];
}