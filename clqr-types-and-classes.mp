\begin{figure}
  \begin{center}
    \boxGOO{%
      \T\index{T}%
      \boxGOO{%
        \kwd*{NUMBER}
        \boxGOO{%
          \kwd*{REAL } \OP{\VAR{lower-limit}\DF{\kwd{\A}}\text{ }\Op{\VAR{upper-limit}\DF{\kwd{\A}}}}\\
          \boxGOO{%
            \kwd*{RATIONAL } \OP{\VAR{lower-limit}\DF{\kwd{\A}}\text{ }\Op{\VAR{upper-limit}\DF{\kwd{\A}}}}\\
            \boxGOO{%
              \kwd*{INTEGER } \OP{\VAR{lower-limit}\DF{\kwd{\A}}\text{ }\Op{\VAR{upper-limit}\DF{\kwd{\A}}}}\\
              \boxGOO{%
                \kwd*{SIGNED-BYTE } \Op{\VAR{size}\DF{\kwd{\A}}}\\
                \boxGOO{\kwd*{UNSIGNED-BYTE } \Op{\VAR{size}\DF{\kwd{\A}}}
                  \boxGOO{\kwd*{BIT} }}\boxGOOcr
                \kwd*{FIXNUM} ;\>
                \kwd*{BIGNUM}
              }\boxGOOcr
              \kwd*{RATIO}}\boxGOOcr
            \kwd*{FLOAT } \OP{\VAR{lower-limit}\DF{\kwd{\A}}\text{ }\Op{\VAR{upper-limit}\DF{\kwd{\A}}}}\\
            \boxGOO{%
              \kwd*{SHORT-FLOAT } \OP{\VAR{lower-limit}\DF{\kwd{\A}}\text{ }\Op{\VAR{upper-limit}\DF{\kwd{\A}}}}\\
              \kwd*{SINGLE-FLOAT } \OP{\VAR{lower-limit}\DF{\kwd{\A}}\text{ }\Op{\VAR{upper-limit}\DF{\kwd{\A}}}}\\
              \kwd*{DOUBLE-FLOAT } \OP{\VAR{lower-limit}\DF{\kwd{\A}}\text{ }\Op{\VAR{upper-limit}\DF{\kwd{\A}}}}\\
              \kwd*{LONG-FLOAT } \OP{\VAR{lower-limit}\DF{\kwd{\A}}\text{ }\Op{\VAR{upper-limit}\DF{\kwd{\A}}}}}}\boxGOOcr
          \kwd*{COMPLEX } \Op{\VAR{type}\DF{\kwd{\A}}}}\boxGOOcr
        \kwd*{SEQUENCE}
        \boxGOO{%
          \kwd*{LIST}
          \boxGOO{%
            \kwd*{CONS } \OP{\VAR{car-type}\DF{\kwd{\A}}\text{ }\Op{\VAR{cdr-type}\DF{\kwd{\A}}}}\\
          \kwd*{SYMBOL}\footnotemark[2]
          \boxGOO{
            \kwd*{NULL}}}\boxGOOcr
          \kwd*{ARRAY}\footnotemark[2] \OP{\VAR{type}\DF{\kwd{\A}}\text{ }\Op{\VAR{rank}\DF{\kwd{\A}}\XOR(\OPn{\VAR{dimension}})}}\\
          \boxGOO{%
            \kwd*{SIMPLE-ARRAY}\footnotemark[2] \OP{\VAR{type}\DF{\kwd{\A}}\text{ }\Op{\VAR{rank}\DF{\kwd{\A}}\XOR(\OPn{\VAR{dimension}})}}\\
            \boxGOO{%
              \kwd*{VECTOR}\footnotemark[2] \OP{\VAR{type}\DF{\kwd{\A}}\text{ }\Op{\VAR{size}\DF{\kwd{\A}}}}\\
              \boxGOO{%
                \kwd*{BIT-VECTOR}\footnotemark[2] \Op{\VAR{size}\DF{\kwd{\A}}}\\
                \boxGOO{%
                  \kwd*{SIMPLE-BIT-VECTOR } \Op{\VAR{size}\DF{\kwd{\A}}}}\boxGOOcr
                \kwd*{STRING}\footnotemark[2] \Op{\VAR{size}\DF{\kwd{\A}}}\\
                \boxGOO{%
                  \kwd*{SIMPLE-STRING } \Op{\VAR{size}\DF{\kwd{\A}}}\\
                  \boxGOO{%
                    \kwd*{BASE-STRING}\footnotemark[2] \Op{\VAR{size}\DF{\kwd{\A}}}\\
                    \boxGOO{%
                      \kwd*{SIMPLE-BASE-STRING } \Op{\VAR{size}\DF{\kwd{\A}}}}}}\boxGOOcr
                \kwd*{SIMPLE-VECTOR } \Op{\VAR{size}\DF{\kwd{\A}}}}}\boxGOOcr
            \kwd*{VECTOR } \OP{\VAR{type}\DF{\kwd{\A}}\text{ }\Op{\VAR{size}\DF{\kwd{\A}}}}\\
            \boxGOO{%
              \kwd*{STRING } \Op{\VAR{size}\DF{\kwd{\A}}}
              \boxGOO{%
                \kwd*{BASE-STRING } \Op{\VAR{size}\DF{\kwd{\A}}}}\boxGOOcr
              \kwd*{BIT-VECTOR } \Op{\VAR{size}\DF{\kwd{\A}}}}}}\boxGOOcr
        \kwd*{ARRAY} \OP{\VAR{type}\DF{\kwd{\A}}\text{ }\Op{\VAR{rank}\DF{\kwd{\A}}\XOR(\OPn{\VAR{dimension}})}}\\
        \boxGOO{%
          \kwd*{SIMPLE-ARRAY} \OP{\VAR{type}\DF{\kwd{\A}}\text{ }\Op{\VAR{rank}\DF{\kwd{\A}}\XOR(\OPn{\VAR{dimension}})}}
        }\boxGOOcr
        \kwd*{CHARACTER}
        \boxGOO{%
          \kwd*{BASE-CHAR}
          \boxGOO{%
            \kwd*{STANDARD-CHAR}}\boxGOOcr
          \kwd*{EXTENDED-CHAR}}\boxGOOcr
        \kwd*{STREAM}
        \boxGOO{%
          \kwd*{FILE-STREAM};\>
          \kwd*{TWO-WAY-STREAM};\>
          \kwd*{SYNONYM-STREAM};\\
          \kwd*{STRING-STREAM};\>
          \kwd*{BROADCAST-STREAM};\>
          \kwd*{ECHO-STREAM};\\
          \kwd*{CONCATENATED-STREAM}}\boxGOOcr
        \kwd*{PATHNAME}
        \boxGOO{%
          \kwd*{LOGICAL-PATHNAME}}\boxGOOcr
        \kwd*{SYMBOL}
        \boxGOO{%
          \kwd*{KEYWORD};\>
          \kwd*{BOOLEAN}}\boxGOOcr
        \kwd*{FUNCTION } \OP{\VAR{arg-types }\Op{\VAR{value-types}}}\\
        \boxGOO{%
          \kwd*{GENERIC-FUNCTION}
          \boxGOO{\kwd*{STANDARD-GENERIC-FUNCTION}}\boxGOOcr
          \kwd*{COMPILED-FUNCTION}}\boxGOOcr
        \kwd*{STANDARD-OBJECT}
        \boxGOO{%
          \kwd*{CLASS}
          \boxGOO{%
            \kwd*{STANDARD-CLASS};\>
            \kwd*{BUILT-IN-CLASS};\\
            \kwd*{STRUCTURE-CLASS}}\boxGOOcr
          \kwd*{METHOD}\footnotemark[2]
          \boxGOO{%
            \kwd*{STANDARD-METHOD}}}\boxGOOcr
        \kwd*{ATOM};\>
        \kwd*{HASH-TABLE};\>
        \kwd*{STRUCTURE-OBJECT};\>
        \kwd*{PACKAGE};\>
        \kwd*{READTABLE};\\
        \kwd*{RANDOM-STATE};\>
        \kwd*{RESTART};\>
        \kwd*{METHOD};\>
        \kwd*{METHOD-COMBINATION}}}
  \end{center}\vspace{-1em}
              {\footnotesize\footnotemark[2]For supertypes of this
                type look for the instance without a \footnotemark[2].}\\
              {\footnotesize As a type argument, \kwd{\A} means no restriction.\index{*@\A}}
              
  \caption{Data Types.}%
\end{figure}
