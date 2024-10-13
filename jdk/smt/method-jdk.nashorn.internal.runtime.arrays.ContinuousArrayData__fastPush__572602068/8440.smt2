(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1547 0)
(declare-sort var2962 0)
(declare-sort var2663 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2663-init () var2663)
(declare-fun getClass/1258963082 (var2962) ClassObject)
(declare-fun cast-from-var1547-to-var2962 (var1547) var2962)
(declare-fun String_valueOf/-333372740 (var2962) String)
(declare-fun cast-from-ClassObject-to-var2962 (ClassObject) var2962)
(declare-fun <init>/7803314 (var2663 String) void)
(declare-const null-var1547 var1547)
(declare-const null-var2962 var2962)
(declare-const var1149 var1547) ; Statement: r1 := @this: jdk.nashorn.internal.runtime.arrays.ContinuousArrayData 
(assert (not (= var1149 null-var1547)))
(declare-const var195 var2962) ; Statement: r4 := @parameter0: java.lang.Object 
(assert (not (= var195 null-var2962)))
(define-const var2362 var2663 var2663-init) ; Statement: $r0 = new java.lang.ClassCastException 
(assert true)
(define-const var3621 ClassObject (getClass/1258963082 (cast-from-var1547-to-var2962 var1149))) ; Statement: $r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(define-const var2757 String (String_valueOf/-333372740 (cast-from-ClassObject-to-var2962 var3621))) ; Statement: $r3 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r2) 
(assert true)
;(assert (<init>/7803314 var2362 var2757)) ; Statement: specialinvoke $r0.<java.lang.ClassCastException: void <init>(java.lang.String)>($r3) 

(declare-const var2362!1 var2663)
(declare-const var2757!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var2663-init=([], java.lang.ClassCastException), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var1547-to-var2962=([jdk.nashorn.internal.runtime.arrays.ContinuousArrayData], java.lang.Object), String_valueOf/-333372740=([java.lang.Object], java.lang.String), cast-from-ClassObject-to-var2962=([java.lang.Class], java.lang.Object), <init>/7803314=([java.lang.ClassCastException, java.lang.String], void)}
; {var1547=jdk.nashorn.internal.runtime.arrays.ContinuousArrayData, var1149=r1, var2962=java.lang.Object, var195=r4, var2663=java.lang.ClassCastException, var2362=$r0, var3621=$r2, var2757=$r3}
; {jdk.nashorn.internal.runtime.arrays.ContinuousArrayData=var1547, r1=var1149, java.lang.Object=var2962, r4=var195, java.lang.ClassCastException=var2663, $r0=var2362, $r2=var3621, $r3=var2757}
;seq <java.lang.String: java.lang.String valueOf(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1}
;stmts r1 := @this: jdk.nashorn.internal.runtime.arrays.ContinuousArrayData;	r4 := @parameter0: java.lang.Object;	$r0 = new java.lang.ClassCastException;	$r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r3 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r2);	specialinvoke $r0.<java.lang.ClassCastException: void <init>(java.lang.String)>($r3);	throw $r0
;block_num 1