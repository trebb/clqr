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
  
  boxit.t(btex \T etex);
  t.nw = (0, 0);
  drawboxed(t);

  boxjoin(a.sw + (0, -3) = b.nw);
  boxit.atom(btex \kwd*{ATOM} etex);
  boxit.hash_table(btex \kwd*{HASH-TABLE} etex);
  t.se + (20, 0) = atom.nw;
  drawboxed(atom,hash_table);
  
  boxjoin();
  boxit.structure_object(btex \kwd*{STRUCTURE-OBJECT} etex);
  hash_table.sw + (0, -6) = structure_object.nw;
  drawboxed(atom,hash_table,structure_object);
  
  boxjoin(a.sw + (0, -3) = b.nw);
  boxit.package(btex \kwd*{PACKAGE} etex);
  boxit.readtable(btex \kwd*{READTABLE} etex);
  structure_object.sw + (0,-6) = package.nw;
  drawboxed(package,readtable);
  
  boxjoin(a.sw + (0, -3) = b.nw);
  boxit.random_state(btex \kwd*{RANDOM-STATE} etex);
  boxit.restart(btex \kwd*{RESTART} etex);
  boxit.standard_object(btex \kwd*{STANDARD-OBJECT} etex);
  boxit.class(btex \kwd*{CLASS} etex);
  boxit.standard_class(btex \kwd*{STANDARD-CLASS} etex);
  boxit.built_in_class(btex \kwd*{BUILT-IN-CLASS} etex);
  boxit.structure_class(btex \kwd*{STRUCTURE-CLASS} etex);
  boxit.method(btex \kwd*{METHOD} etex);
  readtable.sw + (0, -6) = random_state.nw;
  drawboxed(random_state,restart,standard_object,class,standard_class,built_in_class,structure_class,method);
  
  boxjoin(a.se + (0, -3) = b.ne);
  boxit.standard_method(btex \kwd*{STANDARD-METHOD} etex);
  boxit.method_combination(btex \kwd*{METHOD-COMBINATION} etex);
  method.sw + (-15,-3) = standard_method.nw;
  drawboxed(standard_method,method_combination);
  
  boxjoin();
  boxit.character(btex \kwd*{CHARACTER} etex);
  atom.ne + (300, -15) = character.nw;
  drawboxed(character);
  
  boxjoin();
  boxit.function(btex \kwd*{FUNCTION} \OP{\VAR{arg-types }\Op{\VAR{value-types}}} etex);
  atom.ne + (210, -60) = function.nw;
  drawboxed(function);
  
  boxjoin(a.ne + (10, 0) = b.nw);
  boxit.pathname(btex \kwd*{PATHNAME} etex);
  boxit.logical_pathname(btex \kwd*{LOGICAL-PATHNAME} etex);
  logical_pathname.ne = (570,0);
  drawboxed(pathname,logical_pathname);

  boxjoin()
  boxit.stream(btex \kwd*{STREAM} etex);
  pathname.s + (0, -5) = stream.n;
  drawboxed(stream);


  boxjoin(a.se + (0, -3) = b.ne);
  boxit.float(btex \kwd*{FLOAT} \OP{\VAR{lower-limit}\DF{\kwd{\A}}\Op{\VAR{upper-limit}\DF{\kwd{\A}}}} etex);
  boxit.short_float(btex \kwd*{SHORT-FLOAT}\OP{\VAR{lower-limit}\DF{\kwd{\A}}\Op{\VAR{upper-limit}\DF{\kwd{\A}}}} etex);
  boxit.single_float(btex \kwd*{SINGLE-FLOAT}\OP{\VAR{lower-limit}\DF{\kwd{\A}}\Op{\VAR{upper-limit}\DF{\kwd{\A}}}} etex);
  boxit.double_float(btex \kwd*{DOUBLE-FLOAT}\OP{\VAR{lower-limit}\DF{\kwd{\A}}\Op{\VAR{upper-limit}\DF{\kwd{\A}}}} etex);
  boxit.long_float(btex \kwd*{LONG-FLOAT}\OP{\VAR{lower-limit}\DF{\kwd{\A}}\Op{\VAR{upper-limit}\DF{\kwd{\A}}}} etex);

  boxjoin(a.sw + (0, -3) = b.nw);
  boxit.rational(btex \kwd*{RATIONAL}\OP{\VAR{lower-limit}\DF{\kwd{\A}}\Op{\VAR{upper-limit}\DF{\kwd{\A}}}} etex);
  boxit.integer(btex \kwd*{INTEGER}\OP{\VAR{lower-limit}\DF{\kwd{\A}}\Op{\VAR{upper-limit}\DF{\kwd{\A}}}} etex);
  boxit.ratio(btex \kwd*{RATIO} etex);
  
  boxjoin(a.sw + (0, -3) = b.nw);
  boxit.number(btex \kwd*{NUMBER} etex);
  boxit.complex(btex \kwd*{COMPLEX}\Op{\VAR{type}\DF{\kwd{\A}}} etex);
  boxit.real(btex \kwd*{REAL}\OP{\VAR{lower-limit}\DF{\kwd{\A}}\Op{\VAR{upper-limit}\DF{\kwd{\A}}}} etex);
  
  boxjoin(a.ne + (3, 0) = b.nw);
  boxit.signed_byte(btex \kwd*{SIGNED-BYTE}\Op{\VAR{size}\DF{\kwd{\A}}} etex);
  boxit.fixnum(btex \kwd*{FIXNUM} etex);
  boxit.bignum(btex \kwd*{BIGNUM} etex);

  boxjoin(a.se + (10, 0) = b.sw);
  boxit.unsigned_byte(btex \kwd*{UNSIGNED-BYTE}\Op{\VAR{size}\DF{\kwd{\A}}} etex);
  boxit.bit(btex \kwd*{BIT} etex);
  
  long_float.se = (555, -240);
  real.se + (20, -5) = float.ne;
  bit.se = (400, -240);
  bignum.se + (10, -23) = bit.se;
  integer.se + (0, -20) = bignum.ne;
  
  drawboxed(signed_byte,fixnum,bignum);
  drawboxed(rational,integer,ratio);
  drawboxed(float,short_float,single_float,double_float,long_float);
  drawboxed(number,complex,real);
  drawboxed(unsigned_byte,bit);

  boxjoin(a.e + (10,0) = b.w);
  boxit.sequence(btex \kwd*{SEQUENCE} etex);
  boxit.list(btex \kwd*{LIST} etex);
  boxit.cons(btex \kwd*{CONS}\OP{\VAR{car-type}\DF{\kwd{\A}}\Op{\VAR{cdr-type}\DF{\kwd{\A}}}} etex);
  structure_object.ne + (10, 3) = sequence.w;
  drawboxed(sequence,list,cons);

  boxjoin(a.sw + (0, -3) = b.nw);
  boxit.symbol(btex \kwd*{SYMBOL} etex);
  boxit.null(btex \kwd*{NULL} etex);
  list.se + (0, -3) = symbol.ne;
  drawboxed(symbol,null);
  
  boxjoin(a.sw + (0, -3) = b.nw);
  boxit.array(btex \kwd*{ARRAY}\OP{\VAR{type}\DF{\kwd{\A}}\Op{\VAR{rank}\DF{\kwd{\A}}\XOR(\OPn{\VAR{dimension}})}} etex);
  boxit.simple_array(btex \kwd*{SIMPLE-ARRAY} \OP{\VAR{type}\DF{\kwd{\A}}\Op{\VAR{rank}\DF{\kwd{\A}}\XOR(\OPn{\VAR{dimension}})}} etex);
  boxit.vector(btex \kwd*{VECTOR}\OP{\VAR{type}\DF{\kwd{\A}}\Op{\VAR{size}\DF{\kwd{\A}}}} etex);
  boxit.string_(btex \kwd*{STRING}\Op{\VAR{size}\DF{\kwd{\A}}} etex);
  boxit.simple_string(btex \kwd*{SIMPLE-STRING}\Op{\VAR{size}\DF{\kwd{\A}}} etex);
  boxit.base_string(btex \kwd*{BASE-STRING}\Op{\VAR{size}\DF{\kwd{\A}}} etex);
  boxit.simple_base_string(btex \kwd*{SIMPLE-BASE-STRING}\Op{\VAR{size}\DF{\kwd{\A}}} etex);
  boxit.simple_vector(btex \kwd*{SIMPLE-VECTOR}\Op{\VAR{size}\DF{\kwd{\A}}} etex);
  boxit.bit_vector(btex \kwd*{BIT-VECTOR}\Op{\VAR{size}\DF{\kwd{\A}}} etex);
  null.sw + (-20, -6) = array.nw;
  drawboxed(array,vector,simple_array,string_,simple_string,base_string,simple_base_string,simple_vector,bit_vector);
  
  boxjoin();
  boxit.simple_bit_vector(btex \kwd*{SIMPLE-BIT-VECTOR}\Op{\VAR{size}\DF{\kwd{\A}}} etex);
  bit_vector.se + (10, -2) = simple_bit_vector.sw;
  drawboxed(simple_bit_vector);
  
  boxjoin(a.se + (0, -3) = b.ne);
  boxit.file_stream(btex \kwd*{FILE-STREAM} etex);
  boxit.two_way_stream(btex \kwd*{TWO-WAY-STREAM} etex);
  boxit.synonym_stream(btex \kwd*{SYNONYM-STREAM} etex);
  boxit.string_stream(btex \kwd*{STRING-STREAM} etex);
  boxit.echo_stream(btex \kwd*{ECHO-STREAM} etex);
  boxit.broadcast_stream(btex \kwd*{BROADCAST-STREAM} etex);
  boxit.concatenated_stream(btex \kwd*{CONCATENATED-STREAM} etex);
  logical_pathname.se + (0, -5) = file_stream.ne;
  drawboxed(file_stream,two_way_stream,synonym_stream,string_stream,echo_stream,broadcast_stream,concatenated_stream);
  
  boxjoin(a.sw + (-13, 3) = b.ne);
  boxit.keyword(btex \kwd*{KEYWORD} etex);
  boxit.boolean_(btex \kwd*{BOOLEAN} etex);
  symbol.se + (32,0) = boolean_.nw;
  drawboxed(keyword,boolean_);

  boxjoin(a.se + (0, -3) = b.ne);
  boxit.compiled_function(btex \kwd*{COMPILED-FUNCTION} etex);
  boxit.generic_function(btex \kwd*{GENERIC-FUNCTION} etex);
  boxit.standard_generic_function(btex \kwd*{STANDARD-GENERIC-FUNCTION} etex);
  function.se + (0, -8) = compiled_function.ne;
  drawboxed(compiled_function,generic_function,standard_generic_function);

  boxjoin(a.se + (0, -3) = b.ne);
  boxit.extended_char(btex \kwd*{EXTENDED-CHAR} etex);
  boxit.base_char(btex \kwd*{BASE-CHAR} etex);
  boxit.standard_char(btex \kwd*{STANDARD-CHAR} etex);
  character.e + (10,-10) = extended_char.w;
  drawboxed(extended_char,base_char,standard_char);
  
  
  drawarrow t.s{down} .. sequence.w{right};
  drawarrow t.e{right} .. function.w{right};
  drawarrow t.e{right} ... character.w{right};
  drawarrow t.e{right} ... number.w{right};
  drawarrow t.e{right} ... stream.w{right};
  drawarrow t.e{right} ... pathname.w{right};

  drawarrow t.s{down} ... atom.w{right};
  drawarrow t.s{down} ... hash_table.w{right};
  drawarrow t.s{down} ... structure_object.w{right};
  drawarrow t.s{down} ... symbol.w{right};
  drawarrow t.s{down} ... package.w{right};
  drawarrow t.s{down} ... readtable.w{right};
  drawarrow t.s{down} ... array.w+(0,3){right};
  drawarrow t.s{down} ... random_state.w{right};
  drawarrow t.s{down} ... restart.w{right};
  drawarrow t.s{down} ... standard_object.w{right};
  drawarrow t.s{down} ... method.w{right};
  drawarrow t.s{down} ... method_combination.nw+(5,0){down};

  drawarrow standard_object.s{down} .. class.e{left};
  drawarrow class.w{left} .. standard_class.w{right};
  drawarrow class.w{left} ... standard_class.w+(-10,0) ... built_in_class.w{right};
  drawarrow class.w{left} ... standard_class.sw+(-13,0) ... structure_class.w{right};
  
  drawarrow standard_object.s{down} .. standard_class.ne+(2,2)  ... standard_class.se+(7,-10) ... structure_class.se+(2,-2) .. method.e{down} .. standard_method.ne+(5,2) .. standard_method.e{left} dashed evenly;

  drawarrow vector.w{left} .. string_.w+(0,3){right};
  drawarrow string_.w+(0,-3){left} .. simple_string.w+(-10,0) ... base_string.w{right};
  drawarrow vector.w{left} ... base_string.w+(-17,0) ... bit_vector.w{right};
  drawarrow sequence.e{right} .. list.w{right};
  drawarrow list.e .. cons.w;

  drawarrow symbol.e{right} .. keyword.w{right};
  drawarrow symbol.e{right} .. boolean_.w{right};

  drawarrow cons.sw + (20,0){down} .. symbol.se{left} .. null.e{left} dashed evenly;

  
  drawarrow sequence.s{down} .. null.sw+(-2,-3){right} ... array.ne+(-10,6) .. array.ne+(0,6) .. array.ne+(2,1){down} .. array.e{down} .. simple_array.ne+(0,6) .. simple_array.se+(0,-15) .. vector.e + (0, 3) {left} dashed evenly;
  drawarrow sequence.s{down} .. null.sw+(-2,-3){right} ... array.ne+(-10,6) .. array.ne+(0,6) .. array.ne+(2,1){down} .. array.e{down} .. simple_array.ne+(0,6) .. simple_array.ne+(2,1){down} .. simple_array.e{down} .. simple_array.se+(2,-1){down}.. vector.ne+(30,0) .. vector.ne+(10,0) .. vector.e + (0, -3){down}  .. vector.se + (2,-1){down} .. simple_base_string.se+(5,0) .. simple_vector.e{left} dashed evenly;
  drawarrow sequence.s{down} .. null.sw+(-2,-3){right} ... array.ne+(-10,6) .. array.ne+(0,6) .. array.ne+(2,1){down} .. array.e{down} .. simple_array.ne+(0,6) .. simple_array.ne+(2,1){down} .. simple_array.e{down} .. simple_array.se+(2,-1){down}.. vector.ne+(30,0) .. vector.ne+(10,0) .. vector.e + (0, -3){down}  .. vector.se + (2,-1){down} .. simple_base_string.se+(10,0) .. simple_vector.se+(0, -3) .. bit_vector.e{down} ... simple_bit_vector.w{right} dashed evenly;
  drawarrow sequence.s{down} .. null.sw+(-2,-3){right} ... array.ne+(-10,6) .. array.ne+(0,6) .. array.ne+(2,1){down} .. array.e{down} .. simple_array.ne+(0,6) .. simple_array.ne+(2,1){down} .. simple_array.e{down} .. simple_array.se+(2,-1){down}.. vector.ne+(30,0) .. vector.ne+(10,0) .. vector.e + (0, -3){down}  .. vector.se + (2,-1){down} .. string_.e{down} .. simple_string.ne+(2,1){down}  .. simple_string.e{down}  .. simple_string.se+(2,1){down} .. base_string.e+(0,3){down} .. simple_base_string.ne+(-10,0){down} dashed evenly;

  drawarrow array.w+(0,-3){left} .. simple_array.w{right};

  drawarrow character.w{left} .. base_char.w{right};
  drawarrow character.w{left} .. extended_char.w{right};
  drawarrow base_char.w{left} .. standard_char.w{right};

  drawarrow function.s+(-20,0){down} .. compiled_function.w{right};
  drawarrow function.s+(-20,0){down} .. generic_function.w{right};
  drawarrow generic_function.w{left} .. standard_generic_function.nw + (10, 0){down};

  drawarrow number.w{left} .. complex.w{right};
  drawarrow number.w{left} ... complex.w+(-10,0) ... real.w{right};

  drawarrow real.sw+(5,0){down} .. rational.e{left};
  drawarrow real.sw+(5,0){down} .. float.w{right};

  drawarrow float.e{right}  ... short_float.ne+(6,-3) ... short_float.e{left};
  drawarrow float.e{right} ... short_float.e+(10,0) ... single_float.e{left};
  drawarrow float.e{right} ... short_float.se+(13,-3) ... double_float.e{left};
  drawarrow float.e{right} ... single_float.e+(16,0) ... long_float.e{left};

  drawarrow rational.w{left} .. integer.w{right};
  drawarrow rational.w{left} .. ratio.w{right};

  drawarrow integer.s{down} .. signed_byte.n{down};
  drawarrow integer.s{down} .. fixnum.n{down};
  drawarrow integer.s{down} .. bignum.n{down};

  drawarrow signed_byte.s + (10, 0){down} .. unsigned_byte.n{down};
  drawarrow unsigned_byte.e .. bit.w;

  drawarrow stream.s{down} .. file_stream.w{right};
  drawarrow stream.s{down} .. two_way_stream.w{right};
  drawarrow stream.s{down} .. synonym_stream.w{right};
  drawarrow stream.s{down} .. string_stream.w{right};
  drawarrow stream.s{down} .. echo_stream.w{right};
  drawarrow stream.s{down} .. broadcast_stream.w{right};
  drawarrow stream.s{down} .. concatenated_stream.w{right};

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
