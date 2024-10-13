(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1032 0)
(declare-sort var3621 0)
(declare-sort var3655 0)
(declare-sort var1534 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_valueOf/-333372740 (var3621) String)
(declare-fun methods/183805422 (var1032) var3655)
(declare-fun getDynamicMethod/-464673451 (var1032 String var3655) var1534)
(declare-const null-var1032 var1032)
(declare-const null-var3621 var3621)
(declare-const var1278 var1032) ; Statement: r0 := @this: jdk.internal.dynalink.beans.AbstractJavaLinker 
(assert (not (= var1278 null-var1032)))
(declare-const var1848 var3621) ; Statement: r1 := @parameter0: java.lang.Object 
(assert (not (= var1848 null-var3621)))
(define-const var709 String (String_valueOf/-333372740 var1848)) ; Statement: $r3 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r1) 
(define-const var3595 var3655 (methods/183805422 var1278)) ; Statement: $r2 = r0.<jdk.internal.dynalink.beans.AbstractJavaLinker: java.util.Map methods> 
(assert true)
(define-const var2708 var1534 (getDynamicMethod/-464673451 var1278 var709 var3595)) ; Statement: $r4 = specialinvoke r0.<jdk.internal.dynalink.beans.AbstractJavaLinker: jdk.internal.dynalink.beans.DynamicMethod getDynamicMethod(java.lang.String,java.util.Map)>($r3, $r2) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String_valueOf/-333372740=([java.lang.Object], java.lang.String), methods/183805422=([jdk.internal.dynalink.beans.AbstractJavaLinker], java.util.Map), getDynamicMethod/-464673451=([jdk.internal.dynalink.beans.AbstractJavaLinker, java.lang.String, java.util.Map], jdk.internal.dynalink.beans.DynamicMethod)}
; {var1032=jdk.internal.dynalink.beans.AbstractJavaLinker, var1278=r0, var3621=java.lang.Object, var1848=r1, var709=$r3, var3655=java.util.Map, var3595=$r2, var1534=jdk.internal.dynalink.beans.DynamicMethod, var2708=$r4}
; {jdk.internal.dynalink.beans.AbstractJavaLinker=var1032, r0=var1278, java.lang.Object=var3621, r1=var1848, $r3=var709, java.util.Map=var3655, $r2=var3595, jdk.internal.dynalink.beans.DynamicMethod=var1534, $r4=var2708}
;seq <java.lang.String: java.lang.String valueOf(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1}
;stmts r0 := @this: jdk.internal.dynalink.beans.AbstractJavaLinker;	r1 := @parameter0: java.lang.Object;	$r3 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r1);	$r2 = r0.<jdk.internal.dynalink.beans.AbstractJavaLinker: java.util.Map methods>;	$r4 = specialinvoke r0.<jdk.internal.dynalink.beans.AbstractJavaLinker: jdk.internal.dynalink.beans.DynamicMethod getDynamicMethod(java.lang.String,java.util.Map)>($r3, $r2);	return $r4
;block_num 1