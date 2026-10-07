{
  description = "A simple flake that only runs nix expressions.";

  outputs = { self, ... }: {
    default = {
      greet = "Hello, world!";
      msg = "This is another expression.";
      math = "1 + 1 = ${toString (1 + 1)}";
      isTrue = builtins.true;
      list = [ 1 2 3 ];
      map = builtins.map (x: x * 2) [1 2 3];
    };
  };
}
