(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var456 0)
(declare-sort var1515 0)
(declare-sort var2158 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1515-init () var1515)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun type/1919621254 (var456) ClassObject)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-790357943 (var1515 String) void)
(declare-fun cast-from-var1515-to-var2158 (var1515) var2158)
(declare-const null-var456 var456)
(declare-const null-ClassObject ClassObject)
(declare-const var1370 var456) ; Statement: r6 := @this: org.hibernate.type.descriptor.java.AbstractTypeDescriptor 
(assert (not (= var1370 null-var456)))
(declare-const var2953 ClassObject) ; Statement: r2 := @parameter0: java.lang.Class 
(assert (not (= var2953 null-ClassObject)))
(define-const var2160 var1515 var1515-init) ; Statement: $r13 = new org.hibernate.HibernateException 
(define-const var2336 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2336)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2336!1 String)
(assert (= var2336!1 ""))
(assert true)
(define-const var2281 String (append/672562846 var2336!1 "Unknown wrap conversion requested: ")) ; Statement: $r4 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown wrap conversion requested: ") 
(declare-const var2336!2 String)
(assert (= var2336!2 (str.++ var2336!1 "Unknown wrap conversion requested: ")))
(assert true)
(define-const var627 String (getName/-1958580599 var2953)) ; Statement: $r3 = virtualinvoke r2.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var462 String (append/672562846 var2281 var627)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2281!1 String)
(assert (= var2281!1 (str.++ var2281 var627)))
(assert true)
(define-const var3934 String (append/672562846 var462 " to ")) ; Statement: $r9 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" to ") 
(declare-const var462!1 String)
(assert (= var462!1 (str.++ var462 " to ")))
(define-const var335 ClassObject (type/1919621254 var1370)) ; Statement: $r7 = r6.<org.hibernate.type.descriptor.java.AbstractTypeDescriptor: java.lang.Class type> 
(assert true)
(define-const var1498 String (getName/-1958580599 var335)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var332 String (append/672562846 var3934 var1498)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var3934!1 String)
(assert (= var3934!1 (str.++ var3934 var1498)))
(assert true)
(define-const var820 String (toString/-2075883882 var332)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-790357943 var2160 var820)) ; Statement: specialinvoke $r13.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r11) 

(declare-const var2160!1 var1515)
(declare-const var820!1 String)
(define-const var460 var2158 (cast-from-var1515-to-var2158 var2160!1)) ; Statement: $r14 = (java.lang.Throwable) $r13 
 ; Statement: throw $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {var1515-init=([], org.hibernate.HibernateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), type/1919621254=([org.hibernate.type.descriptor.java.AbstractTypeDescriptor], java.lang.Class), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-790357943=([org.hibernate.HibernateException, java.lang.String], void), cast-from-var1515-to-var2158=([org.hibernate.HibernateException], java.lang.Throwable)}
; {var456=org.hibernate.type.descriptor.java.AbstractTypeDescriptor, var1370=r6, var2953=r2, var1515=org.hibernate.HibernateException, var2160=$r13, var2336=$r12, var2281=$r4, var627=$r3, var462=$r5, var3934=$r9, var335=$r7, var1498=$r8, var332=$r10, var820=$r11, var2158=java.lang.Throwable, var460=$r14}
; {org.hibernate.type.descriptor.java.AbstractTypeDescriptor=var456, r6=var1370, r2=var2953, org.hibernate.HibernateException=var1515, $r13=var2160, $r12=var2336, $r4=var2281, $r3=var627, $r5=var462, $r9=var3934, $r7=var335, $r8=var1498, $r10=var332, $r11=var820, java.lang.Throwable=var2158, $r14=var460}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: org.hibernate.type.descriptor.java.AbstractTypeDescriptor;	r2 := @parameter0: java.lang.Class;	$r13 = new org.hibernate.HibernateException;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown wrap conversion requested: ");	$r3 = virtualinvoke r2.<java.lang.Class: java.lang.String getName()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r9 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" to ");	$r7 = r6.<org.hibernate.type.descriptor.java.AbstractTypeDescriptor: java.lang.Class type>;	$r8 = virtualinvoke $r7.<java.lang.Class: java.lang.String getName()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r13.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r11);	$r14 = (java.lang.Throwable) $r13;	throw $r14
;block_num 1