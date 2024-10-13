(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1726 0)
(declare-sort var2607 0)
(declare-sort var1032 0)
(declare-sort var2384 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2607-init () var2607)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getClass/1258963082 (var1032) ClassObject)
(declare-fun cast-from-var1726-to-var1032 (var1726) var1032)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1350304819 (var2607 String) void)
(declare-fun cast-from-var2607-to-var2384 (var2607) var2384)
(declare-const null-var1726 var1726)
(declare-const null-Int Int)
(declare-const var2804 var1726) ; Statement: r2 := @this: org.hibernate.dialect.identity.IdentityColumnSupportImpl 
(assert (not (= var2804 null-var1726)))
(declare-const var600 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var600 null-Int)))
(define-const var3636 var2607 var2607-init) ; Statement: $r9 = new org.hibernate.MappingException 
(define-const var2959 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2959)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2959!1 String)
(assert (= var2959!1 ""))
(assert true)
(define-const var2882 ClassObject (getClass/1258963082 (cast-from-var1726-to-var1032 var2804))) ; Statement: $r3 = virtualinvoke r2.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var2463 String (getName/-1958580599 var2882)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1362 String (append/672562846 var2959!1 var2463)) ; Statement: $r5 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var2959!2 String)
(assert (= var2959!2 (str.++ var2959!1 var2463)))
(assert true)
(define-const var10 String (append/672562846 var1362 " does not support identity key generation")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" does not support identity key generation") 
(declare-const var1362!1 String)
(assert (= var1362!1 (str.++ var1362 " does not support identity key generation")))
(assert true)
(define-const var3913 String (toString/-2075883882 var10)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1350304819 var3636 var3913)) ; Statement: specialinvoke $r9.<org.hibernate.MappingException: void <init>(java.lang.String)>($r7) 

(declare-const var3636!1 var2607)
(declare-const var3913!1 String)
(define-const var1025 var2384 (cast-from-var2607-to-var2384 var3636!1)) ; Statement: $r10 = (java.lang.Throwable) $r9 
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {var2607-init=([], org.hibernate.MappingException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var1726-to-var1032=([org.hibernate.dialect.identity.IdentityColumnSupportImpl], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1350304819=([org.hibernate.MappingException, java.lang.String], void), cast-from-var2607-to-var2384=([org.hibernate.MappingException], java.lang.Throwable)}
; {var1726=org.hibernate.dialect.identity.IdentityColumnSupportImpl, var2804=r2, var600=i0, var2607=org.hibernate.MappingException, var3636=$r9, var2959=$r8, var1032=java.lang.Object, var2882=$r3, var2463=$r4, var1362=$r5, var10=$r6, var3913=$r7, var2384=java.lang.Throwable, var1025=$r10}
; {org.hibernate.dialect.identity.IdentityColumnSupportImpl=var1726, r2=var2804, i0=var600, org.hibernate.MappingException=var2607, $r9=var3636, $r8=var2959, java.lang.Object=var1032, $r3=var2882, $r4=var2463, $r5=var1362, $r6=var10, $r7=var3913, java.lang.Throwable=var2384, $r10=var1025}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.hibernate.dialect.identity.IdentityColumnSupportImpl;	i0 := @parameter0: int;	$r9 = new org.hibernate.MappingException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke r2.<java.lang.Object: java.lang.Class getClass()>();	$r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>();	$r5 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" does not support identity key generation");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r9.<org.hibernate.MappingException: void <init>(java.lang.String)>($r7);	$r10 = (java.lang.Throwable) $r9;	throw $r10
;block_num 1