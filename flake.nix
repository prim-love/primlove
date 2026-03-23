{
  inputs = {
    flake-utils.url = "github:numtide/flake-utils";
    ox-blog.url     = "github:prim-love/ox-blog";
  };

  outputs = { self, flake-utils, ox-blog, ... }:
    flake-utils.lib.eachDefaultSystem (system: {
      packages.default = ox-blog.export.${system} {
        name = "primlove";
        src  = self;
      };
    });
}
