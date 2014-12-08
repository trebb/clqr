% Copyright (C) 2010, 2014 Bert Burgemeister
%
% Permission is granted to copy, distribute and/or modify this
% document under the terms of the GNU Free Documentation License,
% Version 1.2; with no Invariant Sections, no Front-Cover Texts and
% no Back-Cover Texts. For details see file COPYING.
%

% prologues := 3 makes clqr-types-and-classes.1 viewable but uses the
% wrong font for \A; use the following only when debugging.

%prologues := 3;

input boxes;

verbatimtex
\documentclass[8pt,pagesize,twoside,footexclude,headexclude]{scrartcl}
\input{clqr.packages}
\input{clqr.macros}
\begin{document}
etex

def drawboxed_type (text items ) =
  begingroup
    pickup pencircle scaled .2;
    drawboxed(items);
  endgroup
enddef;

def drawboxed_system_class (text items ) =
  begingroup
    pickup pencircle scaled 1;
    drawboxed(items);
  endgroup
enddef;

def drawboxed_condition_type (text items ) =
  begingroup
    pickup pencircle xscaled 1.5 yscaled .2;
    drawboxed(items);
  endgroup
enddef;

def drawboxed_class (text items ) =
  begingroup
    pickup pencircle xscaled .2 yscaled 1.5;
    drawboxed(items);
  endgroup
enddef;

def halfdisc_e(expr point) =
  fill halfcircle scaled 4 rotated -90 shifted point --cycle
enddef;

def halfdisc_n(expr point) =
  fill halfcircle scaled 4 shifted point --cycle
enddef;

def halfdisc_s(expr point) =
  fill halfcircle scaled 4 rotated 180 shifted point --cycle
enddef;

defaultdx := 2;
defaultdy := 2;

% Main Figure:

