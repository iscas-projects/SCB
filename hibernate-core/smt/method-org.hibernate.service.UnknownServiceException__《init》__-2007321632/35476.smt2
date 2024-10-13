(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2518 0)
(declare-sort var903 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-790357943 (var903 String) void)
(declare-fun cast-from-var2518-to-var903 (var2518) var903)
(declare-fun serviceRole/1281713413 (var2518) ClassObject)
(declare-const null-var2518 var2518)
(declare-const null-ClassObject ClassObject)
(declare-const var2164 var2518) ; Statement: r0 := @this: org.hibernate.service.UnknownServiceException 
(assert (not (= var2164 null-var2518)))
(declare-const var2721 ClassObject) ; Statement: r2 := @parameter0: java.lang.Class 
(assert (not (= var2721 null-ClassObject)))
(define-const var3370 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3370)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3370!1 String)
(assert (= var3370!1 ""))
(assert true)
(define-const var2776 String (append/672562846 var3370!1 "Unknown service requested [")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown service requested [") 
(declare-const var3370!2 String)
(assert (= var3370!2 (str.++ var3370!1 "Unknown service requested [")))
(assert true)
(define-const var3208 String (getName/-1958580599 var2721)) ; Statement: $r3 = virtualinvoke r2.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var664 String (append/672562846 var2776 var3208)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2776!1 String)
(assert (= var2776!1 (str.++ var2776 var3208)))
(assert true)
(define-const var438 String (append/672562846 var664 "]")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var664!1 String)
(assert (= var664!1 (str.++ var664 "]")))
(assert true)
(define-const var383 String (toString/-2075883882 var438)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-790357943 (cast-from-var2518-to-var903 var2164) var383)) ; Statement: specialinvoke r0.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r7) 

(declare-const var2164!1 var2518)
(declare-const var383!1 String)
(declare-const var2164!2 var2518)
(assert (not (= var2164!2 null-var2518)))
(assert (= (serviceRole/1281713413 var2164!2) var2721)) ; Statement: r0.<org.hibernate.service.UnknownServiceException: java.lang.Class serviceRole> = r2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-790357943=([org.hibernate.HibernateException, java.lang.String], void), cast-from-var2518-to-var903=([org.hibernate.service.UnknownServiceException], org.hibernate.HibernateException), serviceRole/1281713413=([org.hibernate.service.UnknownServiceException], java.lang.Class)}
; {var2518=org.hibernate.service.UnknownServiceException, var2164=r0, var2721=r2, var3370=$r1, var2776=$r4, var3208=$r3, var664=$r5, var438=$r6, var383=$r7, var903=org.hibernate.HibernateException}
; {org.hibernate.service.UnknownServiceException=var2518, r0=var2164, r2=var2721, $r1=var3370, $r4=var2776, $r3=var3208, $r5=var664, $r6=var438, $r7=var383, org.hibernate.HibernateException=var903}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.service.UnknownServiceException;	r2 := @parameter0: java.lang.Class;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown service requested [");	$r3 = virtualinvoke r2.<java.lang.Class: java.lang.String getName()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r7);	r0.<org.hibernate.service.UnknownServiceException: java.lang.Class serviceRole> = r2;	return
;block_num 1