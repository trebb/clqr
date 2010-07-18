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

beginfig(1);
  
  boxit.t(btex \T etex);
  drawboxed(t);
  
  boxit.condition(btex \kwd*{CONDITION} etex);
  t.sw = condition.nw;
  drawboxed(condition);

  boxjoin(a.sw + (0, -30) = b.nw);
  boxit.warning(btex \kwd*{WARNING} etex);
  boxit.simple_condition(btex \kwd*{SIMPLE-CONDITION} etex);
  boxit.serious_condition(btex \kwd*{SERIOUS-CONDITION} etex);
  warning.nw = (100,0);
  drawboxed(warning, simple_condition, serious_condition);

  boxjoin(a.sw + (0, -3) = b.nw);
  boxit.style_warning(btex \kwd*{STYLE-WARNING} etex);
  warning.e + (20,0) = style_warning.w;
  drawboxed(style_warning);

  boxjoin(a.sw + (0, -3) = b.nw);
  boxit.simple_warning(btex \kwd*{SIMPLE-WARNING} etex);
  warning.sw = simple_warning.nw;
  drawboxed(simple_warning);

  boxjoin(a.sw + (0, -3) = b.nw);
  boxit.storage_condition(btex \kwd*{STORAGE-CONDITION} etex);
  boxit.error(btex \kwd*{ERROR}\\ etex);
  warning.e + (50,0) = storage_condition.w;
  drawboxed(storage_condition,error);

  boxjoin(a.sw + (0, -3) = b.nw);
  boxit.simple_error(btex \kwd*{SIMPLE-ERROR} etex);
  error.sw = simple_error.nw;
  drawboxed(simple_error);

  boxjoin(a.sw + (0, -3) = b.nw);
  boxit.parse_error(btex \kwd*{PARSE-ERROR} etex);
  boxit.program_error(btex \kwd*{PROGRAM-ERROR} etex);
  boxit.control_error(btex \kwd*{CONTROL-ERROR} etex);
  boxit.type_error(btex \kwd*{TYPE-ERROR} etex);
  boxit.cell_error(btex \kwd*{CELL-ERROR} etex);
  boxit.stream_error(btex \kwd*{STREAM-ERROR} etex);
  boxit.package_error(btex \kwd*{PACKAGE-ERROR} etex);
  boxit.file_error(btex \kwd*{FILE-ERROR} etex);
  boxit.print_not_readable(btex \kwd*{PRINT-NOT-READABLE} etex);
  boxit.arithmetic_error(btex \kwd*{ARITHMETIC-ERROR} etex);
  simple_error.sw = parse_error.nw;
  drawboxed(parse_error, program_error, control_error, type_error, cell_error, stream_error, package_error, file_error, print_not_readable, arithmetic_error);

  boxjoin(a.sw + (0, -3) = b.nw);
  boxit.simple_type_error(btex \kwd*{SIMPLE-TYPE-ERROR} etex);
  arithmetic_error.sw = simple_type_error.nw;
  drawboxed(simple_type_error);

  boxjoin(a.sw + (0, -3) = b.nw);
  boxit.unbound_variable(btex  \kwd*{UNBOUND-VARIABLE} etex);
  boxit.unbound_slot(btex  \kwd*{UNBOUND-SLOT} etex);
  boxit.undefined_function(btex  \kwd*{UNDEFINED-FUNCTION} etex);
  cell_error.e + (30,0) = unbound_variable.w;
  drawboxed(unbound_variable, unbound_slot, undefined_function);                
  
  boxjoin(a.sw + (0, -3) = b.nw);
  boxit.end_of_file(btex  \kwd*{END-OF-FILE} etex);
  undefined_function.sw = end_of_file.nw;
  drawboxed(end_of_file);
  
  boxjoin(a.sw + (0, -3) = b.nw);
  boxit.reader_error(btex \kwd*{READER-ERROR} etex);
  stream_error.e + (0,30) = reader_error.nw;
  drawboxed(reader_error);

  boxjoin(a.sw + (0, -3) = b.nw);
  boxit.division_by_zero(btex  \kwd*{DIVISION-BY-ZERO} etex);
  boxit.floating_point_inexact(btex  \kwd*{FLOATING-POINT-INEXACT} etex);
  boxit.floating_point_invalid_operation(btex  \kwd*{FLOATING-POINT-INVALID-OPERATION} etex);
  boxit.floating_point_overflow(btex  \kwd*{FLOATING-POINT-OVERFLOW} etex);
  boxit.floating_point_underflow(btex  \kwd*{FLOATING-POINT-UNDERFLOW} etex);
  arithmetic_error.e + (50,0) = division_by_zero.w;
  drawboxed(division_by_zero,floating_point_inexact, floating_point_invalid_operation, floating_point_overflow, floating_point_underflow);

  drawarrow t.e{right} .. {right}t.e+(40,0) .. warning.n{down};
  
endfig;

verbatimtex
\end{document}
etex
end
