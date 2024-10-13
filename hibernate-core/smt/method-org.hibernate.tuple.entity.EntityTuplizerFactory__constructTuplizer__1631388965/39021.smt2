(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1628 0)
(declare-sort var3237 0)
(declare-sort var555 0)
(declare-sort var127 0)
(declare-sort var2534 0)
(declare-sort var2793 0)
(declare-sort var2615 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2793-init () var2793)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-790357943 (var2793 String) void)
(declare-fun cast-from-var2793-to-var2615 (var2793) var2615)
(declare-const null-var1628 var1628)
(declare-const null-String String)
(declare-const null-var555 var555)
(declare-const null-var127 var127)
(declare-const null-var2534 var2534)
(declare-const var2036 var1628) ; Statement: r1 := @this: org.hibernate.tuple.entity.EntityTuplizerFactory 
(assert (not (= var2036 null-var1628)))
(declare-const var2101 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2101 null-String)))
(declare-const var3408 var555) ; Statement: r2 := @parameter1: org.hibernate.tuple.entity.EntityMetamodel 
(assert (not (= var3408 null-var555)))
(declare-const var1856 var127) ; Statement: r3 := @parameter2: org.hibernate.mapping.PersistentClass 
(assert (not (= var1856 null-var127)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3127 var2534) ; Statement: $r5 := @caughtexception 
(assert (not (= var3127 null-var2534)))
(define-const var884 var2793 var2793-init) ; Statement: $r14 = new org.hibernate.HibernateException 
(define-const var3893 String String-init) ; Statement: $r13 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3893)) ; Statement: specialinvoke $r13.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3893!1 String)
(assert (= var3893!1 ""))
(assert true)
(define-const var577 String (append/672562846 var3893!1 "Could not locate specified tuplizer class [")) ; Statement: $r8 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not locate specified tuplizer class [") 
(declare-const var3893!2 String)
(assert (= var3893!2 (str.++ var3893!1 "Could not locate specified tuplizer class [")))
(assert true)
(define-const var1293 String (append/672562846 var577 var2101)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var577!1 String)
(assert (= var577!1 (str.++ var577 var2101)))
(assert true)
(define-const var3693 String (append/672562846 var1293 "]")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var1293!1 String)
(assert (= var1293!1 (str.++ var1293 "]")))
(assert true)
(define-const var579 String (toString/-2075883882 var3693)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-790357943 var884 var579)) ; Statement: specialinvoke $r14.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r11) 

(declare-const var884!1 var2793)
(declare-const var579!1 String)
(define-const var3525 var2615 (cast-from-var2793-to-var2615 var884!1)) ; Statement: $r15 = (java.lang.Throwable) $r14 
 ; Statement: throw $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {var2793-init=([], org.hibernate.HibernateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-790357943=([org.hibernate.HibernateException, java.lang.String], void), cast-from-var2793-to-var2615=([org.hibernate.HibernateException], java.lang.Throwable)}
; {var1628=org.hibernate.tuple.entity.EntityTuplizerFactory, var2036=r1, var2101=r0, var3237=null_type, var555=org.hibernate.tuple.entity.EntityMetamodel, var3408=r2, var127=org.hibernate.mapping.PersistentClass, var1856=r3, var2534=java.lang.ClassNotFoundException, var3127=$r5, var2793=org.hibernate.HibernateException, var884=$r14, var3893=$r13, var577=$r8, var1293=$r9, var3693=$r10, var579=$r11, var2615=java.lang.Throwable, var3525=$r15}
; {org.hibernate.tuple.entity.EntityTuplizerFactory=var1628, r1=var2036, r0=var2101, null_type=var3237, org.hibernate.tuple.entity.EntityMetamodel=var555, r2=var3408, org.hibernate.mapping.PersistentClass=var127, r3=var1856, java.lang.ClassNotFoundException=var2534, $r5=var3127, org.hibernate.HibernateException=var2793, $r14=var884, $r13=var3893, $r8=var577, $r9=var1293, $r10=var3693, $r11=var579, java.lang.Throwable=var2615, $r15=var3525}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.tuple.entity.EntityTuplizerFactory;	r0 := @parameter0: java.lang.String;	r2 := @parameter1: org.hibernate.tuple.entity.EntityMetamodel;	r3 := @parameter2: org.hibernate.mapping.PersistentClass;	$r5 := @caughtexception;	$r14 = new org.hibernate.HibernateException;	$r13 = new java.lang.StringBuilder;	specialinvoke $r13.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not locate specified tuplizer class [");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r14.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r11);	$r15 = (java.lang.Throwable) $r14;	throw $r15
;block_num 2