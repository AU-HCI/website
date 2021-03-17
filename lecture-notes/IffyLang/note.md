---
title: "IffyLang : Syntax and Evaluation"
---

The following defines Functional Iffy:

\begin{center}
  \begin{math}
    \begin{array}{lllllllll}
      \text{Syntax:}\\
      & \text{(Bool)}  & b & ::= & [[x]] \mid [[1]] \mid [[0]] \mid [[b x b]] \mid [[b + b]] \mid [[if b b b]]
          \mid [[fun x => b]] \mid [[app b1 b2]]\\
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
