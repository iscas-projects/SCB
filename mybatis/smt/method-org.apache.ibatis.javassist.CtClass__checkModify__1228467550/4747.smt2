(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3909 0)
(declare-sort var3143 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isFrozen/-850649134 (var3909) Bool)
(declare-fun var3143-init () var3143)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getName/1611768686 (var3909) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1084991535 (var3143 String) void)
(declare-const null-var3909 var3909)
(declare-const var3328 var3909) ; Statement: r0 := @this: org.apache.ibatis.javassist.CtClass 
(assert (not (= var3328 null-var3909)))
(assert true)
(define-const var2132 Bool (isFrozen/-850649134 var3328)) ; Statement: $z0 = virtualinvoke r0.<org.apache.ibatis.javassist.CtClass: boolean isFrozen()>() 
 ; Statement: if $z0 == 0 goto return 
(assert (not (= (ite var2132 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1531 var3143 var3143-init) ; Statement: $r1 = new java.lang.RuntimeException 
(define-const var1600 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1600)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1600!1 String)
(assert (= var1600!1 ""))
(assert true)
(define-const var2730 String (getName/1611768686 var3328)) ; Statement: $r3 = virtualinvoke r0.<org.apache.ibatis.javassist.CtClass: java.lang.String getName()>() 
(assert true)
(define-const var2307 String (append/672562846 var1600!1 var2730)) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1600!2 String)
(assert (= var1600!2 (str.++ var1600!1 var2730)))
(assert true)
(define-const var2053 String (append/672562846 var2307 " class is frozen")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" class is frozen") 
(declare-const var2307!1 String)
(assert (= var2307!1 (str.++ var2307 " class is frozen")))
(assert true)
(define-const var1361 String (toString/-2075883882 var2053)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1084991535 var1531 var1361)) ; Statement: specialinvoke $r1.<java.lang.RuntimeException: void <init>(java.lang.String)>($r6) 

(declare-const var1531!1 var3143)
(declare-const var1361!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {isFrozen/-850649134=([org.apache.ibatis.javassist.CtClass], boolean), var3143-init=([], java.lang.RuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getName/1611768686=([org.apache.ibatis.javassist.CtClass], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1084991535=([java.lang.RuntimeException, java.lang.String], void)}
; {var3909=org.apache.ibatis.javassist.CtClass, var3328=r0, var2132=$z0, var3143=java.lang.RuntimeException, var1531=$r1, var1600=$r2, var2730=$r3, var2307=$r4, var2053=$r5, var1361=$r6}
; {org.apache.ibatis.javassist.CtClass=var3909, r0=var3328, $z0=var2132, java.lang.RuntimeException=var3143, $r1=var1531, $r2=var1600, $r3=var2730, $r4=var2307, $r5=var2053, $r6=var1361}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.CtClass;	$z0 = virtualinvoke r0.<org.apache.ibatis.javassist.CtClass: boolean isFrozen()>();	if $z0 == 0 goto return;	$r1 = new java.lang.RuntimeException;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke r0.<org.apache.ibatis.javassist.CtClass: java.lang.String getName()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" class is frozen");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<java.lang.RuntimeException: void <init>(java.lang.String)>($r6);	throw $r1
;block_num 2