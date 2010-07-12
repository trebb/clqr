%&latex
prologues := 3;
input boxes
verbatimtex
\documentclass[8pt,pagesize,twoside,footexclude,headexclude]{scrartcl}
\input{clqr.packages}
\input{clqr.macros}
\begin{document}
etex

beginfig(49);
%  boxit.k(btex \FU{blah} etex);
%  boxit.i(btex \MC{ABRACADABRA} etex);
%  k.nw = i.se + (30, -10);
%  drawboxed(k,i);
%  drawarrow k.w{left} .. i.s{up};
%  drawarrow k.n{up} .. i.s{left};
  
  boxit.t(btex \T etex);
  drawboxed(t);

  boxjoin(a.sw + (0, -2) = b.nw);
  boxit.atom(btex \kwd*{ATOM} etex);
  boxit.hash_table(btex \kwd*{HASH-TABLE} etex);
  boxit.structure_object(btex \kwd*{STRUCTURE-OBJECT} etex);
  boxit.package(btex \kwd*{PACKAGE} etex);
  boxit.readtable(btex \kwd*{READTABLE} etex);
  boxit.random_state(btex \kwd*{RANDOM-STATE} etex);
  boxit.restart(btex \kwd*{RESTART} etex);
  boxit.standard_object(btex \kwd*{STANDARD-OBJECT} etex);
  boxit.class(btex \kwd*{CLASS} etex);
  boxit.standard_class(btex \kwd*{STANDARD-CLASS} etex);
  boxit.built_in_class(btex \kwd*{BUILT-IN-CLASS} etex);
  boxit.structure_class(btex \kwd*{STRUCTURE-CLASS} etex);

  boxit.method(btex \kwd*{METHOD} etex);
  boxit.standard_method(btex \kwd*{STANDARD-METHOD} etex);
  boxit.method_combination(btex \kwd*{METHOD-COMBINATION} etex);
  t.se + (1, -1) = atom.nw;
  drawboxed(atom,hash_table,structure_object,package,readtable,random_state,restart,standard_object,class,standard_class,built_in_class,structure_class,method,standard_method,method_combination);
  
  boxjoin();
  boxit.sequence(btex \kwd*{SEQUENCE} etex);
  atom.ne + (50, 0) = sequence.nw;
  drawboxed(sequence);
  
  boxjoin(a.ne + (10, 0) = b.nw);
  boxit.function(btex \kwd*{FUNCTION} \OP{\VAR{arg-types }\Op{\VAR{value-types}}} etex);
  boxit.character(btex \kwd*{CHARACTER} etex);
  boxit.number(btex \kwd*{NUMBER} etex);
  boxit.stream(btex \kwd*{STREAM} etex);
  boxit.pathname(btex \kwd*{PATHNAME} etex);
  boxit.logical_pathname(btex \kwd*{LOGICAL-PATHNAME} etex);
  sequence.ne + (50, 0) = function.nw;
  drawboxed(function,character,number,stream,pathname,logical_pathname);
  

  boxjoin(a.se + (0, -3) = b.ne);
  boxit.complex(btex \kwd*{COMPLEX}\Op{\VAR{type}\DF{\kwd{\A}}} etex);
  boxit.real(btex \kwd*{REAL}\OP{\VAR{lower-limit}\DF{\kwd{\A}}\Op{\VAR{upper-limit}\DF{\kwd{\A}}}} etex);
  number.s + (30, -100) = real.n;
  drawboxed(complex,real);
  
  boxjoin(a.se + (0, -5) = b.ne);
  boxit.rational(btex \kwd*{RATIONAL}\OP{\VAR{lower-limit}\DF{\kwd{\A}}\Op{\VAR{upper-limit}\DF{\kwd{\A}}}} etex);
  boxit.ratio(btex \kwd*{RATIO} etex);
  boxit.integer(btex \kwd*{INTEGER}\OP{\VAR{lower-limit}\DF{\kwd{\A}}\Op{\VAR{upper-limit}\DF{\kwd{\A}}}} etex);
  boxit.bignum(btex \kwd*{BIGNUM} etex);
  boxit.bit(btex \kwd*{BIT} etex);
  real.s + (0, -5) = rational.ne;
  drawboxed(rational,ratio,integer,bit,bignum);

  boxjoin(a.ne + (3, 0) = b.nw);
  boxit.signed_byte(btex \kwd*{SIGNED-BYTE}\Op{\VAR{size}\DF{\kwd{\A}}} etex);
  boxit.fixnum(btex \kwd*{FIXNUM} etex);
  fixnum.ne + (3, 0) = bignum.nw;
  drawboxed(signed_byte, fixnum);

  boxjoin()
  boxit.unsigned_byte(btex \kwd*{UNSIGNED-BYTE}\Op{\VAR{size}\DF{\kwd{\A}}} etex);
  unsigned_byte.ne + (5,0) = bit.nw;
  drawboxed(unsigned_byte);

  boxjoin(a.sw + (0, -3) = b.nw);
  boxit.float(btex \kwd*{FLOAT} \OP{\VAR{lower-limit}\DF{\kwd{\A}}\Op{\VAR{upper-limit}\DF{\kwd{\A}}}} etex);
  boxit.short_float(btex \kwd*{SHORT-FLOAT}\OP{\VAR{lower-limit}\DF{\kwd{\A}}\Op{\VAR{upper-limit}\DF{\kwd{\A}}}} etex);
  boxit.single_float(btex \kwd*{SINGLE-FLOAT}\OP{\VAR{lower-limit}\DF{\kwd{\A}}\Op{\VAR{upper-limit}\DF{\kwd{\A}}}} etex);
  boxit.double_float(btex \kwd*{DOUBLE-FLOAT}\OP{\VAR{lower-limit}\DF{\kwd{\A}}\Op{\VAR{upper-limit}\DF{\kwd{\A}}}} etex);
  boxit.long_float(btex \kwd*{LONG-FLOAT}\OP{\VAR{lower-limit}\DF{\kwd{\A}}\Op{\VAR{upper-limit}\DF{\kwd{\A}}}} etex);
  real.s + (3, -5) = float.nw;
  drawboxed(float,short_float,single_float,double_float,long_float);

  
  boxjoin(a.sw + (0, -1) = b.nw);
  boxit.list(btex \kwd*{LIST} etex);
  boxit.symbol(btex \kwd*{SYMBOL} etex);
  boxit.null(btex \kwd*{NULL} etex);
  boxit.array(btex \kwd*{ARRAY}\OP{\VAR{type}\DF{\kwd{\A}}\Op{\VAR{rank}\DF{\kwd{\A}}\XOR(\OPn{\VAR{dimension}})}} etex);
  boxit.simple_array(btex \kwd*{SIMPLE-ARRAY} \OP{\VAR{type}\DF{\kwd{\A}}\Op{\VAR{rank}\DF{\kwd{\A}}\XOR(\OPn{\VAR{dimension}})}} etex);
  boxit.vector(btex \kwd*{VECTOR}\OP{\VAR{type}\DF{\kwd{\A}}\Op{\VAR{size}\DF{\kwd{\A}}}} etex);
  boxit.string_(btex \kwd*{STRING}\Op{\VAR{size}\DF{\kwd{\A}}} etex);
  boxit.simple_string(btex \kwd*{SIMPLE-STRING}\Op{\VAR{size}\DF{\kwd{\A}}} etex);
  boxit.base_string(btex \kwd*{BASE-STRING}\Op{\VAR{size}\DF{\kwd{\A}}} etex);
  boxit.simple_vector(btex \kwd*{SIMPLE-VECTOR}\Op{\VAR{size}\DF{\kwd{\A}}} etex);
  boxit.simple_base_string(btex \kwd*{SIMPLE-BASE-STRING}\Op{\VAR{size}\DF{\kwd{\A}}} etex);
  boxit.bit_vector(btex \kwd*{BIT-VECTOR}\Op{\VAR{size}\DF{\kwd{\A}}} etex);
  boxit.simple_bit_vector(btex \kwd*{SIMPLE-BIT-VECTOR}\Op{\VAR{size}\DF{\kwd{\A}}} etex);
  sequence.sw + (10, -10) = list.nw;
  drawboxed(list,symbol,null,array,vector,simple_array,string_,simple_string,base_string,simple_vector,simple_base_string,bit_vector,simple_bit_vector);
  
  boxjoin();
  boxit.cons(btex \kwd*{CONS}\OP{\VAR{car-type}\DF{\kwd{\A}}\Op{\VAR{cdr-type}\DF{\kwd{\A}}}} etex);
  list.e + (30, 0) = cons.w;
  drawboxed(cons);
  
  boxjoin(a.se + (0, -3) = b.ne);
  boxit.file_stream(btex \kwd*{FILE-STREAM} etex);
  boxit.two_way_stream(btex \kwd*{TWO-WAY-STREAM} etex);
  boxit.synonym_stream(btex \kwd*{SYNONYM-STREAM} etex);
  boxit.string_stream(btex \kwd*{STRING-STREAM} etex);
  boxit.echo_stream(btex \kwd*{ECHO-STREAM} etex);
  boxit.broadcast_stream(btex \kwd*{BROADCAST-STREAM} etex);
  boxit.concatenated_stream(btex \kwd*{CONCATENATED-STREAM} etex);
  stream.sw + (120, -5) = file_stream.nw;
  drawboxed(file_stream,two_way_stream,synonym_stream,string_stream,echo_stream,broadcast_stream,concatenated_stream);
  
  boxjoin(a.sw + (-5, 5) = b.ne);
  boxit.keyword(btex \kwd*{KEYWORD} etex);
  boxit.boolean_(btex \kwd*{BOOLEAN} etex);
  symbol.se + (50, 0) = boolean_.nw;
  drawboxed(keyword,boolean_);

  boxjoin(a.ne + (3, 0) = b.nw);
  boxit.generic_function(btex \kwd*{GENERIC-FUNCTION} etex);
  boxit.compiled_function(btex \kwd*{COMPILED-FUNCTION} etex);
  function.s + (20, -85) = generic_function.ne;
  drawboxed(generic_function,compiled_function);

  boxjoin();
  boxit.standard_generic_function(btex \kwd*{STANDARD-GENERIC-FUNCTION} etex);
  compiled_function.se + (0, -5) = standard_generic_function.ne;
  drawboxed(standard_generic_function);
  
  boxjoin(a.ne + (3, 0) = b.nw);
  boxit.base_char(btex \kwd*{BASE-CHAR} etex);
  boxit.extended_char(btex \kwd*{EXTENDED-CHAR} etex);
  character.s + (-20, -20) = extended_char.nw;
  drawboxed(base_char,extended_char);
  
  boxjoin()
  boxit.standard_char(btex \kwd*{STANDARD-CHAR} etex);
  extended_char.se + (0, -5) = standard_char.ne;
  drawboxed(standard_char);
  
  drawarrow standard_object.s{down} .. class.e{left};
  drawarrow class.w{left} .. standard_class.w{right};
  drawarrow class.w{left} .. built_in_class.w{right};
  drawarrow class.w{left} .. structure_class.w{right};
  drawarrow standard_object.s + (20, 0){down} .. method.e{down} .. standard_method.e{left} dashed evenly;

  drawarrow vector.w{left} .. string_.w;
  drawarrow string_.w{left} .. base_string.w;
  drawarrow vector.w{left} .. bit_vector.w;
  drawarrow sequence.s{down} .. list.w{right};
  drawarrow list.e .. cons.w;

  drawarrow symbol.e{right} .. keyword.w{right};
  drawarrow symbol.e{right} .. boolean_.w{right};

  drawarrow cons.sw + (20,0){down} .. symbol.se{left} .. null.e{left} dashed evenly;

  drawarrow sequence.s{down} .. array.n{right} .. vector.e{left} dashed evenly;
  drawarrow sequence.s{down} .. array.n{right} .. simple_array.e{down} .. vector.e{down} .. simple_vector.e{left} dashed evenly;
  drawarrow sequence.s{down} .. array.n{right} .. simple_array.e{down} .. vector.e{down} .. bit_vector.e{down} .. simple_bit_vector.e{left} dashed evenly;
  drawarrow sequence.s{down} .. array.n{right} .. simple_array.e{down} .. vector.e{down} .. string_.e{down} .. simple_string.e{down} .. base_string.e{down} .. simple_base_string.e{left} dashed evenly;

  drawarrow array.w{left} .. simple_array.w{right};

  drawarrow character.s{down} .. base_char.n{down};
  drawarrow character.s{down} .. extended_char.n{down};
  drawarrow base_char.s{down} .. standard_char.w{right};

  drawarrow function.s .. generic_function.n;
  drawarrow function.s .. compiled_function.n;
  drawarrow generic_function.s{down} .. standard_generic_function.w{right};

  drawarrow number.s{down} .. complex.n{down};
  drawarrow number.s{down} .. real.n + (-20, 0){down};

  drawarrow real.w{left} .. rational.n{down};
  drawarrow real.e{right} .. float.n{down};

  drawarrow float.e{right} .. short_float.e{left};
  drawarrow float.e{right} .. single_float.e{left};
  drawarrow float.e{right} .. double_float.e{left};
  drawarrow float.e{right} .. long_float.e{left};

  drawarrow rational.s{down} .. integer.n{down};
  drawarrow rational.s{down} .. ratio.w{right};

  drawarrow integer.s .. signed_byte.n;
  drawarrow integer.s .. fixnum.n;
  drawarrow integer.s .. bignum.n;

  drawarrow signed_byte.s + (-10, 0){down} .. unsigned_byte.w{right};
  drawarrow unsigned_byte.e .. bit.w;

  drawarrow stream.s{down} .. file_stream.w{right};
  drawarrow stream.s{down} .. two_way_stream.w{right};
  drawarrow stream.s{down} .. synonym_stream.w{right};
  drawarrow stream.s{down} .. string_stream.w{right};
  drawarrow stream.s{down} .. echo_stream.w{right};
  drawarrow stream.s{down} .. broadcast_stream.nw + (5, 0);
  drawarrow stream.s{down} .. concatenated_stream.nw + (5, 0);

  drawarrow pathname.e{right} .. logical_pathname.w{right};
