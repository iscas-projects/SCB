(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2846 0)
(declare-sort var2328 0)
(declare-sort var1571 0)
(declare-sort var1203 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun ordinal/-291641772 (var1571) Int)
(declare-fun cast-from-var2846-to-var1571 (var2846) var1571)
(declare-const null-var2846 var2846)
(declare-const var2328-$SwitchMap$com$google$javascript$jscomp$parsing$parser$TokenType (Array Int Int))
(declare-const var1203-ASSIGN_BITAND var1203)
(declare-const var2413 var2846) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.parsing.parser.TokenType 
(assert (not (= var2413 null-var2846)))
(define-const var2058 (Array Int Int) var2328-$SwitchMap$com$google$javascript$jscomp$parsing$parser$TokenType) ; Statement: $r1 = <com.google.javascript.jscomp.parsing.IRFactory$1: int[] $SwitchMap$com$google$javascript$jscomp$parsing$parser$TokenType> 
(assert true)
(define-const var332 Int (ordinal/-291641772 (cast-from-var2846-to-var1571 var2413))) ; Statement: $i0 = virtualinvoke r0.<com.google.javascript.jscomp.parsing.parser.TokenType: int ordinal()>() 
(define-const var380 Int (select var2058 var332)) ; Statement: $i1 = $r1[$i0] 
 ; Statement: tableswitch($i1) {     case 3: goto $r43 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token EXPONENT>;     case 4: goto $r42 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token ASSIGN_EXPONENT>;     case 5: goto $r41 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token COALESCE>;     case 6: goto $r40 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token ASSIGN_COALESCE>;     case 7: goto $r39 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token ASSIGN_OR>;     case 8: goto $r38 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token ASSIGN_AND>;     case 9: goto $r44 = new java.lang.IllegalStateException;     case 10: goto $r44 = new java.lang.IllegalStateException;     case 11: goto $r44 = new java.lang.IllegalStateException;     case 12: goto $r44 = new java.lang.IllegalStateException;     case 13: goto $r44 = new java.lang.IllegalStateException;     case 14: goto $r44 = new java.lang.IllegalStateException;     case 15: goto $r44 = new java.lang.IllegalStateException;     case 16: goto $r44 = new java.lang.IllegalStateException;     case 17: goto $r44 = new java.lang.IllegalStateException;     case 18: goto $r44 = new java.lang.IllegalStateException;     case 19: goto $r44 = new java.lang.IllegalStateException;     case 20: goto $r44 = new java.lang.IllegalStateException;     case 21: goto $r37 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token ADD>;     case 22: goto $r36 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token SUB>;     case 23: goto $r44 = new java.lang.IllegalStateException;     case 24: goto $r44 = new java.lang.IllegalStateException;     case 25: goto $r44 = new java.lang.IllegalStateException;     case 26: goto $r35 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token BITOR>;     case 27: goto $r34 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token BITXOR>;     case 28: goto $r33 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token BITAND>;     case 29: goto $r32 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token EQ>;     case 30: goto $r31 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token NE>;     case 31: goto $r30 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token LT>;     case 32: goto $r29 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token LE>;     case 33: goto $r28 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token GT>;     case 34: goto $r27 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token GE>;     case 35: goto $r26 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token LSH>;     case 36: goto $r25 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token RSH>;     case 37: goto $r24 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token URSH>;     case 38: goto $r23 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token MUL>;     case 39: goto $r22 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token DIV>;     case 40: goto $r21 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token MOD>;     case 41: goto $r20 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token SHEQ>;     case 42: goto $r19 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token SHNE>;     case 43: goto $r18 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token IN>;     case 44: goto $r17 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token INSTANCEOF>;     case 45: goto $r16 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token COMMA>;     case 46: goto $r15 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token ASSIGN>;     case 47: goto $r14 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token ASSIGN_BITOR>;     case 48: goto $r13 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token ASSIGN_BITXOR>;     case 49: goto $r12 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token ASSIGN_BITAND>;     case 50: goto $r11 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token ASSIGN_LSH>;     case 51: goto $r10 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token ASSIGN_RSH>;     case 52: goto $r9 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token ASSIGN_URSH>;     case 53: goto $r8 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token ASSIGN_ADD>;     case 54: goto $r7 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token ASSIGN_SUB>;     case 55: goto $r6 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token ASSIGN_MUL>;     case 56: goto $r5 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token ASSIGN_DIV>;     case 57: goto $r4 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token ASSIGN_MOD>;     case 58: goto $r3 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token OR>;     case 59: goto $r2 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token AND>;     default: goto $r44 = new java.lang.IllegalStateException; } 
