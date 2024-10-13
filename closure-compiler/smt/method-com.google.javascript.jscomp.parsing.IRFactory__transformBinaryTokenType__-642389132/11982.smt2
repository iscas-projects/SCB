(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1912 0)
(declare-sort var3053 0)
(declare-sort var1805 0)
(declare-sort var280 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun ordinal/-291641772 (var1805) Int)
(declare-fun cast-from-var1912-to-var1805 (var1912) var1805)
(declare-const null-var1912 var1912)
(declare-const var3053-$SwitchMap$com$google$javascript$jscomp$parsing$parser$TokenType (Array Int Int))
(declare-const var280-SHEQ var280)
(declare-const var3577 var1912) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.parsing.parser.TokenType 
(assert (not (= var3577 null-var1912)))
(define-const var3448 (Array Int Int) var3053-$SwitchMap$com$google$javascript$jscomp$parsing$parser$TokenType) ; Statement: $r1 = <com.google.javascript.jscomp.parsing.IRFactory$1: int[] $SwitchMap$com$google$javascript$jscomp$parsing$parser$TokenType> 
(assert true)
(define-const var1848 Int (ordinal/-291641772 (cast-from-var1912-to-var1805 var3577))) ; Statement: $i0 = virtualinvoke r0.<com.google.javascript.jscomp.parsing.parser.TokenType: int ordinal()>() 
(define-const var1383 Int (select var3448 var1848)) ; Statement: $i1 = $r1[$i0] 
 ; Statement: tableswitch($i1) {     case 3: goto $r43 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token EXPONENT>;     case 4: goto $r42 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token ASSIGN_EXPONENT>;     case 5: goto $r41 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token COALESCE>;     case 6: goto $r40 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token ASSIGN_COALESCE>;     case 7: goto $r39 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token ASSIGN_OR>;     case 8: goto $r38 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token ASSIGN_AND>;     case 9: goto $r44 = new java.lang.IllegalStateException;     case 10: goto $r44 = new java.lang.IllegalStateException;     case 11: goto $r44 = new java.lang.IllegalStateException;     case 12: goto $r44 = new java.lang.IllegalStateException;     case 13: goto $r44 = new java.lang.IllegalStateException;     case 14: goto $r44 = new java.lang.IllegalStateException;     case 15: goto $r44 = new java.lang.IllegalStateException;     case 16: goto $r44 = new java.lang.IllegalStateException;     case 17: goto $r44 = new java.lang.IllegalStateException;     case 18: goto $r44 = new java.lang.IllegalStateException;     case 19: goto $r44 = new java.lang.IllegalStateException;     case 20: goto $r44 = new java.lang.IllegalStateException;     case 21: goto $r37 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token ADD>;     case 22: goto $r36 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token SUB>;     case 23: goto $r44 = new java.lang.IllegalStateException;     case 24: goto $r44 = new java.lang.IllegalStateException;     case 25: goto $r44 = new java.lang.IllegalStateException;     case 26: goto $r35 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token BITOR>;     case 27: goto $r34 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token BITXOR>;     case 28: goto $r33 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token BITAND>;     case 29: goto $r32 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token EQ>;     case 30: goto $r31 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token NE>;     case 31: goto $r30 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token LT>;     case 32: goto $r29 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token LE>;     case 33: goto $r28 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token GT>;     case 34: goto $r27 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token GE>;     case 35: goto $r26 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token LSH>;     case 36: goto $r25 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token RSH>;     case 37: goto $r24 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token URSH>;     case 38: goto $r23 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token MUL>;     case 39: goto $r22 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token DIV>;     case 40: goto $r21 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token MOD>;     case 41: goto $r20 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token SHEQ>;     case 42: goto $r19 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token SHNE>;     case 43: goto $r18 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token IN>;     case 44: goto $r17 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token INSTANCEOF>;     case 45: goto $r16 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token COMMA>;     case 46: goto $r15 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token ASSIGN>;     case 47: goto $r14 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token ASSIGN_BITOR>;     case 48: goto $r13 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token ASSIGN_BITXOR>;     case 49: goto $r12 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token ASSIGN_BITAND>;     case 50: goto $r11 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token ASSIGN_LSH>;     case 51: goto $r10 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token ASSIGN_RSH>;     case 52: goto $r9 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token ASSIGN_URSH>;     case 53: goto $r8 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token ASSIGN_ADD>;     case 54: goto $r7 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token ASSIGN_SUB>;     case 55: goto $r6 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token ASSIGN_MUL>;     case 56: goto $r5 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token ASSIGN_DIV>;     case 57: goto $r4 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token ASSIGN_MOD>;     case 58: goto $r3 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token OR>;     case 59: goto $r2 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token AND>;     default: goto $r44 = new java.lang.IllegalStateException; } 
