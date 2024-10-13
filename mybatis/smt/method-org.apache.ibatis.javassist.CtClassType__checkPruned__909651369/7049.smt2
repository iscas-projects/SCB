(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1279 0)
(declare-sort var237 0)
(declare-sort var3419 0)
(declare-sort var2644 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun wasPruned/1891348345 (var1279) Bool)
(declare-fun var3419-init () var3419)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/1611768686 (var2644) String)
(declare-fun cast-from-var1279-to-var2644 (var1279) var2644)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1084991535 (var3419 String) void)
(declare-const null-var1279 var1279)
(declare-const null-String String)
(declare-const var638 var1279) ; Statement: r0 := @this: org.apache.ibatis.javassist.CtClassType 
(assert (not (= var638 null-var1279)))
(declare-const var2661 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var2661 null-String)))
(define-const var2617 Bool (wasPruned/1891348345 var638)) ; Statement: $z0 = r0.<org.apache.ibatis.javassist.CtClassType: boolean wasPruned> 
 ; Statement: if $z0 == 0 goto return 
(assert (not (= (ite var2617 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2707 var3419 var3419-init) ; Statement: $r1 = new java.lang.RuntimeException 
(define-const var1202 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1202)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1202!1 String)
(assert (= var1202!1 ""))
(assert true)
(define-const var1492 String (append/672562846 var1202!1 var2661)) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var1202!2 String)
(assert (= var1202!2 (str.++ var1202!1 var2661)))
(assert true)
(define-const var1119 String (append/672562846 var1492 "(): ")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(): ") 
(declare-const var1492!1 String)
(assert (= var1492!1 (str.++ var1492 "(): ")))
(assert true)
(define-const var455 String (getName/1611768686 (cast-from-var1279-to-var2644 var638))) ; Statement: $r5 = virtualinvoke r0.<org.apache.ibatis.javassist.CtClassType: java.lang.String getName()>() 
(assert true)
(define-const var1035 String (append/672562846 var1119 var455)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var1119!1 String)
(assert (= var1119!1 (str.++ var1119 var455)))
(assert true)
(define-const var2160 String (append/672562846 var1035 " was pruned.")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" was pruned.") 
(declare-const var1035!1 String)
(assert (= var1035!1 (str.++ var1035 " was pruned.")))
(assert true)
(define-const var3057 String (toString/-2075883882 var2160)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1084991535 var2707 var3057)) ; Statement: specialinvoke $r1.<java.lang.RuntimeException: void <init>(java.lang.String)>($r9) 

(declare-const var2707!1 var3419)
(declare-const var3057!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {wasPruned/1891348345=([org.apache.ibatis.javassist.CtClassType], boolean), var3419-init=([], java.lang.RuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/1611768686=([org.apache.ibatis.javassist.CtClass], java.lang.String), cast-from-var1279-to-var2644=([org.apache.ibatis.javassist.CtClassType], org.apache.ibatis.javassist.CtClass), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1084991535=([java.lang.RuntimeException, java.lang.String], void)}
; {var1279=org.apache.ibatis.javassist.CtClassType, var638=r0, var2661=r3, var237=null_type, var2617=$z0, var3419=java.lang.RuntimeException, var2707=$r1, var1202=$r2, var1492=$r4, var1119=$r6, var2644=org.apache.ibatis.javassist.CtClass, var455=$r5, var1035=$r7, var2160=$r8, var3057=$r9}
; {org.apache.ibatis.javassist.CtClassType=var1279, r0=var638, r3=var2661, null_type=var237, $z0=var2617, java.lang.RuntimeException=var3419, $r1=var2707, $r2=var1202, $r4=var1492, $r6=var1119, org.apache.ibatis.javassist.CtClass=var2644, $r5=var455, $r7=var1035, $r8=var2160, $r9=var3057}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.CtClassType;	r3 := @parameter0: java.lang.String;	$z0 = r0.<org.apache.ibatis.javassist.CtClassType: boolean wasPruned>;	if $z0 == 0 goto return;	$r1 = new java.lang.RuntimeException;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(): ");	$r5 = virtualinvoke r0.<org.apache.ibatis.javassist.CtClassType: java.lang.String getName()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" was pruned.");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<java.lang.RuntimeException: void <init>(java.lang.String)>($r9);	throw $r1
;block_num 2