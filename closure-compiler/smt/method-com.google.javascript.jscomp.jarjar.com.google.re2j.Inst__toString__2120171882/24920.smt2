(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2249 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun op/1283148626 (var2249) Int)
(declare-const null-var2249 var2249)
(declare-const var694 var2249) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.re2j.Inst 
(assert (not (= var694 null-var2249)))
(define-const var3476 Int (op/1283148626 var694)) ; Statement: $i0 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Inst: int op> 
 ; Statement: tableswitch($i0) {     case 1: goto $r49 = new java.lang.StringBuilder;     case 2: goto $r43 = new java.lang.StringBuilder;     case 3: goto $r37 = new java.lang.StringBuilder;     case 4: goto $r31 = new java.lang.StringBuilder;     case 5: goto return "fail";     case 6: goto return "match";     case 7: goto $r27 = new java.lang.StringBuilder;     case 8: goto $r17 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Inst: int[] runes>;     case 9: goto $r9 = new java.lang.StringBuilder;     case 10: goto $r5 = new java.lang.StringBuilder;     case 11: goto $r1 = new java.lang.StringBuilder;     default: goto $r55 = new java.lang.IllegalStateException; } 
(assert (and (= var3476 5) (and (not (= var3476 4)) (and (not (= var3476 3)) (and (not (= var3476 2)) (and (not (= var3476 1)) true)))))) ; Intersect: Cond: $i0 == 5  and Intersect: Negate: Cond: $i0 == 4   and Intersect: Negate: Cond: $i0 == 3   and Intersect: Negate: Cond: $i0 == 2   and Intersect: Negate: Cond: $i0 == 1   and Non Conditional     
 ; Statement: return "fail" 
(check-sat)
(get-model)
(get-unsat-core)
; {op/1283148626=([com.google.javascript.jscomp.jarjar.com.google.re2j.Inst], int)}
; {var2249=com.google.javascript.jscomp.jarjar.com.google.re2j.Inst, var694=r0, var3476=$i0}
; {com.google.javascript.jscomp.jarjar.com.google.re2j.Inst=var2249, r0=var694, $i0=var3476}
;seq 
;cnt {}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.re2j.Inst;	$i0 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Inst: int op>;	tableswitch($i0) {     case 1: goto $r49 = new java.lang.StringBuilder;     case 2: goto $r43 = new java.lang.StringBuilder;     case 3: goto $r37 = new java.lang.StringBuilder;     case 4: goto $r31 = new java.lang.StringBuilder;     case 5: goto return "fail";     case 6: goto return "match";     case 7: goto $r27 = new java.lang.StringBuilder;     case 8: goto $r17 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Inst: int[] runes>;     case 9: goto $r9 = new java.lang.StringBuilder;     case 10: goto $r5 = new java.lang.StringBuilder;     case 11: goto $r1 = new java.lang.StringBuilder;     default: goto $r55 = new java.lang.IllegalStateException; };	return "fail"
;block_num 2