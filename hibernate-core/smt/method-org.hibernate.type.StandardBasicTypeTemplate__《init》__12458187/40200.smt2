(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1764 0)
(declare-sort var1624 0)
(declare-sort var3854 0)
(declare-sort var3390 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-1184982036 (var3390 var1624 var3854) void)
(declare-fun cast-from-var1764-to-var3390 (var1764) var3390)
(declare-fun registrationKeys/-127735049 (var1764) (Array Int String))
(declare-fun var3854_getJavaType/-460163817 (var3854) ClassObject)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1624_getSqlType/-1559261686 (var1624) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun name/-127735049 (var1764) String)
(declare-const null-var1764 var1764)
(declare-const null-var1624 var1624)
(declare-const null-var3854 var3854)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-ClassObject ClassObject)
(declare-const var968 var1764) ; Statement: r0 := @this: org.hibernate.type.StandardBasicTypeTemplate 
(assert (not (= var968 null-var1764)))
(declare-const var3024 var1624) ; Statement: r1 := @parameter0: org.hibernate.type.descriptor.sql.SqlTypeDescriptor 
(assert (not (= var3024 null-var1624)))
(declare-const var3351 var3854) ; Statement: r2 := @parameter1: org.hibernate.type.descriptor.java.JavaTypeDescriptor 
(assert (not (= var3351 null-var3854)))
(declare-const var2251 (Array Int String)) ; Statement: r3 := @parameter2: java.lang.String[] 
(assert (not (= var2251 null-__Array__Int__String__)))
(assert true)
;(assert (<init>/-1184982036 (cast-from-var1764-to-var3390 var968) var3024 var3351)) ; Statement: specialinvoke r0.<org.hibernate.type.AbstractSingleColumnStandardBasicType: void <init>(org.hibernate.type.descriptor.sql.SqlTypeDescriptor,org.hibernate.type.descriptor.java.JavaTypeDescriptor)>(r1, r2) 

(declare-const var968!1 var1764)
(declare-const var3024!1 var1624)
(declare-const var3351!1 var3854)
(declare-const var968!2 var1764)
(assert (not (= var968!2 null-var1764)))
(assert (= (registrationKeys/-127735049 var968!2) var2251)) ; Statement: r0.<org.hibernate.type.StandardBasicTypeTemplate: java.lang.String[] registrationKeys> = r3 
(define-const var376 ClassObject (var3854_getJavaType/-460163817 var3351!1)) ; Statement: $r4 = interfaceinvoke r2.<org.hibernate.type.descriptor.java.JavaTypeDescriptor: java.lang.Class getJavaType()>() 
 ; Statement: if $r4 != null goto $r5 = new java.lang.StringBuilder 
