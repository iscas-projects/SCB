(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3202 0)
(declare-sort var349 0)
(declare-sort var483 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun propertyGetters/183805422 (var3202) var483)
(declare-fun String_valueOf/-333372740 (var349) String)
(declare-fun var483_get/1088891777 (var483 var349) var349)
(declare-fun cast-from-String-to-var349 (String) var349)
(declare-const null-var3202 var3202)
(declare-const null-var349 var349)
(declare-const var731 var3202) ; Statement: r0 := @this: jdk.internal.dynalink.beans.AbstractJavaLinker 
(assert (not (= var731 null-var3202)))
(declare-const var3120 var349) ; Statement: r1 := @parameter0: java.lang.Object 
(assert (not (= var3120 null-var349)))
(define-const var2940 var483 (propertyGetters/183805422 var731)) ; Statement: $r2 = r0.<jdk.internal.dynalink.beans.AbstractJavaLinker: java.util.Map propertyGetters> 
(define-const var2471 String (String_valueOf/-333372740 var3120)) ; Statement: $r3 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r1) 
(define-const var1756 var349 (var483_get/1088891777 var2940 (cast-from-String-to-var349 var2471))) ; Statement: $r4 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>($r3) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {propertyGetters/183805422=([jdk.internal.dynalink.beans.AbstractJavaLinker], java.util.Map), String_valueOf/-333372740=([java.lang.Object], java.lang.String), var483_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var349=([java.lang.String], java.lang.Object)}
; {var3202=jdk.internal.dynalink.beans.AbstractJavaLinker, var731=r0, var349=java.lang.Object, var3120=r1, var483=java.util.Map, var2940=$r2, var2471=$r3, var1756=$r4}
; {jdk.internal.dynalink.beans.AbstractJavaLinker=var3202, r0=var731, java.lang.Object=var349, r1=var3120, java.util.Map=var483, $r2=var2940, $r3=var2471, $r4=var1756}
;seq <java.lang.String: java.lang.String valueOf(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1}
;stmts r0 := @this: jdk.internal.dynalink.beans.AbstractJavaLinker;	r1 := @parameter0: java.lang.Object;	$r2 = r0.<jdk.internal.dynalink.beans.AbstractJavaLinker: java.util.Map propertyGetters>;	$r3 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r1);	$r4 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>($r3);	return $r4
;block_num 1