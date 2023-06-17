import Nat "mo:base/Nat";
import Array "mo:base/Array";

actor {
  let size : Nat = 8;
  var decimal : Nat = 0;

  func generateBinary(i : Nat) : Nat {
    let bin : Nat = Nat.rem(decimal, 2);
    decimal := Nat.div(decimal, 2);

    return bin;
  };

  public query func getDecimal() : async Nat {
    return decimal;
  };

  public func setDecimal(decimalNum : Nat) {
    decimal := decimalNum;
  };

  func decimalToBinary() : async [Nat] {
    let binary : [Nat] = Array.tabulate(size, generateBinary);
    return Array.reverse(binary);
  };

  public func getBinary() : async [Nat] {
    let decimal : Nat = 10;
    return await decimalToBinary();
  };
};
