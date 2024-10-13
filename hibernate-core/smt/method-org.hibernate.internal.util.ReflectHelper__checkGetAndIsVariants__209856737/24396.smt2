(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2732 0)
(declare-sort var294 0)
(declare-sort var1990 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getReturnType/-1494237887 (var294) ClassObject)
(declare-fun equals/-1650223740 (var1990 var1990) Bool)
(declare-fun cast-from-ClassObject-to-var1990 (ClassObject) var1990)
(declare-const null-ClassObject ClassObject)
(declare-const null-String String)
(declare-const null-var294 var294)
(declare-const var3788 ClassObject) ; Statement: r7 := @parameter0: java.lang.Class 
(assert (not (= var3788 null-ClassObject)))
(declare-const var1818 String) ; Statement: r6 := @parameter1: java.lang.String 
(assert (not (= var1818 null-String)))
(declare-const var3141 var294) ; Statement: r1 := @parameter2: java.lang.reflect.Method 
(assert (not (= var3141 null-var294)))
(declare-const var185 var294) ; Statement: r0 := @parameter3: java.lang.reflect.Method 
(assert (not (= var185 null-var294)))
(assert true)
(define-const var236 ClassObject (getReturnType/-1494237887 var185)) ; Statement: $r3 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.Class getReturnType()>() 
(assert true)
(define-const var2460 ClassObject (getReturnType/-1494237887 var3141)) ; Statement: $r2 = virtualinvoke r1.<java.lang.reflect.Method: java.lang.Class getReturnType()>() 
(assert true)
(define-const var1457 Bool (equals/-1650223740 (cast-from-ClassObject-to-var1990 var236) (cast-from-ClassObject-to-var1990 var2460))) ; Statement: $z0 = virtualinvoke $r3.<java.lang.Object: boolean equals(java.lang.Object)>($r2) 
 ; Statement: if $z0 != 0 goto return 
(assert (not (= (ite var1457 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getReturnType/-1494237887=([java.lang.reflect.Method], java.lang.Class), equals/-1650223740=([java.lang.Object, java.lang.Object], boolean), cast-from-ClassObject-to-var1990=([java.lang.Class], java.lang.Object)}
; {var3788=r7, var1818=r6, var2732=null_type, var294=java.lang.reflect.Method, var3141=r1, var185=r0, var236=$r3, var2460=$r2, var1990=java.lang.Object, var1457=$z0}
; {r7=var3788, r6=var1818, null_type=var2732, java.lang.reflect.Method=var294, r1=var3141, r0=var185, $r3=var236, $r2=var2460, java.lang.Object=var1990, $z0=var1457}
;seq 
;cnt {}
;stmts r7 := @parameter0: java.lang.Class;	r6 := @parameter1: java.lang.String;	r1 := @parameter2: java.lang.reflect.Method;	r0 := @parameter3: java.lang.reflect.Method;	$r3 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.Class getReturnType()>();	$r2 = virtualinvoke r1.<java.lang.reflect.Method: java.lang.Class getReturnType()>();	$z0 = virtualinvoke $r3.<java.lang.Object: boolean equals(java.lang.Object)>($r2);	if $z0 != 0 goto return;	return
;block_num 2