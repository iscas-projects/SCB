(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2273 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun <init>/1326397480 (var2273 String) void)
(declare-const null-var2273 var2273)
(declare-const null-Int Int)
(declare-const var2823 var2273) ; Statement: r0 := @this: freemarker.core.BugException 
(assert (not (= var2823 null-var2273)))
(declare-const var279 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var279 null-Int)))
(define-const var1217 String (String_valueOf/1240665136 var279)) ; Statement: $r1 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(i0) 
(assert true)
;(assert (<init>/1326397480 var2823 var1217)) ; Statement: specialinvoke r0.<freemarker.core.BugException: void <init>(java.lang.String)>($r1) 

(declare-const var2823!1 var2273)
(declare-const var1217!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String_valueOf/1240665136=([int], java.lang.String), <init>/1326397480=([freemarker.core.BugException, java.lang.String], void)}
; {var2273=freemarker.core.BugException, var2823=r0, var279=i0, var1217=$r1}
; {freemarker.core.BugException=var2273, r0=var2823, i0=var279, $r1=var1217}
;seq <java.lang.String: java.lang.String valueOf(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1}
;stmts r0 := @this: freemarker.core.BugException;	i0 := @parameter0: int;	$r1 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(i0);	specialinvoke r0.<freemarker.core.BugException: void <init>(java.lang.String)>($r1);	return
;block_num 1