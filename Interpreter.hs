module Interpreter
where

data BV
     = P Prog 
     | E Expr

data Prog
     = LAMBDA Id Expr

data Expr
     = ZERO | ONE | Id
     | IF Expr Expr Expr
     | FOLD Expr Expr Id Id Expr
     | OP1 Expr
     | OP2 Expr Expr 

data OP1
     = NOT | SHL1 | SHR1 | SHR4 | SHR16

data OP2
     = AND | OR | XOR | PLUS

type Id
        = String
-- data Id
--      = ID String
