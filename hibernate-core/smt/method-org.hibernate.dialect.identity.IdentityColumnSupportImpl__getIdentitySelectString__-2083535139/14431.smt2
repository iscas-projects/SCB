(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1219 0)
(declare-sort var2719 0)
(declare-sort var3752 0)
(declare-sort var2404 0)
(declare-sort var1004 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3752-init () var3752)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getClass/1258963082 (var2404) ClassObject)
(declare-fun cast-from-var1219-to-var2404 (var1219) var2404)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1350304819 (var3752 String) void)
(declare-fun cast-from-var3752-to-var1004 (var3752) var1004)
(declare-const null-var1219 var1219)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1107 var1219) ; Statement: r2 := @this: org.hibernate.dialect.identity.IdentityColumnSupportImpl 
(assert (not (= var1107 null-var1219)))
(declare-const var564 String) ; Statement: r8 := @parameter0: java.lang.String 
(assert (not (= var564 null-String)))
(declare-const var476 String) ; Statement: r9 := @parameter1: java.lang.String 
(assert (not (= var476 null-String)))
(declare-const var3380 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var3380 null-Int)))
(define-const var870 var3752 var3752-init) ; Statement: $r11 = new org.hibernate.MappingException 
(define-const var3426 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3426)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3426!1 String)
(assert (= var3426!1 ""))
(assert true)
(define-const var135 ClassObject (getClass/1258963082 (cast-from-var1219-to-var2404 var1107))) ; Statement: $r3 = virtualinvoke r2.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var2197 String (getName/-1958580599 var135)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2989 String (append/672562846 var3426!1 var2197)) ; Statement: $r5 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var3426!2 String)
(assert (= var3426!2 (str.++ var3426!1 var2197)))
(assert true)
(define-const var3687 String (append/672562846 var2989 " does not support identity key generation")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" does not support identity key generation") 
(declare-const var2989!1 String)
(assert (= var2989!1 (str.++ var2989 " does not support identity key generation")))
(assert true)
(define-const var1749 String (toString/-2075883882 var3687)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1350304819 var870 var1749)) ; Statement: specialinvoke $r11.<org.hibernate.MappingException: void <init>(java.lang.String)>($r7) 

(declare-const var870!1 var3752)
(declare-const var1749!1 String)
(define-const var3024 var1004 (cast-from-var3752-to-var1004 var870!1)) ; Statement: $r12 = (java.lang.Throwable) $r11 
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {var3752-init=([], org.hibernate.MappingException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var1219-to-var2404=([org.hibernate.dialect.identity.IdentityColumnSupportImpl], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1350304819=([org.hibernate.MappingException, java.lang.String], void), cast-from-var3752-to-var1004=([org.hibernate.MappingException], java.lang.Throwable)}
; {var1219=org.hibernate.dialect.identity.IdentityColumnSupportImpl, var1107=r2, var564=r8, var2719=null_type, var476=r9, var3380=i0, var3752=org.hibernate.MappingException, var870=$r11, var3426=$r10, var2404=java.lang.Object, var135=$r3, var2197=$r4, var2989=$r5, var3687=$r6, var1749=$r7, var1004=java.lang.Throwable, var3024=$r12}
; {org.hibernate.dialect.identity.IdentityColumnSupportImpl=var1219, r2=var1107, r8=var564, null_type=var2719, r9=var476, i0=var3380, org.hibernate.MappingException=var3752, $r11=var870, $r10=var3426, java.lang.Object=var2404, $r3=var135, $r4=var2197, $r5=var2989, $r6=var3687, $r7=var1749, java.lang.Throwable=var1004, $r12=var3024}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.hibernate.dialect.identity.IdentityColumnSupportImpl;	r8 := @parameter0: java.lang.String;	r9 := @parameter1: java.lang.String;	i0 := @parameter2: int;	$r11 = new org.hibernate.MappingException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke r2.<java.lang.Object: java.lang.Class getClass()>();	$r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>();	$r5 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" does not support identity key generation");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r11.<org.hibernate.MappingException: void <init>(java.lang.String)>($r7);	$r12 = (java.lang.Throwable) $r11;	throw $r12
;block_num 1