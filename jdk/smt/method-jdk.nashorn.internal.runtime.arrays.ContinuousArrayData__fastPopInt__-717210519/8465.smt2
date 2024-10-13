(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3768 0)
(declare-sort var3647 0)
(declare-sort var2217 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3647-init () var3647)
(declare-fun getClass/1258963082 (var2217) ClassObject)
(declare-fun cast-from-var3768-to-var2217 (var3768) var2217)
(declare-fun String_valueOf/-333372740 (var2217) String)
(declare-fun cast-from-ClassObject-to-var2217 (ClassObject) var2217)
(declare-fun <init>/7803314 (var3647 String) void)
(declare-const null-var3768 var3768)
(declare-const var3264 var3768) ; Statement: r1 := @this: jdk.nashorn.internal.runtime.arrays.ContinuousArrayData 
(assert (not (= var3264 null-var3768)))
(define-const var1283 var3647 var3647-init) ; Statement: $r0 = new java.lang.ClassCastException 
(assert true)
(define-const var3282 ClassObject (getClass/1258963082 (cast-from-var3768-to-var2217 var3264))) ; Statement: $r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(define-const var2255 String (String_valueOf/-333372740 (cast-from-ClassObject-to-var2217 var3282))) ; Statement: $r3 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r2) 
(assert true)
;(assert (<init>/7803314 var1283 var2255)) ; Statement: specialinvoke $r0.<java.lang.ClassCastException: void <init>(java.lang.String)>($r3) 

(declare-const var1283!1 var3647)
(declare-const var2255!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3647-init=([], java.lang.ClassCastException), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var3768-to-var2217=([jdk.nashorn.internal.runtime.arrays.ContinuousArrayData], java.lang.Object), String_valueOf/-333372740=([java.lang.Object], java.lang.String), cast-from-ClassObject-to-var2217=([java.lang.Class], java.lang.Object), <init>/7803314=([java.lang.ClassCastException, java.lang.String], void)}
; {var3768=jdk.nashorn.internal.runtime.arrays.ContinuousArrayData, var3264=r1, var3647=java.lang.ClassCastException, var1283=$r0, var2217=java.lang.Object, var3282=$r2, var2255=$r3}
; {jdk.nashorn.internal.runtime.arrays.ContinuousArrayData=var3768, r1=var3264, java.lang.ClassCastException=var3647, $r0=var1283, java.lang.Object=var2217, $r2=var3282, $r3=var2255}
;seq <java.lang.String: java.lang.String valueOf(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1}
;stmts r1 := @this: jdk.nashorn.internal.runtime.arrays.ContinuousArrayData;	$r0 = new java.lang.ClassCastException;	$r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r3 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r2);	specialinvoke $r0.<java.lang.ClassCastException: void <init>(java.lang.String)>($r3);	throw $r0
;block_num 1