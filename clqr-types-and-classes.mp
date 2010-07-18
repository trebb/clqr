% Copyright (C) 2010 Bert Burgemeister
%
% Permission is granted to copy, distribute and/or modify this
% document under the terms of the GNU Free Documentation License,
% Version 1.2 or any later version published by the Free Software
% Foundation; with no Invariant Sections, no Front-Cover Texts and
% no Back-Cover Texts. For details see file COPYING.
%
prologues := 3;
input boxes
verbatimtex
\documentclass[8pt,pagesize,twoside,footexclude,headexclude]{scrartcl}
\input{clqr.packages}
\input{clqr.macros}
\begin{document}
etex

def halfdisc(expr point) =
  fill halfcircle scaled 4 rotated -90 shifted point --cycle enddef;

%defaultdx := 1;
%defaultdy := 1;

beginfig(1);
  pickup pencircle scaled .3;

  boxit.t(btex \T etex);
  t.nw = (0, 0);
  drawboxed(t);

  boxjoin(a.sw + (0, -3) = b.nw);
  boxit.atom(btex \kwd*{ATOM} etex);
  boxit.package(btex \kwd*{PACKAGE} etex);
  boxit.readtable(btex \kwd*{READTABLE} etex);
  boxit.hash_table(btex \kwd*{HASH-TABLE} etex);
  boxit.random_state(btex \kwd*{RANDOM-STATE} etex);
  t.se + (12, 0) = atom.nw;
  drawboxed(atom,package,readtable,hash_table,random_state);
  
  boxjoin(a.sw + (0, -3) = b.nw);
  boxit.structure_object(btex \kwd*{STRUCTURE-OBJECT} etex);
  boxit.restart(btex \kwd*{RESTART} etex);
  boxit.standard_object(btex \kwd*{STANDARD-OBJECT} etex);
  boxit.class(btex \kwd*{CLASS} etex);
  boxit.built_in_class(btex \kwd*{BUILT-IN-CLASS} etex);
  boxit.standard_class(btex \kwd*{STANDARD-CLASS} etex);
  boxit.structure_class(btex \kwd*{STRUCTURE-CLASS} etex);
  random_state.sw + (0,-12) = structure_object.nw;
  drawboxed(structure_object,restart,standard_object,class,built_in_class,standard_class,structure_class);
  
  boxjoin();
  boxit.method(btex \kwd*{METHOD} etex);
  structure_class.sw+(0, -5) = method.nw;
  drawboxed(method)
  
  boxjoin(a.se + (0, -3) = b.ne);
  boxit.standard_method(btex \kwd*{STANDARD-METHOD} etex);
  boxit.method_combination(btex \kwd*{METHOD-COMBINATION} etex);
  method.sw + (-9,-5) = standard_method.nw;
  drawboxed(standard_method,method_combination);
  
  boxjoin();
  boxit.character(btex \kwd*{CHARACTER} etex);
  atom.ne + (293, -5) = character.nw;
  drawboxed(character);
  
  boxjoin(a.se + (0, -3) = b.ne);
  boxit.function(btex \kwd*{FUNCTION} \OP{\VAR{arg-types} \Op{\VAR{value-types}}} etex);
  boxit.compiled_function(btex \kwd*{COMPILED-FUNCTION} etex);
  boxit.generic_function(btex \kwd*{GENERIC-FUNCTION} etex);
  boxit.standard_generic_function(btex \kwd*{STANDARD-GENERIC-FUNCTION} etex);
  atom.ne + (214, -60) = function.nw;
  drawboxed(function,compiled_function,generic_function,standard_generic_function);
  
  boxjoin(a.ne + (10, 0) = b.nw);
  boxit.pathname(btex \kwd*{PATHNAME} etex);
  boxit.logical_pathname(btex \kwd*{LOGICAL-PATHNAME} etex);
  logical_pathname.ne = (558,0);
  drawboxed(pathname,logical_pathname);

  boxjoin()
  boxit.stream(btex \kwd*{STREAM} etex);
  logical_pathname.sw + (0, -3) = stream.ne;
  drawboxed(stream);


  boxjoin(a.se + (0, -3) = b.ne);
  boxit.float(btex \kwd*{FLOAT} \OP{\VAR{lower-limit}\DF{\kwd{\A}} \Op{\VAR{upper-limit}\DF{\kwd{\A}}}} etex);
  boxit.short_float(btex \kwd*{SHORT-FLOAT} \OP{\VAR{lower-limit}\DF{\kwd{\A}} \Op{\VAR{upper-limit}\DF{\kwd{\A}}}} etex);
  boxit.single_float(btex \kwd*{SINGLE-FLOAT} \OP{\VAR{lower-limit}\DF{\kwd{\A}} \Op{\VAR{upper-limit}\DF{\kwd{\A}}}} etex);
  boxit.double_float(btex \kwd*{DOUBLE-FLOAT} \OP{\VAR{lower-limit}\DF{\kwd{\A}} \Op{\VAR{upper-limit}\DF{\kwd{\A}}}} etex);
  boxit.long_float(btex \kwd*{LONG-FLOAT} \OP{\VAR{lower-limit}\DF{\kwd{\A}} \Op{\VAR{upper-limit}\DF{\kwd{\A}}}} etex);

  boxjoin(a.sw + (0, -3) = b.nw);
  boxit.number(btex \kwd*{NUMBER} etex);
  boxit.complex(btex \kwd*{COMPLEX} \Op{\VAR{type}\DF{\kwd{\A}}} etex);
  boxit.real(btex \kwd*{REAL} \OP{\VAR{lower-limit}\DF{\kwd{\A}} \Op{\VAR{upper-limit}\DF{\kwd{\A}}}} etex);
  
  long_float.se = (542, -242);
  real.s + (0,-3) = float.n;
  
  drawboxed(float,short_float,single_float,double_float,long_float);
  drawboxed(number,complex,real);

  boxjoin(a.sw + (0, -3) = b.nw);
  boxit.rational(btex \kwd*{RATIONAL} \OP{\VAR{lower-limit}\DF{\kwd{\A}} \Op{\VAR{upper-limit}\DF{\kwd{\A}}}} etex);
  boxit.integer(btex \kwd*{INTEGER} \OP{\VAR{lower-limit}\DF{\kwd{\A}} \Op{\VAR{upper-limit}\DF{\kwd{\A}}}} etex);
  boxit.ratio(btex \kwd*{RATIO} etex);
  standard_generic_function.se+(-7,-11) = rational.ne;
  drawboxed(rational,integer,ratio);

  boxjoin(a.e + (3, 0) = b.w);
  boxit.signed_byte(btex \kwd*{SIGNED-BYTE} \Op{\VAR{size}\DF{\kwd{\A}}} etex);
  boxit.fixnum(btex \kwd*{FIXNUM} etex);
  boxit.bignum(btex \kwd*{BIGNUM} etex);
  ratio.sw+(-10,-3) = signed_byte.nw;
  drawboxed(signed_byte,fixnum,bignum);

  boxjoin(a.se + (0,-3) = b.ne);
  boxit.unsigned_byte(btex \kwd*{UNSIGNED-BYTE} \Op{\VAR{size}\DF{\kwd{\A}}} etex);
  boxit.bit(btex \kwd*{BIT} etex);
  signed_byte.se+(30,-3) = unsigned_byte.n;
  drawboxed(unsigned_byte,bit);
  
  boxjoin(a.se + (0,-3) = b.ne);
  boxit.sequence(btex \kwd*{SEQUENCE} etex);
  boxit.list(btex \kwd*{LIST} etex);
  boxit.cons(btex \kwd*{CONS} \OP{\VAR{car-type}\DF{\kwd{\A}} \Op{\VAR{cdr-type}\DF{\kwd{\A}}}} etex);
  sequence.nw = (200,-18);
  drawboxed(sequence,list,cons);

  boxjoin(a.sw + (0, -3) = b.nw);
  boxit.symbol(btex \kwd*{SYMBOL} etex);
  boxit.null(btex \kwd*{NULL} etex);
  cons.nw + (-8,7) = symbol.se;
  drawboxed(symbol,null);
  
  boxjoin(a.sw + (0, -3) = b.nw);
  boxit.array(btex \kwd*{ARRAY} \OP{\VAR{type}\DF{\kwd{\A}} \Op{\VAR{rank}\DF{\kwd{\A}}\XOR(\OPn{\VAR{dimension}})}} etex);
  boxit.simple_array(btex \kwd*{SIMPLE-ARRAY} \OP{\VAR{type}\DF{\kwd{\A}} \Op{\VAR{rank}\DF{\kwd{\A}}\XOR(\OPn{\VAR{dimension}})}} etex);
  boxit.vector(btex \kwd*{VECTOR} \OP{\VAR{type}\DF{\kwd{\A}} \Op{\VAR{size}\DF{\kwd{\A}}}} etex);
  boxit.string_(btex \kwd*{STRING} \Op{\VAR{size}\DF{\kwd{\A}}} etex);
  boxit.simple_string(btex \kwd*{SIMPLE-STRING} \Op{\VAR{size}\DF{\kwd{\A}}} etex);
  boxit.base_string(btex \kwd*{BASE-STRING} \Op{\VAR{size}\DF{\kwd{\A}}} etex);
  boxit.simple_base_string(btex \kwd*{SIMPLE-BASE-STRING} \Op{\VAR{size}\DF{\kwd{\A}}} etex);
  boxit.simple_vector(btex \kwd*{SIMPLE-VECTOR} \Op{\VAR{size}\DF{\kwd{\A}}} etex);
  boxit.bit_vector(btex \kwd*{BIT-VECTOR} \Op{\VAR{size}\DF{\kwd{\A}}} etex);
  cons.se + (5, -21) = array.ne;
  drawboxed(array,vector,simple_array,string_,simple_string,base_string,simple_base_string,simple_vector,bit_vector);
  
  boxjoin();
  boxit.simple_bit_vector(btex \kwd*{SIMPLE-BIT-VECTOR} \Op{\VAR{size}\DF{\kwd{\A}}} etex);
  bit_vector.se + (15, -3) = simple_bit_vector.sw;
  drawboxed(simple_bit_vector);
  
  boxjoin(a.se + (0, -3) = b.ne);
  boxit.file_stream(btex \kwd*{FILE-STREAM} etex);
  boxit.two_way_stream(btex \kwd*{TWO-WAY-STREAM} etex);
  boxit.synonym_stream(btex \kwd*{SYNONYM-STREAM} etex);
  boxit.string_stream(btex \kwd*{STRING-STREAM} etex);
  boxit.concatenated_stream(btex \kwd*{CONCATENATED-STREAM} etex);
  boxit.broadcast_stream(btex \kwd*{BROADCAST-STREAM} etex);
  boxit.echo_stream(btex \kwd*{ECHO-STREAM} etex);
  logical_pathname.se + (0, -5) = file_stream.ne;
  drawboxed(file_stream,two_way_stream,synonym_stream,string_stream,concatenated_stream,broadcast_stream,echo_stream);
  
  boxjoin(a.se + (8, 3) = b.nw);
  boxit.keyword(btex \kwd*{KEYWORD} etex);
  boxit.boolean_(btex \kwd*{BOOLEAN} etex);
  null.sw + (0,-3) = keyword.nw;
  drawboxed(keyword,boolean_);

  boxjoin(a.se + (0, -3) = b.ne);
  boxit.extended_char(btex \kwd*{EXTENDED-CHAR} etex);
  boxit.base_char(btex \kwd*{BASE-CHAR} etex);
  character.e + (10,-10) = extended_char.w;
  drawboxed(extended_char,base_char);
  
  boxjoin();
  boxit.standard_char(btex \kwd*{STANDARD-CHAR} etex);
  base_char.sw + (0,-3) = standard_char.nw;
  drawboxed(standard_char);
  
  drawarrow t.e{right} ... symbol.n{down};
  drawarrow t.e{right} .. {right}t.e+(40,0) .. sequence.w{right};
  drawarrow t.e{right} .. {right}t.e+(150,0) ... t.e+(250,-13) ... function.n{down};
  drawarrow t.e{right} .. {right}t.e+(150,0) .. standard_char.sw+(-3,-3) .. number.n{down};
  drawarrow t.e{right} .. {right}t.e+(150,0) .. character.w+(-60,8) .. character.w{right};
  drawarrow t.e{right} .. {right}t.e+(300,0) .. stream.w{right};
  drawarrow t.e{right} .. {right}t.e+(300,0) .. pathname.w{right};

  drawarrow t.s{down} ... atom.w{right};
  drawarrow t.s{down} ... package.w{right};
  drawarrow t.s{down} ... readtable.w{right};
  
  drawarrow t.s{down} ... random_state.sw+(6,-5){right} ... array.w+(0,3){right};
  
  drawarrow t.s{down} ... hash_table.w{right};
  drawarrow t.s{down} ... structure_object.w{right};
  drawarrow t.s{down} ... random_state.w{right};
  drawarrow t.s{down} ... restart.w{right};
  drawarrow t.s{down} ... standard_object.w{right};
  drawarrow t.s{down} ... standard_class.w+(-15,-15) .. method.w{right};

  drawarrow standard_object.s+(3,0){down} .. class.e{left};
  drawarrow class.w{left} ... built_in_class.w+(-9,0) ... standard_class.w{right};
  drawarrow class.w{left} ... class.sw+(-6,0) ... built_in_class.w{right};
  drawarrow class.w{left} ... standard_class.sw+(-9,0) ... structure_class.w{right};
  drawarrow t.s{down} .. method_combination.nw+(5,0){down};
  
  drawarrow standard_object.s+(3,0){down} .. built_in_class.ne+(2,2)  ... standard_class.e+(7,0) ... structure_class.se+(2,-2) .. method.e{down} .. standard_method.ne+(5,2) .. standard_method.e{left} dashed evenly;
  halfdisc (method.e);

  drawarrow vector.w{left} ... vector.sw+(-6,0) ... string_.w+(0,3){right};
  drawarrow string_.w+(0,-3){left} ... simple_string.w+(-8,0) ... base_string.w{right};
  drawarrow vector.w{left} ... base_string.w+(-12,0) ... bit_vector.w{right};
  drawarrow sequence.e{right} .. list.e{left};
  drawarrow list.w{left} ... cons.n{down};

  drawarrow symbol.w{left} ... null.w+(-8,0) ... keyword.w{right};
  drawarrow symbol.w{left} ... null.sw+(-10,0) ... keyword.sw+(-2,-2) .. boolean_.w{right};

  drawarrow list.w{left} .. tension 2.5 .. symbol.ne+(5,2) .. symbol.e{down} .. symbol.se+(2,-1) .. null.e{left} dashed evenly;
  halfdisc(symbol.e);

  
  drawarrow sequence.e{right} .. array.ne+(2,1) .. array.e{down} .. simple_array.ne+(3,7){dir -60}.. simple_array.se+(10,-5) .. vector.e+(0,5){left} dashed evenly;
  drawarrow sequence.e{right} .. array.ne+(2,1) .. array.e{down} .. simple_array.ne+(3,7){dir -60} .. simple_array.ne+(2,1) .. simple_array.e{down} .. simple_array.se+(2,-1) .. tension 2 .. vector.e + (0, -3){down}  .. vector.se + (2,-1){down} .. simple_base_string.se+(5,0) .. simple_vector.e{left} dashed evenly;
  drawarrow sequence.e{right} .. array.ne+(2,1) .. array.e{down} .. simple_array.ne+(3,7){dir -60} .. simple_array.ne+(2,1) .. simple_array.e{down} .. simple_array.se+(2,-1) .. tension 2 .. vector.e + (0, -3){down}  .. vector.se + (2,-1){down} .. simple_base_string.se+(10,0) .. simple_vector.se+(0, -3) .. bit_vector.e{down} ... simple_bit_vector.w{right} dashed evenly;
  drawarrow sequence.e{right} .. array.ne+(2,1) .. array.e{down} .. simple_array.ne+(3,7){dir -60} .. simple_array.ne+(2,1) .. simple_array.e{down} .. simple_array.se+(2,-1) .. tension 2 .. vector.e + (0, -3){down}  .. vector.se + (2,-1){down} .. string_.e{down} .. simple_string.ne+(2,1){down}  .. simple_string.e{down}  .. simple_string.se+(2,1){down} .. base_string.e+(0,3){down} .. simple_base_string.ne+(-10,0){down} dashed evenly;
  halfdisc(array.e);
  halfdisc(simple_array.e);
  halfdisc(vector.e+(0,-3));
  halfdisc(string_.e);
  halfdisc(simple_string.e);
  halfdisc(base_string.e+(0,3));
  halfdisc(bit_vector.e);

  drawarrow array.w+(0,-3){left} ... array.sw+(-7,-3).. simple_array.w{right};

  drawarrow character.s{down} ... base_char.w{right};
  drawarrow character.s{down} .. extended_char.w{right};
  drawarrow base_char.e{right} .. standard_char.ne+(-7,0){down};

  drawarrow function.s+(-20,0){down} .. compiled_function.w{right};
  drawarrow function.s+(-20,0){down} .. generic_function.w+(0,3){right};
  drawarrow generic_function.w+(0,-3){left} .. standard_generic_function.nw+(20,0){down};

  drawarrow number.w{left} ... number.sw+(-6,0) ... complex.w{right};
  drawarrow number.w{left} ... complex.w+(-10,0) ... real.w+(0,3){right};

  drawarrow real.w+(0,-3){left} .. rational.e{left};
  drawarrow real.w+(0,-3){left} .. float.w{right};

  drawarrow float.e{right} ... short_float.ne+(6,-3) ... short_float.e{left};
  drawarrow float.e{right} ... short_float.e+(10,0) ... single_float.e{left};
  drawarrow float.e{right} ... short_float.se+(13,-3) ... double_float.e{left};
  drawarrow float.e{right} ... single_float.e+(16,0) ... long_float.e{left};

  drawarrow rational.w{left} ... rational.sw+(-7,0) ... integer.w{right};
  drawarrow rational.w{left} ... integer.w+(-10,0) ... ratio.w{right};

  drawarrow integer.s+(12,0){down} .. signed_byte.ne+(-5,0){down};
  drawarrow integer.s+(12,0){down} .. fixnum.n{down};
  drawarrow integer.s+(12,0){down} .. bignum.nw+(5,0){down};

  drawarrow signed_byte.s{down} ... unsigned_byte.w{right};
  drawarrow unsigned_byte.s{down} ... bit.w{right};

  drawarrow stream.s{down} .. two_way_stream.nw+(-2,2) .. file_stream.w{right};
  drawarrow stream.s{down} .. two_way_stream.w{right};
  drawarrow stream.s{down} ... synonym_stream.w{right};
  drawarrow stream.s{down} ... string_stream.w{right};
  drawarrow stream.s{down} .. stream.s+(0,-12){down} .. concatenated_stream.nw+(10,0){down};
  drawarrow stream.s{down} .. broadcast_stream.w{right};
  drawarrow stream.s{down} .. concatenated_stream.sw+(-6,-5) .. echo_stream.w{right};

  drawarrow pathname.e{right} .. logical_pathname.w{right};
  
endfig;

verbatimtex
\end{document}
etex
end
