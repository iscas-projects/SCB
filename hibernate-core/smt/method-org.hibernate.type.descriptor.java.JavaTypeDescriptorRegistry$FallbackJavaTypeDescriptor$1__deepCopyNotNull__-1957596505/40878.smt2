(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2466 0)
(declare-sort var788 0)
(declare-sort var2511 0)
(declare-sort var3533 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2511-init () var2511)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun val$type/-468356197 (var2466) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-790357943 (var2511 String) void)
(declare-fun cast-from-var2511-to-var3533 (var2511) var3533)
(declare-const null-var2466 var2466)
(declare-const null-var788 var788)
(declare-const var1861 var2466) ; Statement: r2 := @this: org.hibernate.type.descriptor.java.JavaTypeDescriptorRegistry$FallbackJavaTypeDescriptor$1 
(assert (not (= var1861 null-var2466)))
(declare-const var3910 var788) ; Statement: r9 := @parameter0: java.lang.Object 
(assert (not (= var3910 null-var788)))
(define-const var636 var2511 var2511-init) ; Statement: $r11 = new org.hibernate.HibernateException 
(define-const var646 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var646)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var646!1 String)
(assert (= var646!1 ""))
(assert true)
(define-const var1851 String (append/672562846 var646!1 "Not known how to deep copy value of type: [")) ; Statement: $r5 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Not known how to deep copy value of type: [") 
(declare-const var646!2 String)
(assert (= var646!2 (str.++ var646!1 "Not known how to deep copy value of type: [")))
(define-const var1402 ClassObject (val$type/-468356197 var1861)) ; Statement: $r3 = r2.<org.hibernate.type.descriptor.java.JavaTypeDescriptorRegistry$FallbackJavaTypeDescriptor$1: java.lang.Class val$type> 
(assert true)
(define-const var3303 String (getName/-1958580599 var1402)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2625 String (append/672562846 var1851 var3303)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var1851!1 String)
(assert (= var1851!1 (str.++ var1851 var3303)))
(assert true)
(define-const var3505 String (append/672562846 var2625 "]")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var2625!1 String)
(assert (= var2625!1 (str.++ var2625 "]")))
(assert true)
(define-const var3145 String (toString/-2075883882 var3505)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-790357943 var636 var3145)) ; Statement: specialinvoke $r11.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r8) 

(declare-const var636!1 var2511)
(declare-const var3145!1 String)
(define-const var3273 var3533 (cast-from-var2511-to-var3533 var636!1)) ; Statement: $r12 = (java.lang.Throwable) $r11 
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {var2511-init=([], org.hibernate.HibernateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), val$type/-468356197=([org.hibernate.type.descriptor.java.JavaTypeDescriptorRegistry$FallbackJavaTypeDescriptor$1], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-790357943=([org.hibernate.HibernateException, java.lang.String], void), cast-from-var2511-to-var3533=([org.hibernate.HibernateException], java.lang.Throwable)}
; {var2466=org.hibernate.type.descriptor.java.JavaTypeDescriptorRegistry$FallbackJavaTypeDescriptor$1, var1861=r2, var788=java.lang.Object, var3910=r9, var2511=org.hibernate.HibernateException, var636=$r11, var646=$r10, var1851=$r5, var1402=$r3, var3303=$r4, var2625=$r6, var3505=$r7, var3145=$r8, var3533=java.lang.Throwable, var3273=$r12}
; {org.hibernate.type.descriptor.java.JavaTypeDescriptorRegistry$FallbackJavaTypeDescriptor$1=var2466, r2=var1861, java.lang.Object=var788, r9=var3910, org.hibernate.HibernateException=var2511, $r11=var636, $r10=var646, $r5=var1851, $r3=var1402, $r4=var3303, $r6=var2625, $r7=var3505, $r8=var3145, java.lang.Throwable=var3533, $r12=var3273}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.hibernate.type.descriptor.java.JavaTypeDescriptorRegistry$FallbackJavaTypeDescriptor$1;	r9 := @parameter0: java.lang.Object;	$r11 = new org.hibernate.HibernateException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Not known how to deep copy value of type: [");	$r3 = r2.<org.hibernate.type.descriptor.java.JavaTypeDescriptorRegistry$FallbackJavaTypeDescriptor$1: java.lang.Class val$type>;	$r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r11.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r8);	$r12 = (java.lang.Throwable) $r11;	throw $r12
;block_num 1