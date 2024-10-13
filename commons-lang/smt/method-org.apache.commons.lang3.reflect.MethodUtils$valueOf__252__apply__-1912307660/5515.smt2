(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2655 0)
(declare-sort var1289 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var1289-to-ClassObject (var1289) ClassObject)
(declare-fun String_valueOf/-333372740 (var1289) String)
(declare-fun cast-from-ClassObject-to-var1289 (ClassObject) var1289)
(declare-const null-var2655 var2655)
(declare-const null-var1289 var1289)
(declare-const var2179 var2655) ; Statement: $r0 := @this: org.apache.commons.lang3.reflect.MethodUtils$valueOf__252 
(assert (not (= var2179 null-var2655)))
(declare-const var1932 var1289) ; Statement: $r1 := @parameter0: java.lang.Object 
(assert (not (= var1932 null-var1289)))
(define-const var2970 ClassObject (cast-from-var1289-to-ClassObject var1932)) ; Statement: $r2 = (java.lang.Class) $r1 
(define-const var3950 String (String_valueOf/-333372740 (cast-from-ClassObject-to-var1289 var2970))) ; Statement: $r3 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r2) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var1289-to-ClassObject=([java.lang.Object], java.lang.Class), String_valueOf/-333372740=([java.lang.Object], java.lang.String), cast-from-ClassObject-to-var1289=([java.lang.Class], java.lang.Object)}
; {var2655=org.apache.commons.lang3.reflect.MethodUtils$valueOf__252, var2179=$r0, var1289=java.lang.Object, var1932=$r1, var2970=$r2, var3950=$r3}
; {org.apache.commons.lang3.reflect.MethodUtils$valueOf__252=var2655, $r0=var2179, java.lang.Object=var1289, $r1=var1932, $r2=var2970, $r3=var3950}
;seq <java.lang.String: java.lang.String valueOf(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1}
;stmts $r0 := @this: org.apache.commons.lang3.reflect.MethodUtils$valueOf__252;	$r1 := @parameter0: java.lang.Object;	$r2 = (java.lang.Class) $r1;	$r3 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r2);	return $r3
;block_num 1