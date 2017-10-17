circuit WrappingCounter : 
  module WrappingCounter : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip enabled : UInt<1>, count : UInt<32>, wrapped : UInt<1>}
    
    clock is invalid
    reset is invalid
    io is invalid
    reg counter : UInt<32>, clock with : (reset => (reset, UInt<32>("h00"))) @[cmd26.sc 8:26]
    reg wrapped : UInt<1>, clock with : (reset => (reset, UInt<1>("h00"))) @[cmd26.sc 9:26]
    when io.enabled : @[cmd26.sc 11:21]
      node _T_11 = tail(add(counter, UInt<1>("h01")), 1) @[cmd26.sc 12:28]
      counter <= _T_11 @[cmd26.sc 12:17]
      node _T_13 = geq(counter, UInt<3>("h06")) @[cmd26.sc 13:22]
      when _T_13 : @[cmd26.sc 13:32]
        counter <= UInt<1>("h00") @[cmd26.sc 14:21]
        wrapped <= UInt<1>("h01") @[cmd26.sc 15:21]
        skip @[cmd26.sc 13:32]
      skip @[cmd26.sc 11:21]
    io.count <= counter @[cmd26.sc 19:14]
    io.wrapped <= wrapped @[cmd26.sc 20:16]
    
