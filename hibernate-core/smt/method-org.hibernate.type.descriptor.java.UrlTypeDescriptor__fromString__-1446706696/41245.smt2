(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1212 0)
(declare-sort var3175 0)
(declare-sort var3550 0)
(declare-sort var1669 0)
(declare-sort var3007 0)
(declare-sort var1905 0)
(declare-sort var1081 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3550-init () var3550)
(declare-fun var3007-init () var3007)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1905) String)
(declare-fun cast-from-var1669-to-var1905 (var1669) var1905)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-790357943 (var3007 String) void)
(declare-fun cast-from-var3007-to-var1081 (var3007) var1081)
(declare-const null-var1212 var1212)
(declare-const null-String String)
(declare-const null-var1669 var1669)
(declare-const var3944 var1212) ; Statement: r10 := @this: org.hibernate.type.descriptor.java.UrlTypeDescriptor 
(assert (not (= var3944 null-var1212)))
(declare-const var1268 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1268 null-String)))
(define-const var157 var3550 var3550-init) ; Statement: $r11 = new java.net.URL 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var542 var1669) ; Statement: $r2 := @caughtexception 
(assert (not (= var542 null-var1669)))
(define-const var2899 var3007 var3007-init) ; Statement: $r13 = new org.hibernate.HibernateException 
(define-const var3964 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3964)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3964!1 String)
(assert (= var3964!1 ""))
(assert true)
(define-const var3704 String (append/672562846 var3964!1 "Unable to convert string [")) ; Statement: $r5 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to convert string [") 
(declare-const var3964!2 String)
(assert (= var3964!2 (str.++ var3964!1 "Unable to convert string [")))
(assert true)
(define-const var3542 String (append/672562846 var3704 var1268)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3704!1 String)
(assert (= var3704!1 (str.++ var3704 var1268)))
(assert true)
(define-const var2715 String (append/672562846 var3542 "] to URL : ")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] to URL : ") 
(declare-const var3542!1 String)
(assert (= var3542!1 (str.++ var3542 "] to URL : ")))
(assert true)
(define-const var1649 String (append/-1031950772 var2715 (cast-from-var1669-to-var1905 var542))) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var2715!1 String)
(assert (str.prefixof var2715 var2715!1))
(assert true)
(define-const var3992 String (toString/-2075883882 var1649)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-790357943 var2899 var3992)) ; Statement: specialinvoke $r13.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r9) 

(declare-const var2899!1 var3007)
(declare-const var3992!1 String)
(define-const var895 var1081 (cast-from-var3007-to-var1081 var2899!1)) ; Statement: $r14 = (java.lang.Throwable) $r13 
 ; Statement: throw $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {var3550-init=([], java.net.URL), var3007-init=([], org.hibernate.HibernateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1669-to-var1905=([java.net.MalformedURLException], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-790357943=([org.hibernate.HibernateException, java.lang.String], void), cast-from-var3007-to-var1081=([org.hibernate.HibernateException], java.lang.Throwable)}
; {var1212=org.hibernate.type.descriptor.java.UrlTypeDescriptor, var3944=r10, var1268=r1, var3175=null_type, var3550=java.net.URL, var157=$r11, var1669=java.net.MalformedURLException, var542=$r2, var3007=org.hibernate.HibernateException, var2899=$r13, var3964=$r12, var3704=$r5, var3542=$r6, var2715=$r7, var1905=java.lang.Object, var1649=$r8, var3992=$r9, var1081=java.lang.Throwable, var895=$r14}
; {org.hibernate.type.descriptor.java.UrlTypeDescriptor=var1212, r10=var3944, r1=var1268, null_type=var3175, java.net.URL=var3550, $r11=var157, java.net.MalformedURLException=var1669, $r2=var542, org.hibernate.HibernateException=var3007, $r13=var2899, $r12=var3964, $r5=var3704, $r6=var3542, $r7=var2715, java.lang.Object=var1905, $r8=var1649, $r9=var3992, java.lang.Throwable=var1081, $r14=var895}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r10 := @this: org.hibernate.type.descriptor.java.UrlTypeDescriptor;	r1 := @parameter0: java.lang.String;	$r11 = new java.net.URL;	$r2 := @caughtexception;	$r13 = new org.hibernate.HibernateException;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to convert string [");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] to URL : ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r13.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r9);	$r14 = (java.lang.Throwable) $r13;	throw $r14
;block_num 2