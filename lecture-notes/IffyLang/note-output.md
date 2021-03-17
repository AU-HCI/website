---
title: "IffyLang : Syntax and Evaluation"
---

The following defines Functional Iffy:

\begin{center}
  \begin{math}
    \begin{array}{lllllllll}
      \text{Syntax:}\\
      & \text{(Bool)}  & b & ::= & \ottmv{x} \mid 1 \mid 0 \mid \ottnt{b}  \land  \ottnt{b} \mid \ottnt{b}  \lor  \ottnt{b} \mid \mathsf{if}\, \ottnt{b} \,\mathsf{then}\, \ottnt{b} \,\mathsf{else}\, \ottnt{b}
          \mid \mathsf{fun}\, \ottmv{x}  \Rightarrow  \ottnt{b} \mid \mathsf{app}\, \ottnt{b_{{\mathrm{1}}}} \, \ottnt{b_{{\mathrm{2}}}}\\
    \end{array}
  \end{math}
\end{center}

\begin{center}
\begin{tabular}{lll}
  Single-step reduction:\\
  \begin{mathpar}
    \ottdruleBeta{} \and
    \ottdruleFun{} \and
    \ottdruleAppOne{} \and
    \ottdruleAppTwo{} \and
    \ottdruleAndTrue{} \and
    \ottdruleAndFalseOne{} \and
    \ottdruleAndFalseTwo{} \and
    \ottdruleAndFalse{} \and
    \ottdruleAndOne{} \and
    \ottdruleAndTwo{} \and
    \ottdruleOrTrue{} \and
    \ottdruleOrTrueTwo{} \and
    \ottdruleOrTrueOne{} \and
    \ottdruleOrFalse{} \and
    \ottdruleOrOne{} \and
    \ottdruleOrTwo{} \and
    \ottdruleIfTrue{} \and
    \ottdruleIfFalse{} \and
    \ottdruleIfOne{} \and
    \ottdruleIfTwo{} \and
    \ottdruleIfThree{} 
  \end{mathpar}
\end{tabular}
\end{center}

\begin{center}
\begin{tabular}{lll}
  Mutli-step reduction:\\
  \begin{mathpar}
    \ottdruleRefl{} \and
    \ottdruleStep{} \and
    \ottdruleMult{}
  \end{mathpar}
\end{tabular}
\end{center}
