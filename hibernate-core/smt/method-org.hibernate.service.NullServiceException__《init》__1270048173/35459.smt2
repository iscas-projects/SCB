(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var344 0)
(declare-sort var2429 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-790357943 (var2429 String) void)
(declare-fun cast-from-var344-to-var2429 (var344) var2429)
(declare-fun serviceRole/990786784 (var344) ClassObject)
(declare-const null-var344 var344)
(declare-const null-ClassObject ClassObject)
(declare-const var319 var344) ; Statement: r0 := @this: org.hibernate.service.NullServiceException 
(assert (not (= var319 null-var344)))
(declare-const var2893 ClassObject) ; Statement: r2 := @parameter0: java.lang.Class 
(assert (not (= var2893 null-ClassObject)))
(define-const var3588 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3588)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3588!1 String)
(assert (= var3588!1 ""))
(assert true)
(define-const var468 String (append/672562846 var3588!1 "Unknown service requested [")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown service requested [") 
(declare-const var3588!2 String)
(assert (= var3588!2 (str.++ var3588!1 "Unknown service requested [")))
(assert true)
(define-const var690 String (getName/-1958580599 var2893)) ; Statement: $r3 = virtualinvoke r2.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1161 String (append/672562846 var468 var690)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var468!1 String)
(assert (= var468!1 (str.++ var468 var690)))
(assert true)
(define-const var2155 String (append/672562846 var1161 "]")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var1161!1 String)
(assert (= var1161!1 (str.++ var1161 "]")))
(assert true)
(define-const var2305 String (toString/-2075883882 var2155)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-790357943 (cast-from-var344-to-var2429 var319) var2305)) ; Statement: specialinvoke r0.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r7) 

(declare-const var319!1 var344)
(declare-const var2305!1 String)
(declare-const var319!2 var344)
(assert (not (= var319!2 null-var344)))
(assert (= (serviceRole/990786784 var319!2) var2893)) ; Statement: r0.<org.hibernate.service.NullServiceException: java.lang.Class serviceRole> = r2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-790357943=([org.hibernate.HibernateException, java.lang.String], void), cast-from-var344-to-var2429=([org.hibernate.service.NullServiceException], org.hibernate.HibernateException), serviceRole/990786784=([org.hibernate.service.NullServiceException], java.lang.Class)}
; {var344=org.hibernate.service.NullServiceException, var319=r0, var2893=r2, var3588=$r1, var468=$r4, var690=$r3, var1161=$r5, var2155=$r6, var2305=$r7, var2429=org.hibernate.HibernateException}
; {org.hibernate.service.NullServiceException=var344, r0=var319, r2=var2893, $r1=var3588, $r4=var468, $r3=var690, $r5=var1161, $r6=var2155, $r7=var2305, org.hibernate.HibernateException=var2429}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.service.NullServiceException;	r2 := @parameter0: java.lang.Class;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown service requested [");	$r3 = virtualinvoke r2.<java.lang.Class: java.lang.String getName()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r7);	r0.<org.hibernate.service.NullServiceException: java.lang.Class serviceRole> = r2;	return
;block_num 1