(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2634 0)
(declare-sort var1635 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var1635-to-String (var1635) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var2634 var2634)
(declare-const null-var1635 var1635)
(declare-const var3560 var2634) ; Statement: $r0 := @this: com.google.javascript.jscomp.deps.ModuleLoader$length__1086 
(assert (not (= var3560 null-var2634)))
(declare-const var1131 var1635) ; Statement: $r1 := @parameter0: java.lang.Object 
(assert (not (= var1131 null-var1635)))
(define-const var3594 String (cast-from-var1635-to-String var1131)) ; Statement: $r2 = (java.lang.String) $r1 
(assert true)
(define-const var1956 Int (length/-134980193 var3594)) ; Statement: $i0 = virtualinvoke $r2.<java.lang.String: int length()>() 
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var1635-to-String=([java.lang.Object], java.lang.String), length/-134980193=([java.lang.String], int)}
; {var2634=com.google.javascript.jscomp.deps.ModuleLoader$length__1086, var3560=$r0, var1635=java.lang.Object, var1131=$r1, var3594=$r2, var1956=$i0}
; {com.google.javascript.jscomp.deps.ModuleLoader$length__1086=var2634, $r0=var3560, java.lang.Object=var1635, $r1=var1131, $r2=var3594, $i0=var1956}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts $r0 := @this: com.google.javascript.jscomp.deps.ModuleLoader$length__1086;	$r1 := @parameter0: java.lang.Object;	$r2 = (java.lang.String) $r1;	$i0 = virtualinvoke $r2.<java.lang.String: int length()>();	return $i0
;block_num 1