(assert (and (= var380 49) (and (not (= var380 48)) (and (not (= var380 47)) (and (not (= var380 46)) (and (not (= var380 45)) (and (not (= var380 44)) (and (not (= var380 43)) (and (not (= var380 42)) (and (not (= var380 41)) (and (not (= var380 40)) (and (not (= var380 39)) (and (not (= var380 38)) (and (not (= var380 37)) (and (not (= var380 36)) (and (not (= var380 35)) (and (not (= var380 34)) (and (not (= var380 33)) (and (not (= var380 32)) (and (not (= var380 31)) (and (not (= var380 30)) (and (not (= var380 29)) (and (not (= var380 28)) (and (not (= var380 27)) (and (not (= var380 26)) (and (not (= var380 25)) (and (not (= var380 24)) (and (not (= var380 23)) (and (not (= var380 22)) (and (not (= var380 21)) (and (not (= var380 20)) (and (not (= var380 19)) (and (not (= var380 18)) (and (not (= var380 17)) (and (not (= var380 16)) (and (not (= var380 15)) (and (not (= var380 14)) (and (not (= var380 13)) (and (not (= var380 12)) (and (not (= var380 11)) (and (not (= var380 10)) (and (not (= var380 9)) (and (not (= var380 8)) (and (not (= var380 7)) (and (not (= var380 6)) (and (not (= var380 5)) (and (not (= var380 4)) (and (not (= var380 3)) true)))))))))))))))))))))))))))))))))))))))))))))))) ; Intersect: Cond: $i1 == 49  and Intersect: Negate: Cond: $i1 == 48   and Intersect: Negate: Cond: $i1 == 47   and Intersect: Negate: Cond: $i1 == 46   and Intersect: Negate: Cond: $i1 == 45   and Intersect: Negate: Cond: $i1 == 44   and Intersect: Negate: Cond: $i1 == 43   and Intersect: Negate: Cond: $i1 == 42   and Intersect: Negate: Cond: $i1 == 41   and Intersect: Negate: Cond: $i1 == 40   and Intersect: Negate: Cond: $i1 == 39   and Intersect: Negate: Cond: $i1 == 38   and Intersect: Negate: Cond: $i1 == 37   and Intersect: Negate: Cond: $i1 == 36   and Intersect: Negate: Cond: $i1 == 35   and Intersect: Negate: Cond: $i1 == 34   and Intersect: Negate: Cond: $i1 == 33   and Intersect: Negate: Cond: $i1 == 32   and Intersect: Negate: Cond: $i1 == 31   and Intersect: Negate: Cond: $i1 == 30   and Intersect: Negate: Cond: $i1 == 29   and Intersect: Negate: Cond: $i1 == 28   and Intersect: Negate: Cond: $i1 == 27   and Intersect: Negate: Cond: $i1 == 26   and Intersect: Negate: Cond: $i1 == 25   and Intersect: Negate: Cond: $i1 == 24   and Intersect: Negate: Cond: $i1 == 23   and Intersect: Negate: Cond: $i1 == 22   and Intersect: Negate: Cond: $i1 == 21   and Intersect: Negate: Cond: $i1 == 20   and Intersect: Negate: Cond: $i1 == 19   and Intersect: Negate: Cond: $i1 == 18   and Intersect: Negate: Cond: $i1 == 17   and Intersect: Negate: Cond: $i1 == 16   and Intersect: Negate: Cond: $i1 == 15   and Intersect: Negate: Cond: $i1 == 14   and Intersect: Negate: Cond: $i1 == 13   and Intersect: Negate: Cond: $i1 == 12   and Intersect: Negate: Cond: $i1 == 11   and Intersect: Negate: Cond: $i1 == 10   and Intersect: Negate: Cond: $i1 == 9   and Intersect: Negate: Cond: $i1 == 8   and Intersect: Negate: Cond: $i1 == 7   and Intersect: Negate: Cond: $i1 == 6   and Intersect: Negate: Cond: $i1 == 5   and Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Non Conditional                                               
(define-const var284 var1203 var1203-ASSIGN_BITAND) ; Statement: $r12 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token ASSIGN_BITAND> 
 ; Statement: return $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {ordinal/-291641772=([java.lang.Enum], int), cast-from-var2846-to-var1571=([com.google.javascript.jscomp.parsing.parser.TokenType], java.lang.Enum)}
