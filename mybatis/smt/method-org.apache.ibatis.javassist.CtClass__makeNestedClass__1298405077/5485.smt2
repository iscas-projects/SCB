(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2391 0)
(declare-sort var1719 0)
(declare-sort var678 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var678-init () var678)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getName/1611768686 (var2391) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1084991535 (var678 String) void)
(declare-const null-var2391 var2391)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var2037 var2391) ; Statement: r2 := @this: org.apache.ibatis.javassist.CtClass 
(assert (not (= var2037 null-var2391)))
(declare-const var3819 String) ; Statement: r7 := @parameter0: java.lang.String 
(assert (not (= var3819 null-String)))
(declare-const var1723 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var1723 null-Bool)))
(define-const var1916 var678 var678-init) ; Statement: $r0 = new java.lang.RuntimeException 
(define-const var498 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var498)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var498!1 String)
(assert (= var498!1 ""))
(assert true)
(define-const var659 String (getName/1611768686 var2037)) ; Statement: $r3 = virtualinvoke r2.<org.apache.ibatis.javassist.CtClass: java.lang.String getName()>() 
(assert true)
(define-const var1840 String (append/672562846 var498!1 var659)) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var498!2 String)
(assert (= var498!2 (str.++ var498!1 var659)))
(assert true)
(define-const var1222 String (append/672562846 var1840 " is not a class")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not a class") 
(declare-const var1840!1 String)
(assert (= var1840!1 (str.++ var1840 " is not a class")))
(assert true)
(define-const var2266 String (toString/-2075883882 var1222)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1084991535 var1916 var2266)) ; Statement: specialinvoke $r0.<java.lang.RuntimeException: void <init>(java.lang.String)>($r6) 

(declare-const var1916!1 var678)
(declare-const var2266!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var678-init=([], java.lang.RuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getName/1611768686=([org.apache.ibatis.javassist.CtClass], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1084991535=([java.lang.RuntimeException, java.lang.String], void)}
; {var2391=org.apache.ibatis.javassist.CtClass, var2037=r2, var3819=r7, var1719=null_type, var1723=z0, var678=java.lang.RuntimeException, var1916=$r0, var498=$r1, var659=$r3, var1840=$r4, var1222=$r5, var2266=$r6}
; {org.apache.ibatis.javassist.CtClass=var2391, r2=var2037, r7=var3819, null_type=var1719, z0=var1723, java.lang.RuntimeException=var678, $r0=var1916, $r1=var498, $r3=var659, $r4=var1840, $r5=var1222, $r6=var2266}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.apache.ibatis.javassist.CtClass;	r7 := @parameter0: java.lang.String;	z0 := @parameter1: boolean;	$r0 = new java.lang.RuntimeException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke r2.<org.apache.ibatis.javassist.CtClass: java.lang.String getName()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not a class");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.lang.RuntimeException: void <init>(java.lang.String)>($r6);	throw $r0
;block_num 1