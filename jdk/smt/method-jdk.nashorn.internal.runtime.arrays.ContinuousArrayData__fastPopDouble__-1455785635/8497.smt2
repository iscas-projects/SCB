(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3349 0)
(declare-sort var203 0)
(declare-sort var1676 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var203-init () var203)
(declare-fun getClass/1258963082 (var1676) ClassObject)
(declare-fun cast-from-var3349-to-var1676 (var3349) var1676)
(declare-fun String_valueOf/-333372740 (var1676) String)
(declare-fun cast-from-ClassObject-to-var1676 (ClassObject) var1676)
(declare-fun <init>/7803314 (var203 String) void)
(declare-const null-var3349 var3349)
(declare-const var836 var3349) ; Statement: r1 := @this: jdk.nashorn.internal.runtime.arrays.ContinuousArrayData 
(assert (not (= var836 null-var3349)))
(define-const var2744 var203 var203-init) ; Statement: $r0 = new java.lang.ClassCastException 
(assert true)
(define-const var486 ClassObject (getClass/1258963082 (cast-from-var3349-to-var1676 var836))) ; Statement: $r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(define-const var3989 String (String_valueOf/-333372740 (cast-from-ClassObject-to-var1676 var486))) ; Statement: $r3 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r2) 
(assert true)
;(assert (<init>/7803314 var2744 var3989)) ; Statement: specialinvoke $r0.<java.lang.ClassCastException: void <init>(java.lang.String)>($r3) 

(declare-const var2744!1 var203)
(declare-const var3989!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var203-init=([], java.lang.ClassCastException), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var3349-to-var1676=([jdk.nashorn.internal.runtime.arrays.ContinuousArrayData], java.lang.Object), String_valueOf/-333372740=([java.lang.Object], java.lang.String), cast-from-ClassObject-to-var1676=([java.lang.Class], java.lang.Object), <init>/7803314=([java.lang.ClassCastException, java.lang.String], void)}
; {var3349=jdk.nashorn.internal.runtime.arrays.ContinuousArrayData, var836=r1, var203=java.lang.ClassCastException, var2744=$r0, var1676=java.lang.Object, var486=$r2, var3989=$r3}
; {jdk.nashorn.internal.runtime.arrays.ContinuousArrayData=var3349, r1=var836, java.lang.ClassCastException=var203, $r0=var2744, java.lang.Object=var1676, $r2=var486, $r3=var3989}
;seq <java.lang.String: java.lang.String valueOf(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1}
;stmts r1 := @this: jdk.nashorn.internal.runtime.arrays.ContinuousArrayData;	$r0 = new java.lang.ClassCastException;	$r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r3 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r2);	specialinvoke $r0.<java.lang.ClassCastException: void <init>(java.lang.String)>($r3);	throw $r0
;block_num 1