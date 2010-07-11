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
  t.se + (1, -1) = atom.nw;
  drawboxed(atom,hash_table,structure_object,package,readtable,random_state,restart,standard_object);
  
  boxjoin(a.e + (2, 0) = b.w);
  boxit.symbol(btex \kwd*{SYMBOL} etex);
  boxit.sequence(btex \kwd*{SEQUENCE} etex);
  boxit.array(btex \kwd*{ARRAY}\OP{\VAR{type}\DF{\kwd{\A}}\Op{\VAR{rank}\DF{\kwd{\A}}\XOR(\OPn{\VAR{dimension}})}} etex);
  boxit.character(btex \kwd*{CHARACTER} etex);
  boxit.stream(btex \kwd*{STREAM} etex);
  boxit.pathname(btex \kwd*{PATHNAME} etex);
  boxit.function(btex \kwd*{FUNCTION} \OP{\VAR{arg-types }\Op{\VAR{value-types}}} etex);
  boxit.number(btex \kwd*{NUMBER} etex);
  atom.e + (1, 0) = symbol.w;
  drawboxed(symbol,number,sequence,array,character,stream,pathname,function);
  

  boxjoin(a.ne + (3, 0) = b.nw);
  boxit.real(btex \kwd*{REAL}\OP{\VAR{lower-limit}\DF{\kwd{\A}}\Op{\VAR{upper-limit}\DF{\kwd{\A}}}} etex);
  boxit.complex(btex \kwd*{COMPLEX}\Op{\VAR{type}\DF{\kwd{\A}}} etex);
  number.sw + (20, -20) = real.nw;
  drawboxed(real,complex);
  
  boxjoin(a.se + (0, -3) = b.ne);
  boxit.rational(btex \kwd*{RATIONAL}\OP{\VAR{lower-limit}\DF{\kwd{\A}}\Op{\VAR{upper-limit}\DF{\kwd{\A}}}} etex);
  boxit.ratio(btex \kwd*{RATIO} etex);
  boxit.integer(btex \kwd*{INTEGER}\OP{\VAR{lower-limit}\DF{\kwd{\A}}\Op{\VAR{upper-limit}\DF{\kwd{\A}}}} etex);
  boxit.signed_byte(btex \kwd*{SIGNED-BYTE}\Op{\VAR{size}\DF{\kwd{\A}}} etex);
  boxit.unsigned_byte(btex \kwd*{UNSIGNED-BYTE}\Op{\VAR{size}\DF{\kwd{\A}}} etex);
  boxit.bit(btex \kwd*{BIT} etex);
  boxit.fixnum(btex \kwd*{FIXNUM} etex);
  boxit.bignum(btex \kwd*{BIGNUM} etex);
  real.s + (0, -5) = rational.ne;
  drawboxed(rational,ratio,integer,signed_byte,unsigned_byte,bit,fixnum,bignum);

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
  boxit.null(btex \kwd*{NULL} etex);
  boxit.simple_array(btex \kwd*{SIMPLE-ARRAY} \OP{\VAR{type}\DF{\kwd{\A}}\Op{\VAR{rank}\DF{\kwd{\A}}\XOR(\OPn{\VAR{dimension}})}} etex);
  boxit.vector(btex \kwd*{VECTOR}\OP{\VAR{type}\DF{\kwd{\A}}\Op{\VAR{size}\DF{\kwd{\A}}}} etex);
  boxit.string_(btex \kwd*{STRING}\Op{\VAR{size}\DF{\kwd{\A}}} etex);
  boxit.simple_string(btex \kwd*{SIMPLE-STRING}\Op{\VAR{size}\DF{\kwd{\A}}} etex);
  boxit.base_string(btex \kwd*{BASE-STRING}\Op{\VAR{size}\DF{\kwd{\A}}} etex);
  boxit.simple_vector(btex \kwd*{SIMPLE-VECTOR}\Op{\VAR{size}\DF{\kwd{\A}}} etex);
  boxit.simple_base_string(btex \kwd*{SIMPLE-BASE-STRING}\Op{\VAR{size}\DF{\kwd{\A}}} etex);
  boxit.bit_vector(btex \kwd*{BIT-VECTOR}\Op{\VAR{size}\DF{\kwd{\A}}} etex);
  boxit.simple_bit_vector(btex \kwd*{SIMPLE-BIT-VECTOR}\Op{\VAR{size}\DF{\kwd{\A}}} etex);
  sequence.sw + (50, -60) = list.nw;
  drawboxed(list,null,vector,simple_array,string_,simple_string,base_string,simple_vector,simple_base_string,bit_vector,simple_bit_vector);
  
  boxjoin();
  boxit.cons(btex \kwd*{CONS}\OP{\VAR{car-type}\DF{\kwd{\A}}\Op{\VAR{cdr-type}\DF{\kwd{\A}}}} etex);
  list.e + (5, 0) = cons.w;
  drawboxed(cons);

  
  boxjoin(a.sw = b.nw);
  boxit.base_char(btex \kwd*{BASE-CHAR} etex);
  boxit.standard_char(btex \kwd*{STANDARD-CHAR} etex);
  boxit.extended_char(btex \kwd*{EXTENDED-CHAR} etex);
  character.se = base_char.ne;
  drawboxed(base_char,standard_char,extended_char);
  
  boxjoin(a.sw = b.nw);
  boxit.file_stream(btex \kwd*{FILE-STREAM} etex);
  boxit.two_way_stream(btex \kwd*{TWO-WAY-STREAM} etex);
  boxit.synonym_stream(btex \kwd*{SYNONYM-STREAM} etex);
  boxit.string_stream(btex \kwd*{STRING-STREAM} etex);
  boxit.broadcast_stream(btex \kwd*{BROADCAST-STREAM} etex);
  boxit.echo_stream(btex \kwd*{ECHO-STREAM} etex);
  boxit.concatenated_stream(btex \kwd*{CONCATENATED-STREAM} etex);
  stream.sw + (0, -80) = file_stream.nw;
  drawboxed(file_stream,two_way_stream,synonym_stream,string_stream,broadcast_stream,echo_stream,concatenated_stream);
  
  boxjoin(a.sw = b.nw);
  boxit.logical_pathname(btex \kwd*{LOGICAL-PATHNAME} etex);
  pathname.s + (0, -3) = logical_pathname.n;
  drawboxed(logical_pathname);

  boxjoin(a.sw = b.nw);
  boxit.keyword(btex \kwd*{KEYWORD} etex);
  boxit.boolean_(btex \kwd*{BOOLEAN} etex);
  symbol.sw + (0, -180) = keyword.nw;
  drawboxed(keyword,boolean_);

  boxjoin(a.sw = b.nw);
  boxit.generic_function(btex \kwd*{GENERIC-FUNCTION} etex);
  boxit.standard_generic_function(btex \kwd*{STANDARD-GENERIC-FUNCTION} etex);
  boxit.compiled_function(btex \kwd*{COMPILED-FUNCTION} etex);
  function.sw = generic_function.nw;
  drawboxed(generic_function,standard_generic_function,compiled_function);

  boxjoin(a.s = b.n);
  boxit.class(btex \kwd*{CLASS} etex);
  boxit.standard_class(btex \kwd*{STANDARD-CLASS} etex);
  boxit.built_in_class(btex \kwd*{BUILT-IN-CLASS} etex);
  boxit.structure_class(btex \kwd*{STRUCTURE-CLASS} etex);

  boxit.method(btex \kwd*{METHOD} etex);
  boxit.standard_method(btex \kwd*{STANDARD-METHOD} etex);
  boxit.method_combination(btex \kwd*{METHOD-COMBINATION} etex);
  standard_object.sw + (0, -5) = class.nw;
  drawboxed(class,standard_class,built_in_class,structure_class,method,standard_method,method_combination);
  
  drawarrow standard_object.s .. class.n;
  drawarrow class.w{left} .. standard_class.w{right};
  drawarrow class.w{left} .. built_in_class.w{right};
  drawarrow class.w{left} .. structure_class.w{right};
  drawarrow standard_object.s{down} .. method.e{down} .. standard_method.e{left} dashed evenly;

  drawarrow vector.w{left} .. string_.w;
  drawarrow string_.w{left} .. base_string.w;
  drawarrow vector.w{left} .. bit_vector.w;
  drawarrow sequence.s{down} .. list.w{right};
  drawarrow list.e .. cons.w;
  drawarrow sequence.s{down} .. array.sw{right} .. simple_array.nw + (-2, 2) .. vector.w + (0, 3){right} dashed evenly;
  drawarrow sequence.s{down} .. array.sw {right} .. simple_array.e{down} .. vector.e{down} .. simple_vector.e{left} dashed evenly;
  drawarrow sequence.s{down} .. array.sw {right} .. simple_array.e{down} .. vector.e{down} .. bit_vector.e{down} .. simple_bit_vector.e{left} dashed evenly;
  drawarrow sequence.s{down} .. array.sw {right} .. simple_array.e{down} .. vector.e{down} .. string_.e{down} .. simple_string.e{down} .. base_string.e{down} .. simple_base_string.e{left} dashed evenly;

  drawarrow array.s{down} .. simple_array.n{down};

  drawarrow float.e{right} .. short_float.e{left};
  drawarrow float.e{right} .. single_float.e{left};
  drawarrow float.e{right} .. double_float.e{left};
  drawarrow float.e{right} .. long_float.e{left};

  drawarrow rational.s{down} .. integer.n{down};
  drawarrow rational.s{down} .. ratio.w{right};

  drawarrow integer.w{left} .. signed_byte.w{right};
  drawarrow integer.w{left} .. fixnum.w{right};
  drawarrow integer.w{left} .. bignum.w{right};
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
