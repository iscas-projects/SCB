(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1390 0)
(declare-sort var2443 0)
(declare-sort var1651 0)
(declare-sort var2824 0)
(declare-sort var779 0)
(declare-sort var3176 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1651_trace/729076520 (var1651 var2824) void)
(declare-fun cast-from-String-to-var2824 (String) var2824)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun resolveInHibernateNamespace/880302857 (var3176 String) var779)
(declare-fun cast-from-var1390-to-var3176 (var1390) var3176)
(declare-const null-var1390 var1390)
(declare-const null-String String)
(declare-const var1390-LOG var1651)
(declare-const var3848 var1390) ; Statement: r6 := @this: org.hibernate.cfg.EJB3DTDEntityResolver 
(assert (not (= var3848 null-var1390)))
(declare-const var646 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var646 null-String)))
(define-const var1474 var1651 var1390-LOG) ; Statement: $r0 = <org.hibernate.cfg.EJB3DTDEntityResolver: org.hibernate.internal.CoreMessageLogger LOG> 
;(assert (var1651_trace/729076520 var1474 (cast-from-String-to-var2824 "Recognized JPA ORM namespace; attempting to resolve on classpath under org/hibernate/jpa"))) ; Statement: interfaceinvoke $r0.<org.hibernate.internal.CoreMessageLogger: void trace(java.lang.Object)>("Recognized JPA ORM namespace; attempting to resolve on classpath under org/hibernate/jpa") 

(declare-const var1474!1 var1651)
(declare-const var3592 String)
(define-const var3957 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3957)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3957!1 String)
(assert (= var3957!1 ""))
(assert true)
(define-const var3282 String (append/672562846 var3957!1 "org/hibernate/jpa/")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("org/hibernate/jpa/") 
(declare-const var3957!2 String)
(assert (= var3957!2 (str.++ var3957!1 "org/hibernate/jpa/")))
(assert true)
(define-const var939 String (append/672562846 var3282 var646)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var3282!1 String)
(assert (= var3282!1 (str.++ var3282 var646)))
(assert true)
(define-const var429 String (toString/-2075883882 var939)) ; Statement: r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var83 var779 (resolveInHibernateNamespace/880302857 (cast-from-var1390-to-var3176 var3848) var429)) ; Statement: r7 = virtualinvoke r6.<org.hibernate.cfg.EJB3DTDEntityResolver: java.io.InputStream resolveInHibernateNamespace(java.lang.String)>(r5) 
 ; Statement: return r7 
(check-sat)
(get-model)
(get-unsat-core)
; {var1651_trace/729076520=([org.hibernate.internal.CoreMessageLogger, java.lang.Object], void), cast-from-String-to-var2824=([java.lang.String], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), resolveInHibernateNamespace/880302857=([org.hibernate.internal.util.xml.DTDEntityResolver, java.lang.String], java.io.InputStream), cast-from-var1390-to-var3176=([org.hibernate.cfg.EJB3DTDEntityResolver], org.hibernate.internal.util.xml.DTDEntityResolver)}
; {var1390=org.hibernate.cfg.EJB3DTDEntityResolver, var3848=r6, var646=r2, var2443=null_type, var1651=org.hibernate.internal.CoreMessageLogger, var1474=$r0, var2824=java.lang.Object, var3592="Recognized JPA ORM namespace; attempting to resolve on classpath under org/hibernate/jpa", var3957=$r1, var3282=$r3, var939=$r4, var429=r5, var779=java.io.InputStream, var3176=org.hibernate.internal.util.xml.DTDEntityResolver, var83=r7}
; {org.hibernate.cfg.EJB3DTDEntityResolver=var1390, r6=var3848, r2=var646, null_type=var2443, org.hibernate.internal.CoreMessageLogger=var1651, $r0=var1474, java.lang.Object=var2824, "Recognized JPA ORM namespace; attempting to resolve on classpath under org/hibernate/jpa"=var3592, $r1=var3957, $r3=var3282, $r4=var939, r5=var429, java.io.InputStream=var779, org.hibernate.internal.util.xml.DTDEntityResolver=var3176, r7=var83}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: org.hibernate.cfg.EJB3DTDEntityResolver;	r2 := @parameter0: java.lang.String;	$r0 = <org.hibernate.cfg.EJB3DTDEntityResolver: org.hibernate.internal.CoreMessageLogger LOG>;	interfaceinvoke $r0.<org.hibernate.internal.CoreMessageLogger: void trace(java.lang.Object)>("Recognized JPA ORM namespace; attempting to resolve on classpath under org/hibernate/jpa");	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("org/hibernate/jpa/");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	r7 = virtualinvoke r6.<org.hibernate.cfg.EJB3DTDEntityResolver: java.io.InputStream resolveInHibernateNamespace(java.lang.String)>(r5);	return r7
;block_num 1