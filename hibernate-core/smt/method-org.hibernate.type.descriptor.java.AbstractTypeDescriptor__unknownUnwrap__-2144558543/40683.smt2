(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1168 0)
(declare-sort var2107 0)
(declare-sort var2904 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2107-init () var2107)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun type/1919621254 (var1168) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-790357943 (var2107 String) void)
(declare-fun cast-from-var2107-to-var2904 (var2107) var2904)
(declare-const null-var1168 var1168)
(declare-const null-ClassObject ClassObject)
(declare-const var1639 var1168) ; Statement: r2 := @this: org.hibernate.type.descriptor.java.AbstractTypeDescriptor 
(assert (not (= var1639 null-var1168)))
(declare-const var3869 ClassObject) ; Statement: r7 := @parameter0: java.lang.Class 
(assert (not (= var3869 null-ClassObject)))
(define-const var3322 var2107 var2107-init) ; Statement: $r13 = new org.hibernate.HibernateException 
(define-const var341 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var341)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var341!1 String)
(assert (= var341!1 ""))
(assert true)
(define-const var3656 String (append/672562846 var341!1 "Unknown unwrap conversion requested: ")) ; Statement: $r5 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown unwrap conversion requested: ") 
(declare-const var341!2 String)
(assert (= var341!2 (str.++ var341!1 "Unknown unwrap conversion requested: ")))
(define-const var790 ClassObject (type/1919621254 var1639)) ; Statement: $r3 = r2.<org.hibernate.type.descriptor.java.AbstractTypeDescriptor: java.lang.Class type> 
(assert true)
(define-const var2160 String (getName/-1958580599 var790)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3439 String (append/672562846 var3656 var2160)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var3656!1 String)
(assert (= var3656!1 (str.++ var3656 var2160)))
(assert true)
(define-const var1561 String (append/672562846 var3439 " to ")) ; Statement: $r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" to ") 
(declare-const var3439!1 String)
(assert (= var3439!1 (str.++ var3439 " to ")))
(assert true)
(define-const var2061 String (getName/-1958580599 var3869)) ; Statement: $r8 = virtualinvoke r7.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var490 String (append/672562846 var1561 var2061)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var1561!1 String)
(assert (= var1561!1 (str.++ var1561 var2061)))
(assert true)
(define-const var1578 String (toString/-2075883882 var490)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-790357943 var3322 var1578)) ; Statement: specialinvoke $r13.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r11) 

(declare-const var3322!1 var2107)
(declare-const var1578!1 String)
(define-const var3807 var2904 (cast-from-var2107-to-var2904 var3322!1)) ; Statement: $r14 = (java.lang.Throwable) $r13 
 ; Statement: throw $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {var2107-init=([], org.hibernate.HibernateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), type/1919621254=([org.hibernate.type.descriptor.java.AbstractTypeDescriptor], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-790357943=([org.hibernate.HibernateException, java.lang.String], void), cast-from-var2107-to-var2904=([org.hibernate.HibernateException], java.lang.Throwable)}
; {var1168=org.hibernate.type.descriptor.java.AbstractTypeDescriptor, var1639=r2, var3869=r7, var2107=org.hibernate.HibernateException, var3322=$r13, var341=$r12, var3656=$r5, var790=$r3, var2160=$r4, var3439=$r6, var1561=$r9, var2061=$r8, var490=$r10, var1578=$r11, var2904=java.lang.Throwable, var3807=$r14}
; {org.hibernate.type.descriptor.java.AbstractTypeDescriptor=var1168, r2=var1639, r7=var3869, org.hibernate.HibernateException=var2107, $r13=var3322, $r12=var341, $r5=var3656, $r3=var790, $r4=var2160, $r6=var3439, $r9=var1561, $r8=var2061, $r10=var490, $r11=var1578, java.lang.Throwable=var2904, $r14=var3807}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.hibernate.type.descriptor.java.AbstractTypeDescriptor;	r7 := @parameter0: java.lang.Class;	$r13 = new org.hibernate.HibernateException;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown unwrap conversion requested: ");	$r3 = r2.<org.hibernate.type.descriptor.java.AbstractTypeDescriptor: java.lang.Class type>;	$r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" to ");	$r8 = virtualinvoke r7.<java.lang.Class: java.lang.String getName()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r13.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r11);	$r14 = (java.lang.Throwable) $r13;	throw $r14
;block_num 1