endfig;


%\boxGOO{%
%  \T\index{T}%
%  \boxGOO{%
%    \kwd*{NUMBER}
%    \boxGOO{%
%      \kwd*{REAL } \OP{\VAR{lower-limit}\DF{\kwd{\A}}\text{ }\Op{\VAR{upper-limit}\DF{\kwd{\A}}}}\\
%      \boxGOO{%
%        \kwd*{RATIONAL } \OP{\VAR{lower-limit}\DF{\kwd{\A}}\text{ }\Op{\VAR{upper-limit}\DF{\kwd{\A}}}}\\
%        \boxGOO{%
%          \kwd*{INTEGER } \OP{\VAR{lower-limit}\DF{\kwd{\A}}\text{ }\Op{\VAR{upper-limit}\DF{\kwd{\A}}}}\\
%          \boxGOO{%
%            \kwd*{SIGNED-BYTE } \Op{\VAR{size}\DF{\kwd{\A}}}\\
%            \boxGOO{\kwd*{UNSIGNED-BYTE } \Op{\VAR{size}\DF{\kwd{\A}}}
%              \boxGOO{\kwd*{BIT} }}\boxGOOcr
%            \kwd*{FIXNUM} ;\>
%            \kwd*{BIGNUM}
%          }\boxGOOcr
%          \kwd*{RATIO}}\boxGOOcr
%        \kwd*{FLOAT } \OP{\VAR{lower-limit}\DF{\kwd{\A}}\text{ }\Op{\VAR{upper-limit}\DF{\kwd{\A}}}}\\
%        \boxGOO{%
%          \kwd*{SHORT-FLOAT } \OP{\VAR{lower-limit}\DF{\kwd{\A}}\text{ }\Op{\VAR{upper-limit}\DF{\kwd{\A}}}}\\
%          \kwd*{SINGLE-FLOAT } \OP{\VAR{lower-limit}\DF{\kwd{\A}}\text{ }\Op{\VAR{upper-limit}\DF{\kwd{\A}}}}\\
%          \kwd*{DOUBLE-FLOAT } \OP{\VAR{lower-limit}\DF{\kwd{\A}}\text{ }\Op{\VAR{upper-limit}\DF{\kwd{\A}}}}\\
%          \kwd*{LONG-FLOAT } \OP{\VAR{lower-limit}\DF{\kwd{\A}}\text{ }\Op{\VAR{upper-limit}\DF{\kwd{\A}}}}}}\boxGOOcr
%      \kwd*{COMPLEX } \Op{\VAR{type}\DF{\kwd{\A}}}}\boxGOOcr
%    \kwd*{SEQUENCE}
%    \boxGOO{%
%      \kwd*{LIST}
%      \boxGOO{%
%        \kwd*{CONS } \OP{\VAR{car-type}\DF{\kwd{\A}}\text{ }\Op{\VAR{cdr-type}\DF{\kwd{\A}}}}\\
%      \kwd*{SYMBOL}\footnotemark[2]
%      \boxGOO{
%        \kwd*{NULL}}}\boxGOOcr
%      \kwd*{ARRAY}\footnotemark[2] \OP{\VAR{type}\DF{\kwd{\A}}\text{ }\Op{\VAR{rank}\DF{\kwd{\A}}\XOR(\OPn{\VAR{dimension}})}}\\
%      \boxGOO{%
%        \kwd*{SIMPLE-ARRAY}\footnotemark[2] \OP{\VAR{type}\DF{\kwd{\A}}\text{ }\Op{\VAR{rank}\DF{\kwd{\A}}\XOR(\OPn{\VAR{dimension}})}}\\
%        \boxGOO{%
%          \kwd*{VECTOR}\footnotemark[2] \OP{\VAR{type}\DF{\kwd{\A}}\text{ }\Op{\VAR{size}\DF{\kwd{\A}}}}\\
%          \boxGOO{%
%            \kwd*{BIT-VECTOR}\footnotemark[2] \Op{\VAR{size}\DF{\kwd{\A}}}\\
%            \boxGOO{%
%              \kwd*{SIMPLE-BIT-VECTOR } \Op{\VAR{size}\DF{\kwd{\A}}}}\boxGOOcr
%            \kwd*{STRING}\footnotemark[2] \Op{\VAR{size}\DF{\kwd{\A}}}\\
%            \boxGOO{%
%              \kwd*{SIMPLE-STRING } \Op{\VAR{size}\DF{\kwd{\A}}}\\
%              \boxGOO{%
%                \kwd*{BASE-STRING}\footnotemark[2] \Op{\VAR{size}\DF{\kwd{\A}}}\\
%                \boxGOO{%
%                  \kwd*{SIMPLE-BASE-STRING } \Op{\VAR{size}\DF{\kwd{\A}}}}}}\boxGOOcr
%            \kwd*{SIMPLE-VECTOR } \Op{\VAR{size}\DF{\kwd{\A}}}}}\boxGOOcr
%        \kwd*{VECTOR } \OP{\VAR{type}\DF{\kwd{\A}}\text{ }\Op{\VAR{size}\DF{\kwd{\A}}}}\\
%        \boxGOO{%
%          \kwd*{STRING } \Op{\VAR{size}\DF{\kwd{\A}}}
%          \boxGOO{%
%            \kwd*{BASE-STRING } \Op{\VAR{size}\DF{\kwd{\A}}}}\boxGOOcr
%          \kwd*{BIT-VECTOR } \Op{\VAR{size}\DF{\kwd{\A}}}}}}\boxGOOcr
%    \kwd*{ARRAY} \OP{\VAR{type}\DF{\kwd{\A}}\text{ }\Op{\VAR{rank}\DF{\kwd{\A}}\XOR(\OPn{\VAR{dimension}})}}\\
%    \boxGOO{%
%      \kwd*{SIMPLE-ARRAY} \OP{\VAR{type}\DF{\kwd{\A}}\text{ }\Op{\VAR{rank}\DF{\kwd{\A}}\XOR(\OPn{\VAR{dimension}})}}
%    }\boxGOOcr
%    \kwd*{CHARACTER}
%    \boxGOO{%
%      \kwd*{BASE-CHAR}
%      \boxGOO{%
%        \kwd*{STANDARD-CHAR}}\boxGOOcr
%      \kwd*{EXTENDED-CHAR}}\boxGOOcr
%    \kwd*{STREAM}
%    \boxGOO{%
%      \kwd*{FILE-STREAM};\>
%      \kwd*{TWO-WAY-STREAM};\>
%      \kwd*{SYNONYM-STREAM};\\
%      \kwd*{STRING-STREAM};\>
%      \kwd*{BROADCAST-STREAM};\>
%      \kwd*{ECHO-STREAM};\\
%      \kwd*{CONCATENATED-STREAM}}\boxGOOcr
%    \kwd*{PATHNAME}
%    \boxGOO{%
%      \kwd*{LOGICAL-PATHNAME}}\boxGOOcr
%    \kwd*{SYMBOL}
%    \boxGOO{%
%      \kwd*{KEYWORD};\>
%      \kwd*{BOOLEAN}}\boxGOOcr
%    \kwd*{FUNCTION } \OP{\VAR{arg-types }\Op{\VAR{value-types}}}\\
%    \boxGOO{%
%      \kwd*{GENERIC-FUNCTION}
%      \boxGOO{\kwd*{STANDARD-GENERIC-FUNCTION}}\boxGOOcr
%      \kwd*{COMPILED-FUNCTION}}\boxGOOcr
%    \kwd*{STANDARD-OBJECT}
%    \boxGOO{%
%      \kwd*{CLASS}
%      \boxGOO{%
%        \kwd*{STANDARD-CLASS};\>
%        \kwd*{BUILT-IN-CLASS};\\
%        \kwd*{STRUCTURE-CLASS}}\boxGOOcr
%      \kwd*{METHOD}\footnotemark[2]
%      \boxGOO{%
%        \kwd*{STANDARD-METHOD}}}\boxGOOcr
%    \kwd*{ATOM};\>
%    \kwd*{HASH-TABLE};\>
%    \kwd*{STRUCTURE-OBJECT};\>
%    \kwd*{PACKAGE};\>
%    \kwd*{READTABLE};\\
%    \kwd*{RANDOM-STATE};\>
%    \kwd*{RESTART};\>
%    \kwd*{METHOD};\>
%    \kwd*{METHOD-COMBINATION}}}
verbatimtex
\end{document}
etex
end
