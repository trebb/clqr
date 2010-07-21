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

defaultdx := 2;
defaultdy := 2;

beginfig(1);
  pickup pencircle scaled .3;

  boxit.t(btex \T etex);
  t.nw = (0, 0);
  drawboxed(t);

  boxjoin(a.sw + (0, -3) = b.nw);
  boxit.atom(btex \kwd*{ATOM} etex);
  boxit.package(btex \kwd*{PACKAGE} etex);
  boxit.readtable(btex \kwd*{READTABLE} etex);
  boxit.symbol(btex \kwd*{SYMBOL} etex);
  boxit.keyword(btex \kwd*{KEYWORD} etex);
  boxit.hash_table(btex \kwd*{HASH-TABLE} etex);
  boxit.random_state(btex \kwd*{RANDOM-STATE} etex);
  t.se + (12, 0) = atom.nw;
  drawboxed(atom,symbol,package,readtable,keyword,hash_table,random_state);
  
  boxjoin()
  boxit.null(btex \kwd*{NULL} etex);
  symbol.e+(15,0) = null.w;
  drawboxed(null);
  
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
  atom.ne + (30, -15) = character.nw;
  drawboxed(character);
  
  boxjoin(a.se + (0, -3) = b.ne);
  boxit.function(btex \kwd*{FUNCTION} \OP{\VAR{arg-types} \Op{\VAR{value-types}}} etex);
  boxit.compiled_function(btex \kwd*{COMPILED-FUNCTION} etex);
  boxit.generic_function(btex \kwd*{GENERIC-FUNCTION} etex);
  boxit.standard_generic_function(btex \kwd*{STANDARD-GENERIC-FUNCTION} etex);
  function.nw = (210, -10);
  drawboxed(function,compiled_function,generic_function,standard_generic_function);
  
  boxjoin(a.sw + (0,-3) = b.nw);
  boxit.pathname(btex \kwd*{PATHNAME} etex);
  boxit.logical_pathname(btex \kwd*{LOGICAL-PATHNAME} etex);
  pathname.nw = (345,-20);
  drawboxed(pathname,logical_pathname);

  boxjoin(a.se + (0, -3) = b.ne);
  boxit.number(btex \kwd*{NUMBER} etex);
  boxit.complex(btex \kwd*{COMPLEX} \Op{\VAR{type}\DF{\kwd{\A}}} etex);
  boxit.real(btex \kwd*{REAL} \OP{\VAR{lower-limit}\DF{\kwd{\A}} \Op{\VAR{upper-limit}\DF{\kwd{\A}}}} etex);
  number.nw = (420,-44);
  drawboxed(number,complex,real);
  

  boxjoin(a.se + (0, -3) = b.ne);
  boxit.float(btex \kwd*{FLOAT} \OP{\VAR{lower-limit}\DF{\kwd{\A}} \Op{\VAR{upper-limit}\DF{\kwd{\A}}}} etex);
  boxit.short_float(btex \kwd*{SHORT-FLOAT} \OP{\VAR{lower-limit}\DF{\kwd{\A}} \Op{\VAR{upper-limit}\DF{\kwd{\A}}}} etex);
  boxit.single_float(btex \kwd*{SINGLE-FLOAT} \OP{\VAR{lower-limit}\DF{\kwd{\A}} \Op{\VAR{upper-limit}\DF{\kwd{\A}}}} etex);
  boxit.double_float(btex \kwd*{DOUBLE-FLOAT} \OP{\VAR{lower-limit}\DF{\kwd{\A}} \Op{\VAR{upper-limit}\DF{\kwd{\A}}}} etex);
  boxit.long_float(btex \kwd*{LONG-FLOAT} \OP{\VAR{lower-limit}\DF{\kwd{\A}} \Op{\VAR{upper-limit}\DF{\kwd{\A}}}} etex);
  real.s + (0,-3) = float.n;
  boxit.rational(btex \kwd*{RATIONAL} \OP{\VAR{lower-limit}\DF{\kwd{\A}} \Op{\VAR{upper-limit}\DF{\kwd{\A}}}} etex);
  boxit.integer(btex \kwd*{INTEGER} \OP{\VAR{lower-limit}\DF{\kwd{\A}} \Op{\VAR{upper-limit}\DF{\kwd{\A}}}} etex);
  drawboxed(float,short_float,single_float,double_float,long_float,rational,integer);
  
  boxjoin();
  boxit.ratio(btex \kwd*{RATIO} etex);
  integer.sw + (0,-3) = ratio.nw;
  drawboxed(ratio);

  boxjoin(a.e + (3, 0) = b.w);
  boxit.signed_byte(btex \kwd*{SIGNED-BYTE} \Op{\VAR{size}\DF{\kwd{\A}}} etex);
  boxit.fixnum(btex \kwd*{FIXNUM} etex);
  boxit.bignum(btex \kwd*{BIGNUM} etex);
  ratio.sw+(-10,-3) = signed_byte.nw;
  drawboxed(signed_byte,fixnum,bignum);

  boxjoin(a.e + (10,0) = b.w);
  boxit.unsigned_byte(btex \kwd*{UNSIGNED-BYTE} \Op{\VAR{size}\DF{\kwd{\A}}} etex);
  boxit.bit(btex \kwd*{BIT} etex);
  signed_byte.sw+(30,-3) = unsigned_byte.nw;
  drawboxed(unsigned_byte,bit);
  
  boxjoin(a.se + (10,0) = b.sw);
  boxit.list(btex \kwd*{LIST} etex);
  boxit.sequence(btex \kwd*{SEQUENCE} etex);
  list.sw = (165,-70);
  drawboxed(list,sequence);
  
  boxjoin();
  boxit.cons(btex \kwd*{CONS} \OP{\VAR{car-type}\DF{\kwd{\A}} \Op{\VAR{cdr-type}\DF{\kwd{\A}}}} etex);
  sequence.se+(0,-3) = cons.ne;
  drawboxed(cons);
  
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
  boxit.simple_bit_vector(btex \kwd*{SIMPLE-BIT-VECTOR} \Op{\VAR{size}\DF{\kwd{\A}}} etex);
  cons.se + (5, -3) = array.ne;
  drawboxed(array,vector,simple_array,string_,simple_string,base_string,simple_base_string,simple_vector,bit_vector,simple_bit_vector);
  
  boxjoin(a.se + (0, -3) = b.ne);

  boxit.stream(btex \kwd*{STREAM} etex);
  boxit.file_stream(btex \kwd*{FILE-STREAM} etex);
  boxit.two_way_stream(btex \kwd*{TWO-WAY-STREAM} etex);
  boxit.synonym_stream(btex \kwd*{SYNONYM-STREAM} etex);
  boxit.string_stream(btex \kwd*{STRING-STREAM} etex);
  boxit.concatenated_stream(btex \kwd*{CONCATENATED-STREAM} etex);
  boxit.broadcast_stream(btex \kwd*{BROADCAST-STREAM} etex);
  boxit.echo_stream(btex \kwd*{ECHO-STREAM} etex);
  stream.ne = (285,-144);
  drawboxed(stream,file_stream,two_way_stream,synonym_stream,string_stream,concatenated_stream,broadcast_stream,echo_stream);
  
  boxjoin();
  boxit.boolean_(btex \kwd*{BOOLEAN} etex);
  keyword.se + (8,3) = boolean_.sw;
  drawboxed(boolean_);

  boxjoin(a.se + (0, -3) = b.ne);
  boxit.extended_char(btex \kwd*{EXTENDED-CHAR} etex);
  boxit.base_char(btex \kwd*{BASE-CHAR} etex);
  character.e + (10,0) = extended_char.w;
  drawboxed(extended_char,base_char);
  
  boxjoin();
  boxit.standard_char(btex \kwd*{STANDARD-CHAR} etex);
  base_char.sw + (0,-3) = standard_char.nw;
  drawboxed(standard_char);
  
  