beginfig(1);

  boxit.t(btex \T etex);
  t.nw = (0,0);
  drawboxed_system_class(t);

  boxjoin(a.sw+(0,-3) = b.nw);
  boxit.atom(btex \kwd{ATOM} etex);
  boxit.readtable(btex \kwd{READTABLE} etex);
  boxit.package(btex \kwd{PACKAGE} etex);
  boxit.symbol(btex \kwd{SYMBOL} etex);
  t.se+(12,0) = atom.nw;
  drawboxed_type(atom);
  drawboxed_system_class(readtable,package,symbol);
  
  boxjoin(a.sw+(0,-3) = b.nw);
  boxit.keyword(btex \kwd{KEYWORD} etex);
  boxit.boolean_(btex \kwd{BOOLEAN} etex);
  symbol.sw+(35,-3) = keyword.nw;
  drawboxed_type(keyword,boolean_);

  boxjoin(a.sw+(0,-3) = b.nw);
  boxit.restart(btex \kwd{RESTART} etex);
  boxit.random_state(btex \kwd{RANDOM-STATE} etex);
  boxit.hash_table(btex \kwd{HASH-TABLE} etex);
  boxit.structure_object(btex \kwd{STRUCTURE-OBJECT} etex);
  boxit.standard_object(btex \kwd{STANDARD-OBJECT} etex);
  boolean_.sw+(-35,-5) = restart.nw;
  drawboxed_system_class(restart,random_state,hash_table);
  drawboxed_class(structure_object,standard_object);
  
  boxjoin()
  boxit.null(btex \kwd{NULL} etex);
  symbol.se+(15,0) = null.sw;
  drawboxed_system_class(null);

  boxjoin();
  boxit.class(btex \kwd{CLASS} etex);
  standard_object.sw+(-10,-3) = class.nw ;
  drawboxed_system_class(class);

  boxjoin(a.sw+(0,-3) = b.nw);
  boxit.built_in_class(btex \kwd{BUILT-IN-CLASS} etex);
  boxit.standard_class(btex \kwd{STANDARD-CLASS} etex);
  boxit.structure_class(btex \kwd{STRUCTURE-CLASS} etex);
  class.sw+(15,-3) = built_in_class.nw;
  drawboxed_system_class(built_in_class,standard_class,structure_class);
  
  boxjoin(a.sw+(0,-3) = b.nw);
  boxit.method(btex \kwd{METHOD} etex);
  boxit.standard_method(btex \kwd{STANDARD-METHOD} etex);
  structure_class.sw+(-5,-6) = method.nw;
  drawboxed_system_class(method,standard_method);
  
  boxjoin();
  boxit.method_combination(btex \kwd{METHOD-COMBINATION} etex);
  method_combination.nw = (xpart t.w,ypart standard_method.s - 3);
  drawboxed_system_class(method_combination);
  
  boxjoin();
  boxit.character(btex \kwd{CHARACTER} etex);
  atom.ne+(23,-10) = character.nw;
  drawboxed_system_class(character);
  
  boxjoin()
  boxit.function(btex \kwd{FUNCTION} \OP{\VAR{arg-types} \Op{\VAR{value-types}}} etex);
  function.nw = (205,-10);
  drawboxed_system_class(function);
  
  boxjoin(a.sw+(0,-3) = b.nw);
  boxit.compiled_function(btex \kwd{COMPILED-FUNCTION} etex);
  boxit.generic_function(btex \kwd{GENERIC-FUNCTION} etex);
  boxit.standard_generic_function(btex \kwd{STANDARD-GENERIC-FUNCTION} etex);
  function.se+(0,-3) = compiled_function.ne;
  drawboxed_type(compiled_function);
  drawboxed_system_class(generic_function,standard_generic_function);
  
  boxjoin(a.sw+(0,-3) = b.nw);
  boxit.pathname(btex \kwd{PATHNAME} etex);
  boxit.logical_pathname(btex \kwd{LOGICAL-PATHNAME} etex);
  pathname.nw = (345,-20);
  drawboxed_system_class(pathname,logical_pathname);

  boxjoin(a.se+(0,-3) = b.ne);
  boxit.number(btex \kwd{NUMBER} etex);
  boxit.complex(btex \kwd{COMPLEX} \Op{\VAR{type}\DF{\kwd{\A}}} etex);
  boxit.real(btex \kwd{REAL} \OP{\VAR{lower-limit}\DF{\kwd{\A}} \Op{\VAR{upper-limit}\DF{\kwd{\A}}}} etex);
  number.nw = (433,-44);
  drawboxed_system_class(number,complex,real);
  
  boxjoin()
  boxit.float(btex \kwd{FLOAT} \OP{\VAR{lower-limit}\DF{\kwd{\A}} \Op{\VAR{upper-limit}\DF{\kwd{\A}}}} etex);
  real.s+(15,-3) = float.n;
  drawboxed_system_class(float);

  boxjoin(a.se+(0,-3) = b.ne);
  boxit.short_float(btex \kwd{SHORT-FLOAT} \OP{\VAR{lower-limit}\DF{\kwd{\A}} \Op{\VAR{upper-limit}\DF{\kwd{\A}}}} etex);
  boxit.single_float(btex \kwd{SINGLE-FLOAT} \OP{\VAR{lower-limit}\DF{\kwd{\A}} \Op{\VAR{upper-limit}\DF{\kwd{\A}}}} etex);
  boxit.double_float(btex \kwd{DOUBLE-FLOAT} \OP{\VAR{lower-limit}\DF{\kwd{\A}} \Op{\VAR{upper-limit}\DF{\kwd{\A}}}} etex);
  boxit.long_float(btex \kwd{LONG-FLOAT} \OP{\VAR{lower-limit}\DF{\kwd{\A}} \Op{\VAR{upper-limit}\DF{\kwd{\A}}}} etex);
  boxit.rational(btex \kwd{RATIONAL} \OP{\VAR{lower-limit}\DF{\kwd{\A}} \Op{\VAR{upper-limit}\DF{\kwd{\A}}}} etex);
  boxit.integer(btex \kwd{INTEGER} \OP{\VAR{lower-limit}\DF{\kwd{\A}} \Op{\VAR{upper-limit}\DF{\kwd{\A}}}} etex);
  float.se+(-15,-3) = short_float.ne;
  drawboxed_type(short_float,single_float,double_float,long_float);
  drawboxed_system_class(rational,integer);
  
  boxjoin();
  boxit.ratio(btex \kwd{RATIO} etex);
  integer.sw+(0,-3) = ratio.nw;
  drawboxed_system_class(ratio);

  boxjoin(a.e+(3,0) = b.w);
  boxit.signed_byte(btex \kwd{SIGNED-BYTE} \Op{\VAR{size}\DF{\kwd{\A}}} etex);
  boxit.fixnum(btex \kwd{FIXNUM} etex);
  boxit.bignum(btex \kwd{BIGNUM} etex);
  ratio.sw+(0,-3) = signed_byte.nw;
  drawboxed_type(signed_byte,fixnum,bignum);

  boxjoin(a.e+(10,0) = b.w);
  boxit.unsigned_byte(btex \kwd{UNSIGNED-BYTE} \Op{\VAR{size}\DF{\kwd{\A}}} etex);
  boxit.bit(btex \kwd{BIT} etex);
  signed_byte.sw+(25,-3) = unsigned_byte.nw;
  drawboxed_type(unsigned_byte,bit);
  
  boxjoin(a.ne+(20,0) = b.sw);
  boxit.list(btex \kwd{LIST} etex);
  boxit.sequence(btex \kwd{SEQUENCE} etex);
  list.sw = (143,-71);
  drawboxed_system_class(list,sequence);
  
  boxjoin();
  boxit.cons(btex \kwd{CONS} \OP{\VAR{car-type}\DF{\kwd{\A}} \Op{\VAR{cdr-type}\DF{\kwd{\A}}}} etex);
  list.se+(0,-3) = cons.n;
  drawboxed_system_class(cons);
  
  boxjoin(a.sw+(0,-3) = b.nw);
  boxit.array(btex \kwd{ARRAY} \OP{\VAR{type}\DF{\kwd{\A}} \Op{\VAR{rank}\DF{\kwd{\A}}\XOR(\OPn{\VAR{dimension}})}} etex);
  boxit.simple_array(btex \kwd{SIMPLE-ARRAY} \OP{\VAR{type}\DF{\kwd{\A}} \Op{\VAR{rank}\DF{\kwd{\A}}\XOR(\OPn{\VAR{dimension}})}} etex);
  boxit.vector(btex \kwd{VECTOR} \OP{\VAR{type}\DF{\kwd{\A}} \Op{\VAR{size}\DF{\kwd{\A}}}} etex);
  boxit.string_(btex \kwd{STRING} \Op{\VAR{size}\DF{\kwd{\A}}} etex);
  boxit.simple_string(btex \kwd{SIMPLE-STRING} \Op{\VAR{size}\DF{\kwd{\A}}} etex);
  boxit.base_string(btex \kwd{BASE-STRING} \Op{\VAR{size}\DF{\kwd{\A}}} etex);
  boxit.simple_base_string(btex \kwd{SIMPLE-BASE-STRING} \Op{\VAR{size}\DF{\kwd{\A}}} etex);
  boxit.simple_vector(btex \kwd{SIMPLE-VECTOR} \Op{\VAR{size}\DF{\kwd{\A}}} etex);
  boxit.bit_vector(btex \kwd{BIT-VECTOR} \Op{\VAR{size}\DF{\kwd{\A}}} etex);
  boxit.simple_bit_vector(btex \kwd{SIMPLE-BIT-VECTOR} \Op{\VAR{size}\DF{\kwd{\A}}} etex);
  cons.sw+(0,-3) = array.nw;
  drawboxed_system_class(array);
  drawboxed_type(simple_array);
  drawboxed_system_class(vector,string_);
  drawboxed_type(simple_string,base_string,simple_base_string,simple_vector);
  drawboxed_system_class(bit_vector);
  drawboxed_type(simple_bit_vector);

  boxjoin();
  boxit.stream(btex \kwd{STREAM} etex);
  stream.ne = (315,-75);
  drawboxed_system_class(stream);

  boxjoin(a.se+(0,-3) = b.ne);
  boxit.file_stream(btex \kwd{FILE-STREAM} etex);
  boxit.two_way_stream(btex \kwd{TWO-WAY-STREAM} etex);
  boxit.synonym_stream(btex \kwd{SYNONYM-STREAM} etex);
  boxit.string_stream(btex \kwd{STRING-STREAM} etex);
  boxit.broadcast_stream(btex \kwd{BROADCAST-STREAM} etex);
  boxit.concatenated_stream(btex \kwd{CONCATENATED-STREAM} etex);
  boxit.echo_stream(btex \kwd{ECHO-STREAM} etex);
  stream.se+(-33,-69) = file_stream.ne;
  drawboxed_system_class(file_stream,two_way_stream,synonym_stream,string_stream,broadcast_stream,concatenated_stream,echo_stream);
  
  boxjoin(a.s+(0,-3) = b.n);
  boxit.extended_char(btex \kwd{EXTENDED-CHAR} etex);
  boxit.base_char(btex \kwd{BASE-CHAR} etex);
  character.e+(10,0) = extended_char.w;
  drawboxed_type(extended_char,base_char);
  
  boxjoin();
  boxit.standard_char(btex \kwd{STANDARD-CHAR} etex);
  base_char.s+(5,-3) = standard_char.n;
  drawboxed_type(standard_char);