(assert (and (= var1383 41) (and (not (= var1383 40)) (and (not (= var1383 39)) (and (not (= var1383 38)) (and (not (= var1383 37)) (and (not (= var1383 36)) (and (not (= var1383 35)) (and (not (= var1383 34)) (and (not (= var1383 33)) (and (not (= var1383 32)) (and (not (= var1383 31)) (and (not (= var1383 30)) (and (not (= var1383 29)) (and (not (= var1383 28)) (and (not (= var1383 27)) (and (not (= var1383 26)) (and (not (= var1383 25)) (and (not (= var1383 24)) (and (not (= var1383 23)) (and (not (= var1383 22)) (and (not (= var1383 21)) (and (not (= var1383 20)) (and (not (= var1383 19)) (and (not (= var1383 18)) (and (not (= var1383 17)) (and (not (= var1383 16)) (and (not (= var1383 15)) (and (not (= var1383 14)) (and (not (= var1383 13)) (and (not (= var1383 12)) (and (not (= var1383 11)) (and (not (= var1383 10)) (and (not (= var1383 9)) (and (not (= var1383 8)) (and (not (= var1383 7)) (and (not (= var1383 6)) (and (not (= var1383 5)) (and (not (= var1383 4)) (and (not (= var1383 3)) true)))))))))))))))))))))))))))))))))))))))) ; Intersect: Cond: $i1 == 41  and Intersect: Negate: Cond: $i1 == 40   and Intersect: Negate: Cond: $i1 == 39   and Intersect: Negate: Cond: $i1 == 38   and Intersect: Negate: Cond: $i1 == 37   and Intersect: Negate: Cond: $i1 == 36   and Intersect: Negate: Cond: $i1 == 35   and Intersect: Negate: Cond: $i1 == 34   and Intersect: Negate: Cond: $i1 == 33   and Intersect: Negate: Cond: $i1 == 32   and Intersect: Negate: Cond: $i1 == 31   and Intersect: Negate: Cond: $i1 == 30   and Intersect: Negate: Cond: $i1 == 29   and Intersect: Negate: Cond: $i1 == 28   and Intersect: Negate: Cond: $i1 == 27   and Intersect: Negate: Cond: $i1 == 26   and Intersect: Negate: Cond: $i1 == 25   and Intersect: Negate: Cond: $i1 == 24   and Intersect: Negate: Cond: $i1 == 23   and Intersect: Negate: Cond: $i1 == 22   and Intersect: Negate: Cond: $i1 == 21   and Intersect: Negate: Cond: $i1 == 20   and Intersect: Negate: Cond: $i1 == 19   and Intersect: Negate: Cond: $i1 == 18   and Intersect: Negate: Cond: $i1 == 17   and Intersect: Negate: Cond: $i1 == 16   and Intersect: Negate: Cond: $i1 == 15   and Intersect: Negate: Cond: $i1 == 14   and Intersect: Negate: Cond: $i1 == 13   and Intersect: Negate: Cond: $i1 == 12   and Intersect: Negate: Cond: $i1 == 11   and Intersect: Negate: Cond: $i1 == 10   and Intersect: Negate: Cond: $i1 == 9   and Intersect: Negate: Cond: $i1 == 8   and Intersect: Negate: Cond: $i1 == 7   and Intersect: Negate: Cond: $i1 == 6   and Intersect: Negate: Cond: $i1 == 5   and Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Non Conditional                                       
(define-const var899 var280 var280-SHEQ) ; Statement: $r20 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token SHEQ> 
 ; Statement: return $r20 
