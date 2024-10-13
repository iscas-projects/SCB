(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var475 0)
(declare-sort var101 0)
(declare-sort var3633 0)
(declare-sort var760 0)
(declare-sort var1681 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3633-init () var3633)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getJavaType/-733740137 (var760) ClassObject)
(declare-fun cast-from-var475-to-var760 (var475) var760)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-790357943 (var3633 String) void)
(declare-fun cast-from-var3633-to-var1681 (var3633) var1681)
(declare-const null-var475 var475)
(declare-const null-String String)
(declare-const var823 var475) ; Statement: r2 := @this: org.hibernate.type.descriptor.java.JavaTypeDescriptorRegistry$FallbackJavaTypeDescriptor 
(assert (not (= var823 null-var475)))
(declare-const var2555 String) ; Statement: r9 := @parameter0: java.lang.String 
(assert (not (= var2555 null-String)))
(define-const var2783 var3633 var3633-init) ; Statement: $r11 = new org.hibernate.HibernateException 
(define-const var671 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var671)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var671!1 String)
(assert (= var671!1 ""))
(assert true)
(define-const var1244 String (append/672562846 var671!1 "Not known how to convert String to given type [")) ; Statement: $r5 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Not known how to convert String to given type [") 
(declare-const var671!2 String)
(assert (= var671!2 (str.++ var671!1 "Not known how to convert String to given type [")))
(assert true)
(define-const var1023 ClassObject (getJavaType/-733740137 (cast-from-var475-to-var760 var823))) ; Statement: $r3 = virtualinvoke r2.<org.hibernate.type.descriptor.java.JavaTypeDescriptorRegistry$FallbackJavaTypeDescriptor: java.lang.Class getJavaType()>() 
(assert true)
(define-const var31 String (getName/-1958580599 var1023)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1582 String (append/672562846 var1244 var31)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var1244!1 String)
(assert (= var1244!1 (str.++ var1244 var31)))
(assert true)
(define-const var1667 String (append/672562846 var1582 "]")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var1582!1 String)
(assert (= var1582!1 (str.++ var1582 "]")))
(assert true)
(define-const var3101 String (toString/-2075883882 var1667)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-790357943 var2783 var3101)) ; Statement: specialinvoke $r11.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r8) 

(declare-const var2783!1 var3633)
(declare-const var3101!1 String)
(define-const var3488 var1681 (cast-from-var3633-to-var1681 var2783!1)) ; Statement: $r12 = (java.lang.Throwable) $r11 
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {var3633-init=([], org.hibernate.HibernateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getJavaType/-733740137=([org.hibernate.type.descriptor.java.AbstractTypeDescriptor], java.lang.Class), cast-from-var475-to-var760=([org.hibernate.type.descriptor.java.JavaTypeDescriptorRegistry$FallbackJavaTypeDescriptor], org.hibernate.type.descriptor.java.AbstractTypeDescriptor), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-790357943=([org.hibernate.HibernateException, java.lang.String], void), cast-from-var3633-to-var1681=([org.hibernate.HibernateException], java.lang.Throwable)}
; {var475=org.hibernate.type.descriptor.java.JavaTypeDescriptorRegistry$FallbackJavaTypeDescriptor, var823=r2, var2555=r9, var101=null_type, var3633=org.hibernate.HibernateException, var2783=$r11, var671=$r10, var1244=$r5, var760=org.hibernate.type.descriptor.java.AbstractTypeDescriptor, var1023=$r3, var31=$r4, var1582=$r6, var1667=$r7, var3101=$r8, var1681=java.lang.Throwable, var3488=$r12}
; {org.hibernate.type.descriptor.java.JavaTypeDescriptorRegistry$FallbackJavaTypeDescriptor=var475, r2=var823, r9=var2555, null_type=var101, org.hibernate.HibernateException=var3633, $r11=var2783, $r10=var671, $r5=var1244, org.hibernate.type.descriptor.java.AbstractTypeDescriptor=var760, $r3=var1023, $r4=var31, $r6=var1582, $r7=var1667, $r8=var3101, java.lang.Throwable=var1681, $r12=var3488}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.hibernate.type.descriptor.java.JavaTypeDescriptorRegistry$FallbackJavaTypeDescriptor;	r9 := @parameter0: java.lang.String;	$r11 = new org.hibernate.HibernateException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Not known how to convert String to given type [");	$r3 = virtualinvoke r2.<org.hibernate.type.descriptor.java.JavaTypeDescriptorRegistry$FallbackJavaTypeDescriptor: java.lang.Class getJavaType()>();	$r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r11.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r8);	$r12 = (java.lang.Throwable) $r11;	throw $r12
;block_num 1