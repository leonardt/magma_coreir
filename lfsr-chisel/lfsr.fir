circuit LFSR : 
  module LFSR : 
    input CLK : Clock
    input reset : UInt<1>
    output io : {flip en : UInt<1>, out : UInt<1>, state : UInt}
    
    CLK is invalid
    reset is invalid
    io is invalid
    reg state : UInt<4>, CLK with : (reset => (reset, UInt<4>("h0f"))) @[cmd35.sc 8:24]
    wire xors : UInt<1>[5] @[cmd35.sc 9:20]
    xors is invalid @[cmd35.sc 9:20]
    xors[0] <= UInt<1>("h00") @[cmd35.sc 11:13]
    xors[1] <= xors[0] @[cmd35.sc 19:25]
    xors[2] <= xors[1] @[cmd35.sc 19:25]
    node _T_18 = bits(state, 2, 2) @[cmd35.sc 16:33]
    node _T_19 = xor(_T_18, xors[2]) @[cmd35.sc 16:37]
    xors[3] <= _T_19 @[cmd35.sc 16:25]
    node _T_20 = bits(state, 3, 3) @[cmd35.sc 16:33]
    node _T_21 = xor(_T_20, xors[3]) @[cmd35.sc 16:37]
    xors[4] <= _T_21 @[cmd35.sc 16:25]
    node _T_22 = bits(state, 0, 0) @[cmd35.sc 23:20]
    io.out <= _T_22 @[cmd35.sc 23:12]
    when io.en : @[cmd35.sc 24:18]
      node _T_23 = shl(state, 1) @[cmd35.sc 25:25]
      node _T_24 = or(_T_23, xors[4]) @[cmd35.sc 25:31]
      state <= _T_24 @[cmd35.sc 25:15]
      skip @[cmd35.sc 24:18]
    io.state <= state @[cmd35.sc 27:14]
    