(check-sat)
(get-model)
(get-unsat-core)
; {ordinal/-291641772=([java.lang.Enum], int), cast-from-var1912-to-var1805=([com.google.javascript.jscomp.parsing.parser.TokenType], java.lang.Enum)}
; {var1912=com.google.javascript.jscomp.parsing.parser.TokenType, var3577=r0, var3053=com.google.javascript.jscomp.parsing.IRFactory$1, var3448=$r1, var1805=java.lang.Enum, var1848=$i0, var1383=$i1, var280=com.google.javascript.rhino.Token, var899=$r20}
; {com.google.javascript.jscomp.parsing.parser.TokenType=var1912, r0=var3577, com.google.javascript.jscomp.parsing.IRFactory$1=var3053, $r1=var3448, java.lang.Enum=var1805, $i0=var1848, $i1=var1383, com.google.javascript.rhino.Token=var280, $r20=var899}
;seq 
;cnt {}
;stmts r0 := @parameter0: com.google.javascript.jscomp.parsing.parser.TokenType;	$r1 = <com.google.javascript.jscomp.parsing.IRFactory$1: int[] $SwitchMap$com$google$javascript$jscomp$parsing$parser$TokenType>;	$i0 = virtualinvoke r0.<com.google.javascript.jscomp.parsing.parser.TokenType: int ordinal()>();	$i1 = $r1[$i0];	tableswitch($i1) {     case 3: goto $r43 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token EXPONENT>;     case 4: goto $r42 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token ASSIGN_EXPONENT>;     case 5: goto $r41 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token COALESCE>;     case 6: goto $r40 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token ASSIGN_COALESCE>;     case 7: goto $r39 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token ASSIGN_OR>;     case 8: goto $r38 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token ASSIGN_AND>;     case 9: goto $r44 = new java.lang.IllegalStateException;     case 10: goto $r44 = new java.lang.IllegalStateException;     case 11: goto $r44 = new java.lang.IllegalStateException;     case 12: goto $r44 = new java.lang.IllegalStateException;     case 13: goto $r44 = new java.lang.IllegalStateException;     case 14: goto $r44 = new java.lang.IllegalStateException;     case 15: goto $r44 = new java.lang.IllegalStateException;     case 16: goto $r44 = new java.lang.IllegalStateException;     case 17: goto $r44 = new java.lang.IllegalStateException;     case 18: goto $r44 = new java.lang.IllegalStateException;     case 19: goto $r44 = new java.lang.IllegalStateException;     case 20: goto $r44 = new java.lang.IllegalStateException;     case 21: goto $r37 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token ADD>;     case 22: goto $r36 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token SUB>;     case 23: goto $r44 = new java.lang.IllegalStateException;     case 24: goto $r44 = new java.lang.IllegalStateException;     case 25: goto $r44 = new java.lang.IllegalStateException;     case 26: goto $r35 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token BITOR>;     case 27: goto $r34 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token BITXOR>;     case 28: goto $r33 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token BITAND>;     case 29: goto $r32 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token EQ>;     case 30: goto $r31 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token NE>;     case 31: goto $r30 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token LT>;     case 32: goto $r29 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token LE>;     case 33: goto $r28 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token GT>;     case 34: goto $r27 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token GE>;     case 35: goto $r26 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token LSH>;     case 36: goto $r25 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token RSH>;     case 37: goto $r24 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token URSH>;     case 38: goto $r23 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token MUL>;     case 39: goto $r22 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token DIV>;     case 40: goto $r21 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token MOD>;     case 41: goto $r20 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token SHEQ>;     case 42: goto $r19 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token SHNE>;     case 43: goto $r18 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token IN>;     case 44: goto $r17 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token INSTANCEOF>;     case 45: goto $r16 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token COMMA>;     case 46: goto $r15 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token ASSIGN>;     case 47: goto $r14 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token ASSIGN_BITOR>;     case 48: goto $r13 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token ASSIGN_BITXOR>;     case 49: goto $r12 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token ASSIGN_BITAND>;     case 50: goto $r11 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token ASSIGN_LSH>;     case 51: goto $r10 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token ASSIGN_RSH>;     case 52: goto $r9 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token ASSIGN_URSH>;     case 53: goto $r8 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token ASSIGN_ADD>;     case 54: goto $r7 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token ASSIGN_SUB>;     case 55: goto $r6 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token ASSIGN_MUL>;     case 56: goto $r5 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token ASSIGN_DIV>;     case 57: goto $r4 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token ASSIGN_MOD>;     case 58: goto $r3 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token OR>;     case 59: goto $r2 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token AND>;     default: goto $r44 = new java.lang.IllegalStateException; };	$r20 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token SHEQ>;	return $r20
;block_num 2