(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3464 0)
(declare-sort var1978 0)
(declare-sort var2701 0)
(declare-sort var166 0)
(declare-sort var1060 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun method/-26664874 (var3464) var2701)
(declare-fun var166-init () var166)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun name/-26664874 (var3464) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/920375003 (var166 String) void)
(declare-fun cast-from-var166-to-var1060 (var166) var1060)
(declare-const null-var3464 var3464)
(declare-const null-var1978 var1978)
(declare-const null-var2701 var2701)
(declare-const var3061 var3464) ; Statement: r0 := @this: org.hibernate.jpa.internal.util.PersistenceUtilHelper$MethodAttributeAccess 
(assert (not (= var3061 null-var3464)))
(declare-const var98 var1978) ; Statement: r2 := @parameter0: java.lang.Object 
(assert (not (= var98 null-var1978)))
(define-const var3446 var2701 (method/-26664874 var3061)) ; Statement: $r1 = r0.<org.hibernate.jpa.internal.util.PersistenceUtilHelper$MethodAttributeAccess: java.lang.reflect.Method method> 
 ; Statement: if $r1 != null goto $r4 = r0.<org.hibernate.jpa.internal.util.PersistenceUtilHelper$MethodAttributeAccess: java.lang.reflect.Method method> 
(assert (not (not (= var3446 null-var2701)))) ; Negate: Cond: $r1 != null  
(define-const var1699 var166 var166-init) ; Statement: $r39 = new org.hibernate.jpa.internal.util.PersistenceUtilHelper$AttributeExtractionException 
(define-const var1174 String String-init) ; Statement: $r38 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1174)) ; Statement: specialinvoke $r38.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1174!1 String)
(assert (= var1174!1 ""))
(assert true)
(define-const var1819 String (append/672562846 var1174!1 "Attribute (method) ")) ; Statement: $r9 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Attribute (method) ") 
(declare-const var1174!2 String)
(assert (= var1174!2 (str.++ var1174!1 "Attribute (method) ")))
(define-const var3214 String (name/-26664874 var3061)) ; Statement: $r8 = r0.<org.hibernate.jpa.internal.util.PersistenceUtilHelper$MethodAttributeAccess: java.lang.String name> 
(assert true)
(define-const var3770 String (append/672562846 var1819 var3214)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var1819!1 String)
(assert (= var1819!1 (str.++ var1819 var3214)))
(assert true)
(define-const var2532 String (append/672562846 var3770 " is not accessible")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not accessible") 
(declare-const var3770!1 String)
(assert (= var3770!1 (str.++ var3770 " is not accessible")))
(assert true)
(define-const var1745 String (toString/-2075883882 var2532)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/920375003 var1699 var1745)) ; Statement: specialinvoke $r39.<org.hibernate.jpa.internal.util.PersistenceUtilHelper$AttributeExtractionException: void <init>(java.lang.String)>($r12) 

(declare-const var1699!1 var166)
(declare-const var1745!1 String)
(define-const var609 var1060 (cast-from-var166-to-var1060 var1699!1)) ; Statement: $r44 = (java.lang.Throwable) $r39 
 ; Statement: throw $r44 
(check-sat)
(get-model)
(get-unsat-core)
; {method/-26664874=([org.hibernate.jpa.internal.util.PersistenceUtilHelper$MethodAttributeAccess], java.lang.reflect.Method), var166-init=([], org.hibernate.jpa.internal.util.PersistenceUtilHelper$AttributeExtractionException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), name/-26664874=([org.hibernate.jpa.internal.util.PersistenceUtilHelper$MethodAttributeAccess], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/920375003=([org.hibernate.jpa.internal.util.PersistenceUtilHelper$AttributeExtractionException, java.lang.String], void), cast-from-var166-to-var1060=([org.hibernate.jpa.internal.util.PersistenceUtilHelper$AttributeExtractionException], java.lang.Throwable)}
; {var3464=org.hibernate.jpa.internal.util.PersistenceUtilHelper$MethodAttributeAccess, var3061=r0, var1978=java.lang.Object, var98=r2, var2701=java.lang.reflect.Method, var3446=$r1, var166=org.hibernate.jpa.internal.util.PersistenceUtilHelper$AttributeExtractionException, var1699=$r39, var1174=$r38, var1819=$r9, var3214=$r8, var3770=$r10, var2532=$r11, var1745=$r12, var1060=java.lang.Throwable, var609=$r44}
; {org.hibernate.jpa.internal.util.PersistenceUtilHelper$MethodAttributeAccess=var3464, r0=var3061, java.lang.Object=var1978, r2=var98, java.lang.reflect.Method=var2701, $r1=var3446, org.hibernate.jpa.internal.util.PersistenceUtilHelper$AttributeExtractionException=var166, $r39=var1699, $r38=var1174, $r9=var1819, $r8=var3214, $r10=var3770, $r11=var2532, $r12=var1745, java.lang.Throwable=var1060, $r44=var609}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.jpa.internal.util.PersistenceUtilHelper$MethodAttributeAccess;	r2 := @parameter0: java.lang.Object;	$r1 = r0.<org.hibernate.jpa.internal.util.PersistenceUtilHelper$MethodAttributeAccess: java.lang.reflect.Method method>;	if $r1 != null goto $r4 = r0.<org.hibernate.jpa.internal.util.PersistenceUtilHelper$MethodAttributeAccess: java.lang.reflect.Method method>;	$r39 = new org.hibernate.jpa.internal.util.PersistenceUtilHelper$AttributeExtractionException;	$r38 = new java.lang.StringBuilder;	specialinvoke $r38.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Attribute (method) ");	$r8 = r0.<org.hibernate.jpa.internal.util.PersistenceUtilHelper$MethodAttributeAccess: java.lang.String name>;	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not accessible");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r39.<org.hibernate.jpa.internal.util.PersistenceUtilHelper$AttributeExtractionException: void <init>(java.lang.String)>($r12);	$r44 = (java.lang.Throwable) $r39;	throw $r44
;block_num 2