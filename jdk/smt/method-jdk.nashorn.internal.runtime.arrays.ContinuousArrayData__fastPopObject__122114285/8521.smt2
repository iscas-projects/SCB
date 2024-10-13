(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1377 0)
(declare-sort var1360 0)
(declare-sort var1261 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1360-init () var1360)
(declare-fun getClass/1258963082 (var1261) ClassObject)
(declare-fun cast-from-var1377-to-var1261 (var1377) var1261)
(declare-fun String_valueOf/-333372740 (var1261) String)
(declare-fun cast-from-ClassObject-to-var1261 (ClassObject) var1261)
(declare-fun <init>/7803314 (var1360 String) void)
(declare-const null-var1377 var1377)
(declare-const var126 var1377) ; Statement: r1 := @this: jdk.nashorn.internal.runtime.arrays.ContinuousArrayData 
(assert (not (= var126 null-var1377)))
(define-const var1024 var1360 var1360-init) ; Statement: $r0 = new java.lang.ClassCastException 
(assert true)
(define-const var326 ClassObject (getClass/1258963082 (cast-from-var1377-to-var1261 var126))) ; Statement: $r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(define-const var2274 String (String_valueOf/-333372740 (cast-from-ClassObject-to-var1261 var326))) ; Statement: $r3 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r2) 
(assert true)
;(assert (<init>/7803314 var1024 var2274)) ; Statement: specialinvoke $r0.<java.lang.ClassCastException: void <init>(java.lang.String)>($r3) 

(declare-const var1024!1 var1360)
(declare-const var2274!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1360-init=([], java.lang.ClassCastException), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var1377-to-var1261=([jdk.nashorn.internal.runtime.arrays.ContinuousArrayData], java.lang.Object), String_valueOf/-333372740=([java.lang.Object], java.lang.String), cast-from-ClassObject-to-var1261=([java.lang.Class], java.lang.Object), <init>/7803314=([java.lang.ClassCastException, java.lang.String], void)}
; {var1377=jdk.nashorn.internal.runtime.arrays.ContinuousArrayData, var126=r1, var1360=java.lang.ClassCastException, var1024=$r0, var1261=java.lang.Object, var326=$r2, var2274=$r3}
; {jdk.nashorn.internal.runtime.arrays.ContinuousArrayData=var1377, r1=var126, java.lang.ClassCastException=var1360, $r0=var1024, java.lang.Object=var1261, $r2=var326, $r3=var2274}
;seq <java.lang.String: java.lang.String valueOf(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1}
;stmts r1 := @this: jdk.nashorn.internal.runtime.arrays.ContinuousArrayData;	$r0 = new java.lang.ClassCastException;	$r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r3 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r2);	specialinvoke $r0.<java.lang.ClassCastException: void <init>(java.lang.String)>($r3);	throw $r0
;block_num 1