(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var566 0)
(declare-sort var1196 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var1196-to-String (var1196) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var566 var566)
(declare-const null-var1196 var1196)
(declare-const var1334 var566) ; Statement: $r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$length__511 
(assert (not (= var1334 null-var566)))
(declare-const var3550 var1196) ; Statement: $r1 := @parameter0: java.lang.Object 
(assert (not (= var3550 null-var1196)))
(define-const var2673 String (cast-from-var1196-to-String var3550)) ; Statement: $r2 = (java.lang.String) $r1 
(assert true)
(define-const var1051 Int (length/-134980193 var2673)) ; Statement: $i0 = virtualinvoke $r2.<java.lang.String: int length()>() 
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var1196-to-String=([java.lang.Object], java.lang.String), length/-134980193=([java.lang.String], int)}
; {var566=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$length__511, var1334=$r0, var1196=java.lang.Object, var3550=$r1, var2673=$r2, var1051=$i0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$length__511=var566, $r0=var1334, java.lang.Object=var1196, $r1=var3550, $r2=var2673, $i0=var1051}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts $r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$length__511;	$r1 := @parameter0: java.lang.Object;	$r2 = (java.lang.String) $r1;	$i0 = virtualinvoke $r2.<java.lang.String: int length()>();	return $i0
;block_num 1