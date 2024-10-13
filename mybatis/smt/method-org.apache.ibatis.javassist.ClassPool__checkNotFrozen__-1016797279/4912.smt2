(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1770 0)
(declare-sort var3822 0)
(declare-sort var3478 0)
(declare-sort var173 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getCached/1705609857 (var1770 String) var3478)
(declare-fun isFrozen/-850649134 (var3478) Bool)
(declare-fun var173-init () var173)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1084991535 (var173 String) void)
(declare-const null-var1770 var1770)
(declare-const null-String String)
(declare-const null-var3478 var3478)
(declare-const var287 var1770) ; Statement: r0 := @this: org.apache.ibatis.javassist.ClassPool 
(assert (not (= var287 null-var1770)))
(declare-const var2465 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2465 null-String)))
(assert true)
(define-const var1938 var3478 (getCached/1705609857 var287 var2465)) ; Statement: r15 = virtualinvoke r0.<org.apache.ibatis.javassist.ClassPool: org.apache.ibatis.javassist.CtClass getCached(java.lang.String)>(r1) 
 ; Statement: if r15 != null goto $z0 = virtualinvoke r15.<org.apache.ibatis.javassist.CtClass: boolean isFrozen()>() 
(assert (not (= var1938 null-var3478))) ; Cond: r15 != null 
(assert true)
(define-const var1583 Bool (isFrozen/-850649134 var1938)) ; Statement: $z0 = virtualinvoke r15.<org.apache.ibatis.javassist.CtClass: boolean isFrozen()>() 
 ; Statement: if $z0 == 0 goto return 
(assert (not (= (ite var1583 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3019 var173 var173-init) ; Statement: $r2 = new java.lang.RuntimeException 
(define-const var1284 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1284)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1284!1 String)
(assert (= var1284!1 ""))
(assert true)
(define-const var1695 String (append/672562846 var1284!1 var2465)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1284!2 String)
(assert (= var1284!2 (str.++ var1284!1 var2465)))
(assert true)
(define-const var3828 String (append/672562846 var1695 ": frozen class (cannot edit)")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": frozen class (cannot edit)") 
(declare-const var1695!1 String)
(assert (= var1695!1 (str.++ var1695 ": frozen class (cannot edit)")))
(assert true)
(define-const var114 String (toString/-2075883882 var3828)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1084991535 var3019 var114)) ; Statement: specialinvoke $r2.<java.lang.RuntimeException: void <init>(java.lang.String)>($r6) 

(declare-const var3019!1 var173)
(declare-const var114!1 String)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {getCached/1705609857=([org.apache.ibatis.javassist.ClassPool, java.lang.String], org.apache.ibatis.javassist.CtClass), isFrozen/-850649134=([org.apache.ibatis.javassist.CtClass], boolean), var173-init=([], java.lang.RuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1084991535=([java.lang.RuntimeException, java.lang.String], void)}
; {var1770=org.apache.ibatis.javassist.ClassPool, var287=r0, var2465=r1, var3822=null_type, var3478=org.apache.ibatis.javassist.CtClass, var1938=r15, var1583=$z0, var173=java.lang.RuntimeException, var3019=$r2, var1284=$r3, var1695=$r4, var3828=$r5, var114=$r6}
; {org.apache.ibatis.javassist.ClassPool=var1770, r0=var287, r1=var2465, null_type=var3822, org.apache.ibatis.javassist.CtClass=var3478, r15=var1938, $z0=var1583, java.lang.RuntimeException=var173, $r2=var3019, $r3=var1284, $r4=var1695, $r5=var3828, $r6=var114}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.ClassPool;	r1 := @parameter0: java.lang.String;	r15 = virtualinvoke r0.<org.apache.ibatis.javassist.ClassPool: org.apache.ibatis.javassist.CtClass getCached(java.lang.String)>(r1);	if r15 != null goto $z0 = virtualinvoke r15.<org.apache.ibatis.javassist.CtClass: boolean isFrozen()>();	$z0 = virtualinvoke r15.<org.apache.ibatis.javassist.CtClass: boolean isFrozen()>();	if $z0 == 0 goto return;	$r2 = new java.lang.RuntimeException;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": frozen class (cannot edit)");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r2.<java.lang.RuntimeException: void <init>(java.lang.String)>($r6);	throw $r2
;block_num 3