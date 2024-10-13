(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1264 0)
(declare-sort var1654 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun op/1283148626 (var1264) Int)
(declare-fun var1654-init () var1654)
(declare-fun <init>/-1092629202 (var1654 String) void)
(declare-const null-var1264 var1264)
(declare-const var3925 var1264) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.re2j.Inst 
(assert (not (= var3925 null-var1264)))
(define-const var2854 Int (op/1283148626 var3925)) ; Statement: $i0 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Inst: int op> 
 ; Statement: tableswitch($i0) {     case 1: goto $r49 = new java.lang.StringBuilder;     case 2: goto $r43 = new java.lang.StringBuilder;     case 3: goto $r37 = new java.lang.StringBuilder;     case 4: goto $r31 = new java.lang.StringBuilder;     case 5: goto return "fail";     case 6: goto return "match";     case 7: goto $r27 = new java.lang.StringBuilder;     case 8: goto $r17 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Inst: int[] runes>;     case 9: goto $r9 = new java.lang.StringBuilder;     case 10: goto $r5 = new java.lang.StringBuilder;     case 11: goto $r1 = new java.lang.StringBuilder;     default: goto $r55 = new java.lang.IllegalStateException; } 
(assert (and (not (= var2854 11)) (and (not (= var2854 10)) (and (not (= var2854 9)) (and (not (= var2854 8)) (and (not (= var2854 7)) (and (not (= var2854 6)) (and (not (= var2854 5)) (and (not (= var2854 4)) (and (not (= var2854 3)) (and (not (= var2854 2)) (and (not (= var2854 1)) true)))))))))))) ; Intersect: Negate: Cond: $i0 == 11   and Intersect: Negate: Cond: $i0 == 10   and Intersect: Negate: Cond: $i0 == 9   and Intersect: Negate: Cond: $i0 == 8   and Intersect: Negate: Cond: $i0 == 7   and Intersect: Negate: Cond: $i0 == 6   and Intersect: Negate: Cond: $i0 == 5   and Intersect: Negate: Cond: $i0 == 4   and Intersect: Negate: Cond: $i0 == 3   and Intersect: Negate: Cond: $i0 == 2   and Intersect: Negate: Cond: $i0 == 1   and Non Conditional           
(define-const var3408 var1654 var1654-init) ; Statement: $r55 = new java.lang.IllegalStateException 
(assert true)
;(assert (<init>/-1092629202 var3408 "unhandled case in Inst.toString")) ; Statement: specialinvoke $r55.<java.lang.IllegalStateException: void <init>(java.lang.String)>("unhandled case in Inst.toString") 

(declare-const var3408!1 var1654)
(declare-const var941 String)
 ; Statement: throw $r55 
(check-sat)
(get-model)
(get-unsat-core)
; {op/1283148626=([com.google.javascript.jscomp.jarjar.com.google.re2j.Inst], int), var1654-init=([], java.lang.IllegalStateException), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var1264=com.google.javascript.jscomp.jarjar.com.google.re2j.Inst, var3925=r0, var2854=$i0, var1654=java.lang.IllegalStateException, var3408=$r55, var941="unhandled case in Inst.toString"}
; {com.google.javascript.jscomp.jarjar.com.google.re2j.Inst=var1264, r0=var3925, $i0=var2854, java.lang.IllegalStateException=var1654, $r55=var3408, "unhandled case in Inst.toString"=var941}
;seq 
;cnt {}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.re2j.Inst;	$i0 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Inst: int op>;	tableswitch($i0) {     case 1: goto $r49 = new java.lang.StringBuilder;     case 2: goto $r43 = new java.lang.StringBuilder;     case 3: goto $r37 = new java.lang.StringBuilder;     case 4: goto $r31 = new java.lang.StringBuilder;     case 5: goto return "fail";     case 6: goto return "match";     case 7: goto $r27 = new java.lang.StringBuilder;     case 8: goto $r17 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Inst: int[] runes>;     case 9: goto $r9 = new java.lang.StringBuilder;     case 10: goto $r5 = new java.lang.StringBuilder;     case 11: goto $r1 = new java.lang.StringBuilder;     default: goto $r55 = new java.lang.IllegalStateException; };	$r55 = new java.lang.IllegalStateException;	specialinvoke $r55.<java.lang.IllegalStateException: void <init>(java.lang.String)>("unhandled case in Inst.toString");	throw $r55
;block_num 2