; {var2846=com.google.javascript.jscomp.parsing.parser.TokenType, var2413=r0, var2328=com.google.javascript.jscomp.parsing.IRFactory$1, var2058=$r1, var1571=java.lang.Enum, var332=$i0, var380=$i1, var1203=com.google.javascript.rhino.Token, var284=$r12}
; {com.google.javascript.jscomp.parsing.parser.TokenType=var2846, r0=var2413, com.google.javascript.jscomp.parsing.IRFactory$1=var2328, $r1=var2058, java.lang.Enum=var1571, $i0=var332, $i1=var380, com.google.javascript.rhino.Token=var1203, $r12=var284}
;seq 
;cnt {}
;stmts r0 := @parameter0: com.google.javascript.jscomp.parsing.parser.TokenType;	$r1 = <com.google.javascript.jscomp.parsing.IRFactory$1: int[] $SwitchMap$com$google$javascript$jscomp$parsing$parser$TokenType>;	$i0 = virtualinvoke r0.<com.google.javascript.jscomp.parsing.parser.TokenType: int ordinal()>();	$i1 = $r1[$i0];	tableswitch($i1) {     case 3: goto $r43 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token EXPONENT>;     case 4: goto $r42 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token ASSIGN_EXPONENT>;     case 5: goto $r41 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token COALESCE>;     case 6: goto $r40 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token ASSIGN_COALESCE>;     case 7: goto $r39 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token ASSIGN_OR>;     case 8: goto $r38 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token ASSIGN_AND>;     case 9: goto $r44 = new java.lang.IllegalStateException;     case 10: goto $r44 = new java.lang.IllegalStateException;     case 11: goto $r44 = new java.lang.IllegalStateException;     case 12: goto $r44 = new java.lang.IllegalStateException;     case 13: goto $r44 = new java.lang.IllegalStateException;     case 14: goto $r44 = new java.lang.IllegalStateException;     case 15: goto $r44 = new java.lang.IllegalStateException;     case 16: goto $r44 = new java.lang.IllegalStateException;     case 17: goto $r44 = new java.lang.IllegalStateException;     case 18: goto $r44 = new java.lang.IllegalStateException;     case 19: goto $r44 = new java.lang.IllegalStateException;     case 20: goto $r44 = new java.lang.IllegalStateException;     case 21: goto $r37 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token ADD>;     case 22: goto $r36 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token SUB>;     case 23: goto $r44 = new java.lang.IllegalStateException;     case 24: goto $r44 = new java.lang.IllegalStateException;     case 25: goto $r44 = new java.lang.IllegalStateException;     case 26: goto $r35 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token BITOR>;     case 27: goto $r34 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token BITXOR>;     case 28: goto $r33 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token BITAND>;     case 29: goto $r32 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token EQ>;     case 30: goto $r31 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token NE>;     case 31: goto $r30 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token LT>;     case 32: goto $r29 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token LE>;     case 33: goto $r28 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token GT>;     case 34: goto $r27 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token GE>;     case 35: goto $r26 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token LSH>;     case 36: goto $r25 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token RSH>;     case 37: goto $r24 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token URSH>;     case 38: goto $r23 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token MUL>;     case 39: goto $r22 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token DIV>;     case 40: goto $r21 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token MOD>;     case 41: goto $r20 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token SHEQ>;     case 42: goto $r19 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token SHNE>;     case 43: goto $r18 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token IN>;     case 44: goto $r17 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token INSTANCEOF>;     case 45: goto $r16 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token COMMA>;     case 46: goto $r15 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token ASSIGN>;     case 47: goto $r14 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token ASSIGN_BITOR>;     case 48: goto $r13 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token ASSIGN_BITXOR>;     case 49: goto $r12 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token ASSIGN_BITAND>;     case 50: goto $r11 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token ASSIGN_LSH>;     case 51: goto $r10 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token ASSIGN_RSH>;     case 52: goto $r9 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token ASSIGN_URSH>;     case 53: goto $r8 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token ASSIGN_ADD>;     case 54: goto $r7 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token ASSIGN_SUB>;     case 55: goto $r6 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token ASSIGN_MUL>;     case 56: goto $r5 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token ASSIGN_DIV>;     case 57: goto $r4 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token ASSIGN_MOD>;     case 58: goto $r3 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token OR>;     case 59: goto $r2 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token AND>;     default: goto $r44 = new java.lang.IllegalStateException; };	$r12 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token ASSIGN_BITAND>;	return $r12
;block_num 2