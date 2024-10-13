(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1586 0)
(declare-sort var1847 0)
(declare-sort var1150 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1847-init () var1847)
(declare-fun getClass/1258963082 (var1150) ClassObject)
(declare-fun cast-from-var1586-to-var1150 (var1586) var1150)
(declare-fun String_valueOf/-333372740 (var1150) String)
(declare-fun cast-from-ClassObject-to-var1150 (ClassObject) var1150)
(declare-fun <init>/7803314 (var1847 String) void)
(declare-const null-var1586 var1586)
(declare-const null-Int Int)
(declare-const var3063 var1586) ; Statement: r1 := @this: jdk.nashorn.internal.runtime.arrays.ContinuousArrayData 
(assert (not (= var3063 null-var1586)))
(declare-const var211 Int) ; Statement: l0 := @parameter0: long 
(assert (not (= var211 null-Int)))
(define-const var3263 var1847 var1847-init) ; Statement: $r0 = new java.lang.ClassCastException 
(assert true)
(define-const var2942 ClassObject (getClass/1258963082 (cast-from-var1586-to-var1150 var3063))) ; Statement: $r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(define-const var484 String (String_valueOf/-333372740 (cast-from-ClassObject-to-var1150 var2942))) ; Statement: $r3 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r2) 
(assert true)
;(assert (<init>/7803314 var3263 var484)) ; Statement: specialinvoke $r0.<java.lang.ClassCastException: void <init>(java.lang.String)>($r3) 

(declare-const var3263!1 var1847)
(declare-const var484!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1847-init=([], java.lang.ClassCastException), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var1586-to-var1150=([jdk.nashorn.internal.runtime.arrays.ContinuousArrayData], java.lang.Object), String_valueOf/-333372740=([java.lang.Object], java.lang.String), cast-from-ClassObject-to-var1150=([java.lang.Class], java.lang.Object), <init>/7803314=([java.lang.ClassCastException, java.lang.String], void)}
; {var1586=jdk.nashorn.internal.runtime.arrays.ContinuousArrayData, var3063=r1, var211=l0, var1847=java.lang.ClassCastException, var3263=$r0, var1150=java.lang.Object, var2942=$r2, var484=$r3}
; {jdk.nashorn.internal.runtime.arrays.ContinuousArrayData=var1586, r1=var3063, l0=var211, java.lang.ClassCastException=var1847, $r0=var3263, java.lang.Object=var1150, $r2=var2942, $r3=var484}
;seq <java.lang.String: java.lang.String valueOf(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1}
;stmts r1 := @this: jdk.nashorn.internal.runtime.arrays.ContinuousArrayData;	l0 := @parameter0: long;	$r0 = new java.lang.ClassCastException;	$r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r3 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r2);	specialinvoke $r0.<java.lang.ClassCastException: void <init>(java.lang.String)>($r3);	throw $r0
;block_num 1