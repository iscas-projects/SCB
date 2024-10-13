(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2188 0)
(declare-sort var2816 0)
(declare-sort var512 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2816-init () var2816)
(declare-fun getClass/1258963082 (var512) ClassObject)
(declare-fun cast-from-var2188-to-var512 (var2188) var512)
(declare-fun String_valueOf/-333372740 (var512) String)
(declare-fun cast-from-ClassObject-to-var512 (ClassObject) var512)
(declare-fun <init>/7803314 (var2816 String) void)
(declare-const null-var2188 var2188)
(declare-const null-Int Int)
(declare-const var1439 var2188) ; Statement: r1 := @this: jdk.nashorn.internal.runtime.arrays.ContinuousArrayData 
(assert (not (= var1439 null-var2188)))
(declare-const var1187 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1187 null-Int)))
(define-const var2558 var2816 var2816-init) ; Statement: $r0 = new java.lang.ClassCastException 
(assert true)
(define-const var104 ClassObject (getClass/1258963082 (cast-from-var2188-to-var512 var1439))) ; Statement: $r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(define-const var3048 String (String_valueOf/-333372740 (cast-from-ClassObject-to-var512 var104))) ; Statement: $r3 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r2) 
(assert true)
;(assert (<init>/7803314 var2558 var3048)) ; Statement: specialinvoke $r0.<java.lang.ClassCastException: void <init>(java.lang.String)>($r3) 

(declare-const var2558!1 var2816)
(declare-const var3048!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var2816-init=([], java.lang.ClassCastException), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var2188-to-var512=([jdk.nashorn.internal.runtime.arrays.ContinuousArrayData], java.lang.Object), String_valueOf/-333372740=([java.lang.Object], java.lang.String), cast-from-ClassObject-to-var512=([java.lang.Class], java.lang.Object), <init>/7803314=([java.lang.ClassCastException, java.lang.String], void)}
; {var2188=jdk.nashorn.internal.runtime.arrays.ContinuousArrayData, var1439=r1, var1187=i0, var2816=java.lang.ClassCastException, var2558=$r0, var512=java.lang.Object, var104=$r2, var3048=$r3}
; {jdk.nashorn.internal.runtime.arrays.ContinuousArrayData=var2188, r1=var1439, i0=var1187, java.lang.ClassCastException=var2816, $r0=var2558, java.lang.Object=var512, $r2=var104, $r3=var3048}
;seq <java.lang.String: java.lang.String valueOf(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1}
;stmts r1 := @this: jdk.nashorn.internal.runtime.arrays.ContinuousArrayData;	i0 := @parameter0: int;	$r0 = new java.lang.ClassCastException;	$r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r3 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r2);	specialinvoke $r0.<java.lang.ClassCastException: void <init>(java.lang.String)>($r3);	throw $r0
;block_num 1