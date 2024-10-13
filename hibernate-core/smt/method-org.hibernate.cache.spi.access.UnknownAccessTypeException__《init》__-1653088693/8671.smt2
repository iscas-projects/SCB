(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1195 0)
(declare-sort var284 0)
(declare-sort var1100 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-790357943 (var1100 String) void)
(declare-fun cast-from-var1195-to-var1100 (var1195) var1100)
(declare-const null-var1195 var1195)
(declare-const null-String String)
(declare-const var1236 var1195) ; Statement: r0 := @this: org.hibernate.cache.spi.access.UnknownAccessTypeException 
(assert (not (= var1236 null-var1195)))
(declare-const var1422 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1422 null-String)))
(define-const var3268 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3268)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3268!1 String)
(assert (= var3268!1 ""))
(assert true)
(define-const var956 String (append/672562846 var3268!1 "Unknown access type [")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown access type [") 
(declare-const var3268!2 String)
(assert (= var3268!2 (str.++ var3268!1 "Unknown access type [")))
(assert true)
(define-const var1742 String (append/672562846 var956 var1422)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var956!1 String)
(assert (= var956!1 (str.++ var956 var1422)))
(assert true)
(define-const var1198 String (append/672562846 var1742 "]")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var1742!1 String)
(assert (= var1742!1 (str.++ var1742 "]")))
(assert true)
(define-const var584 String (toString/-2075883882 var1198)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-790357943 (cast-from-var1195-to-var1100 var1236) var584)) ; Statement: specialinvoke r0.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r6) 

(declare-const var1236!1 var1195)
(declare-const var584!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-790357943=([org.hibernate.HibernateException, java.lang.String], void), cast-from-var1195-to-var1100=([org.hibernate.cache.spi.access.UnknownAccessTypeException], org.hibernate.HibernateException)}
; {var1195=org.hibernate.cache.spi.access.UnknownAccessTypeException, var1236=r0, var1422=r2, var284=null_type, var3268=$r1, var956=$r3, var1742=$r4, var1198=$r5, var584=$r6, var1100=org.hibernate.HibernateException}
; {org.hibernate.cache.spi.access.UnknownAccessTypeException=var1195, r0=var1236, r2=var1422, null_type=var284, $r1=var3268, $r3=var956, $r4=var1742, $r5=var1198, $r6=var584, org.hibernate.HibernateException=var1100}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.cache.spi.access.UnknownAccessTypeException;	r2 := @parameter0: java.lang.String;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown access type [");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r6);	return
;block_num 1