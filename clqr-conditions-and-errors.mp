% Copyright (C) 2010 Bert Burgemeister
%
% Permission is granted to copy,distribute and/or modify this
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
  
  boxjoin(a.s + (0,-3) = b.n);
  boxit.condition(btex \kwd*{CONDITION} etex);
  boxit.serious_condition(btex \kwd*{SERIOUS-CONDITION} etex);
  t.se + (10,0) = condition.sw;
  drawboxed(condition,serious_condition);

  boxjoin(a.e + (30,0) = b.w);
  boxit.simple_condition(btex \kwd*{SIMPLE-CONDITION} etex);
  boxit.warning(btex \kwd*{WARNING} etex);
  simple_condition.nw = (100,-50);
  drawboxed(simple_condition,warning);

  boxjoin(a.sw + (0,-3) = b.nw);
  boxit.style_warning(btex \kwd*{STYLE-WARNING} etex);
  warning.s + (0,-20) = style_warning.n;
  drawboxed(style_warning);

  boxjoin(a.sw + (0,-3) = b.nw);
  boxit.simple_warning(btex \kwd*{SIMPLE-WARNING} etex);
  warning.sw = simple_warning.nw;
  drawboxed(simple_warning);

  boxjoin(a.sw + (0,-3) = b.nw);
  boxit.storage_condition(btex \kwd*{STORAGE-CONDITION} etex);
  boxit.error(btex \kwd*{ERROR}\\ etex);
  serious_condition.s + (0,-5) = storage_condition.n;
  drawboxed(storage_condition,error);

  boxjoin(a.sw + (0,-3) = b.nw);
  boxit.simple_error(btex \kwd*{SIMPLE-ERROR} etex);
  simple_condition.sw + (0, -10) = simple_error.nw;
  drawboxed(simple_error);

  boxjoin(a.sw + (0,-3) = b.nw);
  boxit.type_error(btex \kwd*{TYPE-ERROR} etex);
  boxit.program_error(btex \kwd*{PROGRAM-ERROR} etex);
  boxit.control_error(btex \kwd*{CONTROL-ERROR} etex);
  boxit.package_error(btex \kwd*{PACKAGE-ERROR} etex);
  boxit.file_error(btex \kwd*{FILE-ERROR} etex);
  boxit.stream_error(btex \kwd*{STREAM-ERROR} etex);
  boxit.parse_error(btex \kwd*{PARSE-ERROR} etex);
  boxit.cell_error(btex \kwd*{CELL-ERROR} etex);
  boxit.print_not_readable(btex \kwd*{PRINT-NOT-READABLE} etex);
  boxit.arithmetic_error(btex \kwd*{ARITHMETIC-ERROR} etex);
  error.sw + (0, -5) = type_error.nw;
  drawboxed(type_error,program_error,control_error,package_error,file_error,stream_error,parse_error,cell_error,print_not_readable,arithmetic_error);

  boxjoin(a.sw + (0,-3) = b.nw);
  boxit.simple_type_error(btex \kwd*{SIMPLE-TYPE-ERROR} etex);
  simple_condition.sw + (0,-30) = simple_type_error.nw;
  drawboxed(simple_type_error);

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
  boxit.floating_point_invalid_operation(btex  \kwd*{FLOATING-POINT-INVALID-OPERATION} etex);
  boxit.floating_point_overflow(btex  \kwd*{FLOATING-POINT-OVERFLOW} etex);
  boxit.floating_point_underflow(btex  \kwd*{FLOATING-POINT-UNDERFLOW} etex);
  arithmetic_error.sw + (0,-3) = division_by_zero.nw;
  drawboxed(division_by_zero,floating_point_inexact,floating_point_invalid_operation,floating_point_overflow,floating_point_underflow);

  drawarrow t.e{right} .. condition.w{right};
  
  drawarrow condition.e{right} .. warning.n{down};
  drawarrow condition.e{right} .. simple_condition.n{down};
  drawarrow condition.w{left} .. serious_condition.w{right};

  drawarrow warning.w{left} .. style_warning.w{right};

  drawarrow serious_condition.w{left} .. storage_condition.w{right};
  drawarrow serious_condition.w{left} .. error.w{right};

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

  drawarrow warning.w{left} .. simple_condition.e{down} .. simple_warning.w{right} dashed evenly;
  drawarrow error.e{right} .. simple_condition.s{right} .. simple_error.e{left} dashed evenly;
  drawarrow type_error.e{right} .. simple_condition.w{down} .. simple_type_error.w{right} dashed evenly;

endfig;

verbatimtex
\end{document}
etex
end