%% Conditions %%

  boxjoin(a.sw+(0,-3) = b.nw);
  boxit.condition(btex \kwd{CONDITION} etex);
  boxit.serious_condition(btex \kwd{SERIOUS-CONDITION} etex);
  t.e+(400,0) = condition.w;
  drawboxed_condition_type(condition,serious_condition);

  boxjoin(a.sw+(0,-3) = b.nw);
  boxit.storage_condition(btex \kwd{STORAGE-CONDITION} etex);
  boxit.simple_type_error(btex \kwd{SIMPLE-TYPE-ERROR} etex);
  serious_condition.e+(10,2) = storage_condition.w;
  drawboxed_condition_type(storage_condition,simple_type_error);

  boxjoin()
  boxit.type_error(btex \kwd{TYPE-ERROR} etex);
  simple_type_error.sw+(15,-3) = type_error.nw;
  drawboxed_condition_type(type_error);

  boxjoin();
  boxit.error(btex \kwd{ERROR}\\ etex);
  type_error.sw+(-15,-3) = error.nw;
  drawboxed_condition_type(error);
  
  boxjoin(a.sw+(0,-3) = b.nw);
  boxit.program_error(btex \kwd{PROGRAM-ERROR} etex);
  boxit.control_error(btex \kwd{CONTROL-ERROR} etex);
  boxit.package_error(btex \kwd{PACKAGE-ERROR} etex);
  boxit.print_not_readable(btex \kwd{PRINT-NOT-READABLE} etex);
  boxit.stream_error(btex \kwd{STREAM-ERROR} etex);
  boxit.parse_error(btex \kwd{PARSE-ERROR} etex);
  boxit.cell_error(btex \kwd{CELL-ERROR} etex);
  boxit.file_error(btex \kwd{FILE-ERROR} etex);
  error.sw+(15,-3) = program_error.nw;
  drawboxed_condition_type(program_error,control_error,package_error,print_not_readable,stream_error,parse_error,cell_error,file_error);

  boxjoin();
  boxit.arithmetic_error(btex \kwd{ARITHMETIC-ERROR} etex);
  file_error.sw+(-15,-3) = arithmetic_error.nw;
  drawboxed_condition_type(arithmetic_error);

  boxjoin();
  boxit.simple_condition(btex \kwd{SIMPLE-CONDITION} etex);
  type_error.se+(10,-2) = simple_condition.w;
  drawboxed_condition_type(simple_condition);

  boxjoin();
  boxit.warning(btex \kwd{WARNING} etex);
  condition.ne+(120,0) = warning.nw;
  drawboxed_condition_type(warning);

  boxjoin(a.sw+(0,-3) = b.nw);
  boxit.style_warning(btex \kwd{STYLE-WARNING} etex);
  warning.sw+(0,-3) = style_warning.nw;
  drawboxed_condition_type(style_warning);

  boxjoin(a.s+(0,-3) = b.n);
  boxit.simple_error(btex \kwd{SIMPLE-ERROR} etex);
  boxit.simple_warning(btex \kwd{SIMPLE-WARNING} etex);
  simple_condition.s+(7,-10) = simple_error.n;
  drawboxed_condition_type(simple_error,simple_warning);

  boxjoin(a.se+(0,-3) = b.ne);
  boxit.end_of_file(btex  \kwd{END-OF-FILE} etex);
  boxit.reader_error(btex \kwd{READER-ERROR} etex);
  boxit.undefined_function(btex  \kwd{UNDEFINED-FUNCTION} etex);
  boxit.unbound_variable(btex  \kwd{UNBOUND-VARIABLE} etex);
  boxit.unbound_slot(btex  \kwd{UNBOUND-SLOT} etex);
  cell_error.e+(15,0) = undefined_function.w;
  drawboxed_condition_type(end_of_file,reader_error,unbound_variable,undefined_function,unbound_slot);                
  
  boxjoin(a.sw+(0,-3) = b.nw);
  boxit.division_by_zero(btex  \kwd{DIVISION-BY-ZERO} etex);
  boxit.floating_point_inexact(btex  \kwd{FLOATING-POINT-INEXACT} etex);
  boxit.floating_point_overflow(btex  \kwd{FLOATING-POINT-OVERFLOW} etex);
  boxit.floating_point_underflow(btex  \kwd{FLOATING-POINT-UNDERFLOW} etex);
  boxit.floating_point_invalid_operation(btex  \kwd{FLOATING-POINT-INVALID-OPERATION} etex);
  arithmetic_error.sw+(20,-3) = division_by_zero.nw;
  drawboxed_condition_type(division_by_zero,floating_point_inexact,floating_point_overflow,floating_point_underflow,floating_point_invalid_operation);

  % The Arrows:

  pickup pencircle scaled .3;

  drawarrow t.e{right} ... character.n{down};
  drawarrow t.e{right} .. t.e+(121,0){right} .. tension 1.3 and 1.1 .. sequence.n{down};
  drawarrow t.e{right} .. t.e+(124,0){right} .. stream.w{right};
  drawarrow t.e{right} .. t.e+(126,0){right} .. tension .8 .. function.w{right};
  drawarrow t.e{right} .. t.e+(270,0){right} ... pathname.n{down};
  drawarrow t.e{right} .. t.e+(280,0){right} ... pathname.ne+(3,3) .. serious_condition.sw+(-3,-3) .. number.n{down};
  drawarrow t.e{right} .. condition.w{right};

  drawarrow t.s{down} ... atom.w{right};
  drawarrow t.s{down} ... readtable.w{right};
  drawarrow t.s{down} ... package.w{right};
  drawarrow t.s{down} ... symbol.w{right};
  
  drawarrow t.s{down} .. t.s+(0,-25){down} ... array.w+(0,3){right};
  drawarrow t.s{down} .. t.s+(0,-25){down} ... restart.w{right};
  drawarrow t.s{down} .. t.s+(0,-25){down} ... random_state.w{right};
  drawarrow t.s{down} .. t.s+(0,-25){down} ... hash_table.w{right};
  drawarrow t.s{down} .. t.s+(0,-25){down} ... structure_object.w{right};
  drawarrow t.s{down} .. t.s+(0,-25){down} ... standard_object.w{right};
  drawarrow t.s{down} .. t.s+(0,-25){down} ... method.w{right};
  

  drawarrow standard_object.s{down} .. class.e{left};
  drawarrow class.sw+(5,0){down} ... standard_class.w{right};
  drawarrow class.sw+(5,0){down} ... built_in_class.w{right};
  drawarrow class.sw+(5,0){down} ... structure_class.w{right};
  drawarrow t.s{down} -- (xpart t.s,ypart method_combination.nw);
  
  drawarrow standard_object.s{down} .. built_in_class.ne+(2,2)  ... standard_class.e+(7,0) ... structure_class.se+(-2,-4) .. method.e{down} .. standard_method.ne+(-20,2){down} ... standard_method.ne+(-20,0){down} dashed evenly;
  halfdisc_e (method.e);

  drawarrow vector.w{left} ... vector.sw+(-6,0) ... string_.w+(0,3){right};
  drawarrow string_.w+(0,-3){left} ... simple_string.w+(-8,0) ... base_string.w{right};
  drawarrow vector.w{left} ... base_string.w+(-12,0) ... bit_vector.w{right};
  drawarrow sequence.s{down} .. list.e{left};
  drawarrow list.w{left} ... cons.nw+(23,0){down};

  drawarrow symbol.s{down} ... keyword.w{right};
  drawarrow symbol.s{down} ... boolean_.w{right};

  drawarrow list.w{left} .. null.ne+(3,3) .. tension 1.5 .. symbol.e{down} .. null.w{right} dashed evenly;
  halfdisc_e(symbol.e);

  path array_simple_array_dashed;
  pair array_simple_array_bifurcation,array_simple_array_common;
  array_simple_array_dashed = array.e{down} .. simple_array.ne+(2,1) .. simple_array.e{down};
  array_simple_array_bifurcation = directionpoint(10,1) of array_simple_array_dashed;
  array_simple_array_common = directionpoint(1,-1) of array_simple_array_dashed;

  drawarrow sequence.s{down} .. cons.ne+(-1,4) .. array.ne+(2,1) .. array.e{down} .. array_simple_array_common{dir angle(1,-1)} .. array_simple_array_bifurcation{dir angle(10,1)} .. simple_array.ne+(15,5) .. simple_array.se+(15,0) .. vector.e+(0,5){left} dashed evenly;
  drawarrow sequence.s{down} .. cons.ne+(-1,4) .. array.ne+(2,1) .. array.e{down} .. simple_array.ne+(2,1) .. simple_array.e{down} .. simple_array.se+(2,-1) .. tension 2 .. vector.e+(0,-3){down} .. vector.se+(2,-1){dir -60} .. simple_base_string.se+(5,0) .. simple_vector.e{left} dashed evenly;
  drawarrow sequence.s{down} .. cons.ne+(-1,4) .. array.ne+(2,1) .. array.e{down} .. simple_array.ne+(2,1) .. simple_array.e{down} .. simple_array.se+(2,-1) .. tension 2 .. vector.e+(0,-3){down} .. vector.se+(2,-1){dir -60} .. simple_base_string.se+(10,0) .. simple_vector.se+(0,-3) .. bit_vector.e{down} .. simple_bit_vector.ne+(-10,2){down} ... simple_bit_vector.ne+(-10,0){down} dashed evenly;
  drawarrow sequence.s{down} .. cons.ne+(-1,4) .. array.ne+(2,1) .. array.e{down} .. simple_array.ne+(2,1) .. simple_array.e{down} .. simple_array.se+(2,-1) .. tension 2 .. vector.e+(0,-3){down} .. vector.se+(2,-1){dir -60} .. tension 1.3 .. string_.e{down} .. tension 1.3 .. simple_string.ne+(2,1)  .. simple_string.e{down}  .. simple_string.se+(2,1) .. base_string.e{down} .. simple_base_string.ne+(-10,2){down} ... simple_base_string.ne+(-10,0){down} dashed evenly;
  halfdisc_e(array.e);
  halfdisc_e(simple_array.e);
  halfdisc_e(vector.e+(0,-3));
  halfdisc_e(string_.e);
  halfdisc_e(simple_string.e);
  halfdisc_e(base_string.e);
  halfdisc_e(bit_vector.e);

  drawarrow array.w+(0,-3){left} ... array.sw+(-7,-3).. simple_array.w{right};

  drawarrow character.e{right} .. extended_char.w{right};
  drawarrow character.e{right} .. extended_char.sw+(-1,-3) .. base_char.w{right};
  drawarrow base_char.e{right} .. standard_char.ne+(-5,0){down};

  drawarrow function.s+(-20,0){down} ... compiled_function.w{right};
  drawarrow function.s+(-20,0){down} ... generic_function.w{right};
  drawarrow generic_function.e{right} ... standard_generic_function.ne+(-25,0){down};

  drawarrow number.w{left} ... complex.n+(-10,0){down};
  drawarrow number.w{left} ... real.n+(-12,0){down};

  drawarrow real.w{left} ... double_float.nw+(-3,3) ... rational.w+(0,3){right};
  drawarrow real.e{right} .. float.ne+(-5,0){down};

  drawarrow float.se+(-5,0){down} ... short_float.e{left};
  drawarrow float.se+(-5,0){down} ... single_float.e{left};
  drawarrow float.se+(-5,0){down} ... double_float.e{left};
  drawarrow float.se+(-5,0){down} ... long_float.e{left};

  drawarrow rational.w+(0,-3){left} ... rational.sw+(-5,0) ... integer.w{right};
  drawarrow rational.w+(0,-3){left} ... integer.w+(-10,0) ... ratio.w{right};

  drawarrow (xpart fixnum.n,ypart.integer.s){down} .. signed_byte.ne+(-5,0){down};
  drawarrow (xpart fixnum.n,ypart.integer.s){down} .. fixnum.n{down};
  drawarrow (xpart fixnum.n,ypart integer.s){down} .. bignum.nw+(5,0){down};

  drawarrow signed_byte.sw+(10,0){down} ... unsigned_byte.w{right};
  drawarrow unsigned_byte.e{right} ... bit.w{right};

  drawarrow stream.s{down} ... file_stream.e{left};
  drawarrow stream.s{down} ... two_way_stream.e{left};
  drawarrow stream.s{down} ... synonym_stream.e{left};
  drawarrow stream.s{down} ... string_stream.e{left};
  drawarrow stream.s{down} ... concatenated_stream.e{left};
  drawarrow stream.s{down} ... broadcast_stream.e{left};
  drawarrow stream.s{down} ... echo_stream.e{left};

  drawarrow pathname.e{right} .. logical_pathname.ne+(-15,0){down};
  
  drawarrow condition.e{right} .. condition.e+(95,0){right} .. (xpart warning.w,ypart condition.e){right};
  drawarrow condition.e{right} .. condition.e+(95,0){right} .. simple_condition.n+(-15,0){down};
  drawarrow condition.e{right} ... serious_condition.ne+(-10,0){down};
  
  drawarrow (xpart warning.e,ypart condition.e){right} .. style_warning.ne+(-10,0){down};

  drawarrow serious_condition.e{right} .. storage_condition.w{right};
  drawarrow serious_condition.se+(-10,0){down} .. tension 1.3 .. error.w{right};

  drawarrow error.sw+(5,0){down} ... parse_error.w{right};
  drawarrow error.sw+(5,0){down} ... program_error.w{right};
  drawarrow error.sw+(5,0){down} ... control_error.w{right};
  drawarrow error.nw+(5,0){up}   ... type_error.w{right};
  drawarrow error.sw+(5,0){down} ... cell_error.w{right};
  drawarrow error.sw+(5,0){down} ... stream_error.w{right};
  drawarrow error.sw+(5,0){down} ... package_error.w{right};
  drawarrow error.sw+(5,0){down} ... file_error.w{right};
  drawarrow error.sw+(5,0){down} ... print_not_readable.w{right};
  drawarrow error.sw+(5,0){down} ... arithmetic_error.nw+(5,0){down};

  drawarrow stream_error.e{right} .. end_of_file.w{right};

  drawarrow cell_error.e{right} .. undefined_function.w{right};
  drawarrow cell_error.e{right} .. unbound_variable.w{right};
  drawarrow cell_error.e{right} .. tension 1.3 .. unbound_variable.sw+(-3,-3) .. unbound_slot.w{right};

  drawarrow arithmetic_error.sw+(5,0){down} ... division_by_zero.w{right};
  drawarrow arithmetic_error.sw+(5,0){down} ... floating_point_inexact.w{right};
  drawarrow arithmetic_error.sw+(5,0){down} ... floating_point_invalid_operation.w{right};
  drawarrow arithmetic_error.sw+(5,0){down} ... floating_point_overflow.w{right};
  drawarrow arithmetic_error.sw+(5,0){down} ... floating_point_underflow.w{right};

  drawarrow stream_error.e{right} .. stream_error.se+(3,-2) .. parse_error.e{down} .. tension 1.5 .. reader_error.w{right} dashed evenly;

  halfdisc_e(parse_error.e);

  drawarrow (xpart warning.e,ypart condition.e){right} .. style_warning.e+(6,0) .. tension 1.3 .. simple_condition.ne+(2,1) .. simple_condition.e{down} .. simple_condition.se+(2,-1) .. simple_warning.e{left} dashed evenly;
  drawarrow error.e{right} .. tension 1.5 .. simple_condition.sw+(-1,-2) .. simple_condition.sw+(5,0){right} .. simple_condition.sw+(12,-2){right} ... simple_error.n{down} dashed evenly;
  drawarrow type_error.e{right} .. simple_condition.nw+(-1,2) .. simple_condition.nw+(5,0){right} .. simple_type_error.e{left} dashed evenly;

  halfdisc_e(simple_condition.e);
  halfdisc_s(simple_condition.sw+(5,0));
  halfdisc_n(simple_condition.nw+(5,0));

endfig;

% Legend:

beginfig(2);
  boxit.type(btex \rule{1.5em}{0pt}\rule{0pt}{1ex} etex);
  type.ne = (0,0);
  type.dx = 0;
  type.dy = 0;
  drawboxed_type(type);
endfig;

beginfig(3);
  boxit.system_class(btex \rule{1.5em}{0pt}\rule{0pt}{1ex} etex);
  system_class.ne = (0,0);
  system_class.dx = 0;
  system_class.dy = 0;
  drawboxed_system_class(system_class);
endfig;

beginfig(4);
  boxit.class(btex \rule{1.5em}{0pt}\rule{0pt}{1ex} etex);
  class.ne = (0,0);
  class.dx = 0;
  class.dy = 0;
  drawboxed_class(class);
endfig;

beginfig(5);
  boxit.condition_type(btex \rule{1.5em}{0pt}\rule{0pt}{1ex} etex);
  condition_type.ne = (0,0);
  condition_type.dx = 0;
  condition_type.dy = 0;
  drawboxed_condition_type(condition_type);
endfig;


verbatimtex
\end{document}
etex

end
