(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var395 0)
(declare-sort var1260 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-790357943 (var1260 String) void)
(declare-fun cast-from-var395-to-var1260 (var395) var1260)
(declare-const null-var395 var395)
(declare-const null-ClassObject ClassObject)
(declare-const var2940 var395) ; Statement: r0 := @this: org.hibernate.service.UnknownUnwrapTypeException 
(assert (not (= var2940 null-var395)))
(declare-const var1068 ClassObject) ; Statement: r2 := @parameter0: java.lang.Class 
(assert (not (= var1068 null-ClassObject)))
(define-const var3780 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3780)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3780!1 String)
(assert (= var3780!1 ""))
(assert true)
(define-const var3799 String (append/672562846 var3780!1 "Cannot unwrap to requested type [")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot unwrap to requested type [") 
(declare-const var3780!2 String)
(assert (= var3780!2 (str.++ var3780!1 "Cannot unwrap to requested type [")))
(assert true)
(define-const var3711 String (getName/-1958580599 var1068)) ; Statement: $r3 = virtualinvoke r2.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var51 String (append/672562846 var3799 var3711)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3799!1 String)
(assert (= var3799!1 (str.++ var3799 var3711)))
(assert true)
(define-const var1785 String (append/672562846 var51 "]")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var51!1 String)
(assert (= var51!1 (str.++ var51 "]")))
(assert true)
(define-const var3121 String (toString/-2075883882 var1785)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-790357943 (cast-from-var395-to-var1260 var2940) var3121)) ; Statement: specialinvoke r0.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r7) 

(declare-const var2940!1 var395)
(declare-const var3121!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-790357943=([org.hibernate.HibernateException, java.lang.String], void), cast-from-var395-to-var1260=([org.hibernate.service.UnknownUnwrapTypeException], org.hibernate.HibernateException)}
; {var395=org.hibernate.service.UnknownUnwrapTypeException, var2940=r0, var1068=r2, var3780=$r1, var3799=$r4, var3711=$r3, var51=$r5, var1785=$r6, var3121=$r7, var1260=org.hibernate.HibernateException}
; {org.hibernate.service.UnknownUnwrapTypeException=var395, r0=var2940, r2=var1068, $r1=var3780, $r4=var3799, $r3=var3711, $r5=var51, $r6=var1785, $r7=var3121, org.hibernate.HibernateException=var1260}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.service.UnknownUnwrapTypeException;	r2 := @parameter0: java.lang.Class;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot unwrap to requested type [");	$r3 = virtualinvoke r2.<java.lang.Class: java.lang.String getName()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r7);	return
;block_num 1