%% Conditions %%

  boxjoin(a.sw + (0,-3) = b.nw);
  boxit.condition(btex \kwd*{CONDITION} etex);
  boxit.serious_condition(btex \kwd*{SERIOUS-CONDITION} etex);
  t.e + (400,0) = condition.w;
  drawboxed(condition,serious_condition);

  boxjoin(a.sw + (0,-3) = b.nw);
  boxit.storage_condition(btex \kwd*{STORAGE-CONDITION} etex);
  boxit.simple_type_error(btex \kwd*{SIMPLE-TYPE-ERROR} etex);
  boxit.type_error(btex \kwd*{TYPE-ERROR} etex);
  boxit.error(btex \kwd*{ERROR}\\ etex);
  boxit.program_error(btex \kwd*{PROGRAM-ERROR} etex);
  boxit.control_error(btex \kwd*{CONTROL-ERROR} etex);
  boxit.package_error(btex \kwd*{PACKAGE-ERROR} etex);
  boxit.file_error(btex \kwd*{FILE-ERROR} etex);
  boxit.stream_error(btex \kwd*{STREAM-ERROR} etex);
  boxit.parse_error(btex \kwd*{PARSE-ERROR} etex);
  boxit.print_not_readable(btex \kwd*{PRINT-NOT-READABLE} etex);
  boxit.cell_error(btex \kwd*{CELL-ERROR} etex);
  boxit.arithmetic_error(btex \kwd*{ARITHMETIC-ERROR} etex);
  serious_condition.e + (10,0) = storage_condition.w;
  drawboxed(storage_condition,simple_type_error,type_error,error,program_error,control_error,package_error,file_error,stream_error,parse_error,print_not_readable,cell_error,arithmetic_error);

  boxjoin();
  boxit.simple_condition(btex \kwd*{SIMPLE-CONDITION} etex);
  type_error.se+(15,0) = simple_condition.w;
  drawboxed(simple_condition);

  boxjoin();
  boxit.warning(btex \kwd*{WARNING} etex);
  condition.e + (125,0) = warning.w;
  drawboxed(warning);

  boxjoin(a.sw + (0,-3) = b.nw);
  boxit.style_warning(btex \kwd*{STYLE-WARNING} etex);
  warning.sw + (0,-3) = style_warning.nw;
  drawboxed(style_warning);

  boxjoin(a.sw + (0,-3) = b.nw);
  boxit.simple_error(btex \kwd*{SIMPLE-ERROR} etex);
  simple_condition.sw + (10, -10) = simple_error.nw;
  drawboxed(simple_error);

  boxjoin(a.sw + (0,-3) = b.nw);
  boxit.simple_warning(btex \kwd*{SIMPLE-WARNING} etex);
  simple_error.s + (0,-3) = simple_warning.n;
  drawboxed(simple_warning);

  boxjoin(a.sw + (0,-3) = b.nw);
  boxit.unbound_variable(btex  \kwd*{UNBOUND-VARIABLE} etex);
  boxit.unbound_slot(btex  \kwd*{UNBOUND-SLOT} etex);
  boxit.undefined_function(btex  \kwd*{UNDEFINED-FUNCTION} etex);
  cell_error.e + (30,0) = unbound_variable.w;
  drawboxed(unbound_variable,unbound_slot,undefined_function);                
  
  boxjoin(a.sw + (0,-3) = b.nw);
  boxit.end_of_file(btex  \kwd*{END-OF-FILE} etex);
  boxit.reader_error(btex \kwd*{READER-ERROR} etex);
  stream_error.e + (30,0) = end_of_file.w;
  drawboxed(end_of_file,reader_error);

  boxjoin(a.sw + (0,-3) = b.nw);
  boxit.division_by_zero(btex  \kwd*{DIVISION-BY-ZERO} etex);
  boxit.floating_point_inexact(btex  \kwd*{FLOATING-POINT-INEXACT} etex);
  boxit.floating_point_overflow(btex  \kwd*{FLOATING-POINT-OVERFLOW} etex);
  boxit.floating_point_underflow(btex  \kwd*{FLOATING-POINT-UNDERFLOW} etex);
  boxit.floating_point_invalid_operation(btex  \kwd*{FLOATING-POINT-INVALID-OPERATION} etex);
  arithmetic_error.sw + (0,-3) = division_by_zero.nw;
  drawboxed(division_by_zero,floating_point_inexact,floating_point_overflow,floating_point_underflow,floating_point_invalid_operation);







  drawarrow t.s{down} ... symbol.w{right};
  drawarrow t.e{right} .. {right}t.e+(40,0) .. sequence.n{down};
  drawarrow t.e{right} .. {right}t.e+(150,0) ... function.n{down};
  drawarrow t.e{right} .. {right}t.e+(150,0) ... number.n{down};
  drawarrow t.e{right} ... character.n{down};
  drawarrow t.e{right} .. stream.n{down};
  drawarrow t.e{right} ... pathname.n{down};

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
  drawarrow t.e{right} .. condition.w{right};
  

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
  drawarrow sequence.w{left} .. list.e{left};
  drawarrow list.w{left} ... cons.nw+(10,0){down};

  drawarrow symbol.w{left} ... keyword.w{right};
  drawarrow symbol.w{left} ... keyword.sw+(-2,-2) .. boolean_.w{right};

  drawarrow list.w{left} .. tension 2.5 .. symbol.ne+(5,2) .. symbol.e{down} .. null.w{right} dashed evenly;
  halfdisc(symbol.e);

  
  drawarrow sequence.e{right} .. array.ne+(2,1) .. array.e{down} .. simple_array.ne+(3,7){dir -60}.. simple_array.se+(10,-5) .. vector.e+(0,5){left} dashed evenly;
  drawarrow sequence.e{right} .. array.ne+(2,1) .. array.e{down} .. simple_array.ne+(3,7){dir -60} .. simple_array.ne+(2,1) .. simple_array.e{down} .. simple_array.se+(2,-1) .. tension 2 .. vector.e + (0, -3){down}  .. vector.se + (2,-1){down} .. simple_base_string.se+(5,0) .. simple_vector.e{left} dashed evenly;
  drawarrow sequence.e{right} .. array.ne+(2,1) .. array.e{down} .. simple_array.ne+(3,7){dir -60} .. simple_array.ne+(2,1) .. simple_array.e{down} .. simple_array.se+(2,-1) .. tension 2 .. vector.e + (0, -3){down}  .. vector.se + (2,-1){down} .. simple_base_string.se+(10,0) .. simple_vector.se+(0, -3) .. bit_vector.e{down} ... simple_bit_vector.ne+(-10,0){down} dashed evenly;
  drawarrow sequence.e{right} .. array.ne+(2,1) .. array.e{down} .. simple_array.ne+(3,7){dir -60} .. simple_array.ne+(2,1) .. simple_array.e{down} .. simple_array.se+(2,-1) .. tension 2 .. vector.e + (0, -3){down}  .. vector.se + (2,-1){down} .. string_.e{down} .. simple_string.ne+(2,1){down}  .. simple_string.e{down}  .. simple_string.se+(2,1){down} .. base_string.e+(0,3){down} .. simple_base_string.ne+(-10,0){down} dashed evenly;
  halfdisc(array.e);
  halfdisc(simple_array.e);
  halfdisc(vector.e+(0,-3));
  halfdisc(string_.e);
  halfdisc(simple_string.e);
  halfdisc(base_string.e+(0,3));
  halfdisc(bit_vector.e);

  drawarrow array.w+(0,-3){left} ... array.sw+(-7,-3).. simple_array.w{right};

  drawarrow character.e{right} ... base_char.w{right};
  drawarrow character.e{right} .. extended_char.w{right};
  drawarrow base_char.e{right} .. standard_char.ne+(-7,0){down};

  drawarrow function.s+(-20,0){down} .. compiled_function.w{right};
  drawarrow function.s+(-20,0){down} .. generic_function.w+(0,3){right};
  drawarrow generic_function.w+(0,-3){left} .. standard_generic_function.nw+(20,0){down};

  drawarrow number.w{left} ... complex.w{right};
  drawarrow number.w{left} ... real.w+(0,3){right};

  drawarrow real.w+(0,-3){left} .. rational.w{right};
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

  drawarrow signed_byte.sw+(10,0){down} ... unsigned_byte.w{right};
  drawarrow unsigned_byte.e{right} ... bit.w{right};

  drawarrow stream.w{left} .. two_way_stream.nw+(-2,2) .. file_stream.w{right};
  drawarrow stream.w{left} .. two_way_stream.w{right};
  drawarrow stream.w{left} ... synonym_stream.w{right};
  drawarrow stream.w{left} ... string_stream.w{right};
  drawarrow stream.w{left} .. concatenated_stream.nw+(10,0){down};
  drawarrow stream.w{left} .. broadcast_stream.w{right};
  drawarrow stream.w{left} .. echo_stream.w{right};

  drawarrow pathname.e{right} .. logical_pathname.ne+(-10,0){down};
  
  drawarrow condition.e{right} .. warning.w{right};
  drawarrow condition.e{right} .. simple_condition.n{down};
  drawarrow condition.w{left} .. serious_condition.w{right};

  drawarrow warning.e{right} .. style_warning.ne+(-10,0){down};

  drawarrow serious_condition.e{right} .. storage_condition.w{right};
  drawarrow serious_condition.e{right} .. error.w{right};

  drawarrow error.w{left} .. parse_error.w{right};
  drawarrow error.w{left} .. program_error.w{right};
  drawarrow error.w{left} .. control_error.w{right};
  drawarrow error.w{left} .. type_error.w{right};
  drawarrow error.w{left} .. cell_error.w{right};
  drawarrow error.w{left} .. stream_error.w{right};
  drawarrow error.w{left} .. package_error.w{right};
  drawarrow error.w{left} .. file_error.w{right};
  drawarrow error.w{left} .. print_not_readable.w{right};
  drawarrow error.w{left} .. arithmetic_error.w{right};

  drawarrow stream_error.e{right} .. end_of_file.w{right};

  drawarrow cell_error.e{right} .. unbound_variable.w{right};
  drawarrow cell_error.e{right} .. unbound_slot.w{right};
  drawarrow cell_error.e{right} .. undefined_function.w{right};

  drawarrow arithmetic_error.w{left} .. division_by_zero.w{right};
  drawarrow arithmetic_error.w{left} .. floating_point_inexact.w{right};
  drawarrow arithmetic_error.w{left} .. floating_point_invalid_operation.w{right};
  drawarrow arithmetic_error.w{left} .. floating_point_overflow.w{right};
  drawarrow arithmetic_error.w{left} .. floating_point_underflow.w{right};

  drawarrow stream_error.e{right} .. parse_error.e{down} .. reader_error.w{right} dashed evenly;

  drawarrow warning.e{right} .. simple_condition.e{down} .. simple_warning.e{left} dashed evenly;
  drawarrow error.e{right} .. simple_condition.s{right} .. simple_error.e{left} dashed evenly;
  drawarrow type_error.e{right} .. simple_condition.nw+(5,0){right} .. simple_type_error.e{left} dashed evenly;
  
endfig;

verbatimtex
\end{document}
etex
end