(assert (not (= var376 null-ClassObject))) ; Cond: $r4 != null 
(define-const var1798 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1798)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1798!1 String)
(assert (= var1798!1 ""))
(define-const var1905 ClassObject (var3854_getJavaType/-460163817 var3351!1)) ; Statement: $r6 = interfaceinvoke r2.<org.hibernate.type.descriptor.java.JavaTypeDescriptor: java.lang.Class getJavaType()>() 
(assert true)
(define-const var526 String (getName/-1958580599 var1905)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3429 String (append/672562846 var1798!1 var526)) ; Statement: $r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var1798!2 String)
(assert (= var1798!2 (str.++ var1798!1 var526)))
(assert true)
(define-const var3939 String (append/672562846 var3429 " -> ")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" -> ") 
(declare-const var3429!1 String)
(assert (= var3429!1 (str.++ var3429 " -> ")))
(define-const var708 Int (var1624_getSqlType/-1559261686 var3024!1)) ; Statement: $i0 = interfaceinvoke r1.<org.hibernate.type.descriptor.sql.SqlTypeDescriptor: int getSqlType()>() 
(assert true)
(define-const var1104 String (append/-1001720160 var3939 var708)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var3939!1 String)
(assert (str.prefixof var3939 var3939!1))
(assert true)
(define-const var1077 String (toString/-2075883882 var1104)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(declare-const var968!3 var1764)
(assert (not (= var968!3 null-var1764)))
(assert (= (name/-127735049 var968!3) var1077)) ; Statement: r0.<org.hibernate.type.StandardBasicTypeTemplate: java.lang.String name> = $r11 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-1184982036=([org.hibernate.type.AbstractSingleColumnStandardBasicType, org.hibernate.type.descriptor.sql.SqlTypeDescriptor, org.hibernate.type.descriptor.java.JavaTypeDescriptor], void), cast-from-var1764-to-var3390=([org.hibernate.type.StandardBasicTypeTemplate], org.hibernate.type.AbstractSingleColumnStandardBasicType), registrationKeys/-127735049=([org.hibernate.type.StandardBasicTypeTemplate], java.lang.String[]), var3854_getJavaType/-460163817=([org.hibernate.type.descriptor.java.JavaTypeDescriptor], java.lang.Class), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getName/-1958580599=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1624_getSqlType/-1559261686=([org.hibernate.type.descriptor.sql.SqlTypeDescriptor], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), name/-127735049=([org.hibernate.type.StandardBasicTypeTemplate], java.lang.String)}
; {var1764=org.hibernate.type.StandardBasicTypeTemplate, var968=r0, var1624=org.hibernate.type.descriptor.sql.SqlTypeDescriptor, var3024=r1, var3854=org.hibernate.type.descriptor.java.JavaTypeDescriptor, var3351=r2, var2251=r3, var3390=org.hibernate.type.AbstractSingleColumnStandardBasicType, var376=$r4, var1798=$r5, var1905=$r6, var526=$r7, var3429=$r8, var3939=$r9, var708=$i0, var1104=$r10, var1077=$r11}
; {org.hibernate.type.StandardBasicTypeTemplate=var1764, r0=var968, org.hibernate.type.descriptor.sql.SqlTypeDescriptor=var1624, r1=var3024, org.hibernate.type.descriptor.java.JavaTypeDescriptor=var3854, r2=var3351, r3=var2251, org.hibernate.type.AbstractSingleColumnStandardBasicType=var3390, $r4=var376, $r5=var1798, $r6=var1905, $r7=var526, $r8=var3429, $r9=var3939, $i0=var708, $r10=var1104, $r11=var1077}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.type.StandardBasicTypeTemplate;	r1 := @parameter0: org.hibernate.type.descriptor.sql.SqlTypeDescriptor;	r2 := @parameter1: org.hibernate.type.descriptor.java.JavaTypeDescriptor;	r3 := @parameter2: java.lang.String[];	specialinvoke r0.<org.hibernate.type.AbstractSingleColumnStandardBasicType: void <init>(org.hibernate.type.descriptor.sql.SqlTypeDescriptor,org.hibernate.type.descriptor.java.JavaTypeDescriptor)>(r1, r2);	r0.<org.hibernate.type.StandardBasicTypeTemplate: java.lang.String[] registrationKeys> = r3;	$r4 = interfaceinvoke r2.<org.hibernate.type.descriptor.java.JavaTypeDescriptor: java.lang.Class getJavaType()>();	if $r4 != null goto $r5 = new java.lang.StringBuilder;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = interfaceinvoke r2.<org.hibernate.type.descriptor.java.JavaTypeDescriptor: java.lang.Class getJavaType()>();	$r7 = virtualinvoke $r6.<java.lang.Class: java.lang.String getName()>();	$r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" -> ");	$i0 = interfaceinvoke r1.<org.hibernate.type.descriptor.sql.SqlTypeDescriptor: int getSqlType()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	r0.<org.hibernate.type.StandardBasicTypeTemplate: java.lang.String name> = $r11;	return
;block_num 3