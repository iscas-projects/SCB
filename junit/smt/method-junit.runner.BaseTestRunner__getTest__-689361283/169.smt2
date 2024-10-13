(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var43 0)
(declare-sort var738 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun clearStatus/914515119 (var43) void)
(declare-const null-var43 var43)
(declare-const null-String String)
(declare-const var1335 var43) ; Statement: r1 := @this: junit.runner.BaseTestRunner 
(assert (not (= var1335 null-var43)))
(declare-const var3668 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3668 null-String)))
(assert true)
(define-const var3418 Int (length/-134980193 var3668)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i0 > 0 goto r32 = virtualinvoke r1.<junit.runner.BaseTestRunner: java.lang.Class loadSuiteClass(java.lang.String)>(r0) 
(assert (not (> var3418 0))) ; Negate: Cond: $i0 > 0  
(assert true)
;(assert (clearStatus/914515119 var1335)) ; Statement: virtualinvoke r1.<junit.runner.BaseTestRunner: void clearStatus()>() 

(declare-const var1335!1 var43)
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), clearStatus/914515119=([junit.runner.BaseTestRunner], void)}
; {var43=junit.runner.BaseTestRunner, var1335=r1, var3668=r0, var738=null_type, var3418=$i0}
; {junit.runner.BaseTestRunner=var43, r1=var1335, r0=var3668, null_type=var738, $i0=var3418}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r1 := @this: junit.runner.BaseTestRunner;	r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if $i0 > 0 goto r32 = virtualinvoke r1.<junit.runner.BaseTestRunner: java.lang.Class loadSuiteClass(java.lang.String)>(r0);	virtualinvoke r1.<junit.runner.BaseTestRunner: void clearStatus()>();	return null
;block_num 2