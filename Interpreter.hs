module Interpreter
where

data BV
     = P Prog 
     | E Expr

data Prog
     = LAMBDA Id Expr

data Expr
     = ZERO
     | ONE
     | ID Id
     | IF Expr Expr Expr
     | FOLD Expr Expr Id Id Expr
     | OP1 Op1
     | OP2 Op2

data Op1
     = NOT   Expr
     | SHL1  Expr
     | SHR1  Expr
     | SHR4  Expr
     | SHR16 Expr

data Op2
     = AND  Expr Expr
     | OR   Expr Expr
     | XOR  Expr Expr
     | PLUS Expr Expr

type Id
        = String
-- data Id
--      = ID String
