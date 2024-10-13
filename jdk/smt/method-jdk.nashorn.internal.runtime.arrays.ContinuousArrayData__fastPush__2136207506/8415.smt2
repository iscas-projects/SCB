(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3946 0)
(declare-sort var837 0)
(declare-sort var3440 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var837-init () var837)
(declare-fun getClass/1258963082 (var3440) ClassObject)
(declare-fun cast-from-var3946-to-var3440 (var3946) var3440)
(declare-fun String_valueOf/-333372740 (var3440) String)
(declare-fun cast-from-ClassObject-to-var3440 (ClassObject) var3440)
(declare-fun <init>/7803314 (var837 String) void)
(declare-const null-var3946 var3946)
(declare-const null-Float64 Float64)
(declare-const var1791 var3946) ; Statement: r1 := @this: jdk.nashorn.internal.runtime.arrays.ContinuousArrayData 
(assert (not (= var1791 null-var3946)))
(declare-const var1269 Float64) ; Statement: d0 := @parameter0: double 
(assert (not (= var1269 null-Float64)))
(define-const var1018 var837 var837-init) ; Statement: $r0 = new java.lang.ClassCastException 
(assert true)
(define-const var726 ClassObject (getClass/1258963082 (cast-from-var3946-to-var3440 var1791))) ; Statement: $r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(define-const var2733 String (String_valueOf/-333372740 (cast-from-ClassObject-to-var3440 var726))) ; Statement: $r3 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r2) 
(assert true)
;(assert (<init>/7803314 var1018 var2733)) ; Statement: specialinvoke $r0.<java.lang.ClassCastException: void <init>(java.lang.String)>($r3) 

(declare-const var1018!1 var837)
(declare-const var2733!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var837-init=([], java.lang.ClassCastException), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var3946-to-var3440=([jdk.nashorn.internal.runtime.arrays.ContinuousArrayData], java.lang.Object), String_valueOf/-333372740=([java.lang.Object], java.lang.String), cast-from-ClassObject-to-var3440=([java.lang.Class], java.lang.Object), <init>/7803314=([java.lang.ClassCastException, java.lang.String], void)}
; {var3946=jdk.nashorn.internal.runtime.arrays.ContinuousArrayData, var1791=r1, var1269=d0, var837=java.lang.ClassCastException, var1018=$r0, var3440=java.lang.Object, var726=$r2, var2733=$r3}
; {jdk.nashorn.internal.runtime.arrays.ContinuousArrayData=var3946, r1=var1791, d0=var1269, java.lang.ClassCastException=var837, $r0=var1018, java.lang.Object=var3440, $r2=var726, $r3=var2733}
;seq <java.lang.String: java.lang.String valueOf(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1}
;stmts r1 := @this: jdk.nashorn.internal.runtime.arrays.ContinuousArrayData;	d0 := @parameter0: double;	$r0 = new java.lang.ClassCastException;	$r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r3 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r2);	specialinvoke $r0.<java.lang.ClassCastException: void <init>(java.lang.String)>($r3);	throw $r0
;block_num 1