(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var128 0)
(declare-sort var2969 0)
(declare-sort var1484 0)
(declare-sort var114 0)
(declare-sort var3797 0)
(declare-sort var3291 0)
(declare-sort var2734 0)
(declare-sort var3581 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var128!class ClassObject)
(declare-fun get/-1721276195 (var114 var1484) var1484)
(declare-fun cast-from-var2969-to-var114 (var2969) var114)
(declare-fun cast-from-String-to-var1484 (String) var1484)
(declare-fun cast-from-var1484-to-var3797 (var1484) var3797)
(declare-fun getProperty/1391780669 (var2969 String) String)
(declare-fun var2734-init () var2734)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1350304819 (var2734 String) void)
(declare-fun cast-from-var2734-to-var3581 (var2734) var3581)
(declare-const null-var128 var128)
(declare-const null-var2969 var2969)
(declare-const null-var3797 var3797)
(declare-const null-String String)
(declare-const var1599 var128) ; Statement: r4 := @this: org.hibernate.type.SerializableToBlobType 
(assert (not (= var1599 null-var128)))
(declare-const var368 var2969) ; Statement: r0 := @parameter0: java.util.Properties 
(assert (not (= var368 null-var2969)))
(assert true)
(define-const var3649 var1484 (get/-1721276195 (cast-from-var2969-to-var114 var368) (cast-from-String-to-var1484 "org.hibernate.type.ParameterType"))) ; Statement: $r1 = virtualinvoke r0.<java.util.Properties: java.lang.Object get(java.lang.Object)>("org.hibernate.type.ParameterType") 
(define-const var890 var3797 (cast-from-var1484-to-var3797 var3649)) ; Statement: r2 = (org.hibernate.usertype.DynamicParameterizedType$ParameterType) $r1 
 ; Statement: if r2 == null goto r3 = virtualinvoke r0.<java.util.Properties: java.lang.String getProperty(java.lang.String)>("classname") 
(assert (= var890 null-var3797)) ; Cond: r2 == null 
(assert true)
(define-const var718 String (getProperty/1391780669 var368 "classname")) ; Statement: r3 = virtualinvoke r0.<java.util.Properties: java.lang.String getProperty(java.lang.String)>("classname") 
 ; Statement: if r3 != null goto $r21 = new org.hibernate.type.descriptor.java.SerializableTypeDescriptor 
(assert (not (not (= var718 null-String)))) ; Negate: Cond: r3 != null  
(define-const var774 var2734 var2734-init) ; Statement: $r20 = new org.hibernate.MappingException 
(define-const var2793 String String-init) ; Statement: $r19 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2793)) ; Statement: specialinvoke $r19.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2793!1 String)
(assert (= var2793!1 ""))
(assert true)
(define-const var2315 String (append/672562846 var2793!1 "No class name defined for type: ")) ; Statement: $r11 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No class name defined for type: ") 
(declare-const var2793!2 String)
(assert (= var2793!2 (str.++ var2793!1 "No class name defined for type: ")))
(define-const var2631 ClassObject var128!class) ; Statement: $r9 = class "Lorg/hibernate/type/SerializableToBlobType;" 
(assert true)
(define-const var930 String (getName/-1958580599 var2631)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3651 String (append/672562846 var2315 var930)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var2315!1 String)
(assert (= var2315!1 (str.++ var2315 var930)))
(assert true)
(define-const var392 String (toString/-2075883882 var3651)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1350304819 var774 var392)) ; Statement: specialinvoke $r20.<org.hibernate.MappingException: void <init>(java.lang.String)>($r13) 

(declare-const var774!1 var2734)
(declare-const var392!1 String)
(define-const var3660 var3581 (cast-from-var2734-to-var3581 var774!1)) ; Statement: $r23 = (java.lang.Throwable) $r20 
 ; Statement: throw $r23 
(check-sat)
(get-model)
(get-unsat-core)
; {get/-1721276195=([java.util.Hashtable, java.lang.Object], java.lang.Object), cast-from-var2969-to-var114=([java.util.Properties], java.util.Hashtable), cast-from-String-to-var1484=([java.lang.String], java.lang.Object), cast-from-var1484-to-var3797=([java.lang.Object], org.hibernate.usertype.DynamicParameterizedType$ParameterType), getProperty/1391780669=([java.util.Properties, java.lang.String], java.lang.String), var2734-init=([], org.hibernate.MappingException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1350304819=([org.hibernate.MappingException, java.lang.String], void), cast-from-var2734-to-var3581=([org.hibernate.MappingException], java.lang.Throwable)}
; {var128=org.hibernate.type.SerializableToBlobType, var1599=r4, var2969=java.util.Properties, var368=r0, var1484=java.lang.Object, var114=java.util.Hashtable, var3649=$r1, var3797=org.hibernate.usertype.DynamicParameterizedType$ParameterType, var890=r2, var718=r3, var3291=null_type, var2734=org.hibernate.MappingException, var774=$r20, var2793=$r19, var2315=$r11, var2631=$r9, var930=$r10, var3651=$r12, var392=$r13, var3581=java.lang.Throwable, var3660=$r23}
; {org.hibernate.type.SerializableToBlobType=var128, r4=var1599, java.util.Properties=var2969, r0=var368, java.lang.Object=var1484, java.util.Hashtable=var114, $r1=var3649, org.hibernate.usertype.DynamicParameterizedType$ParameterType=var3797, r2=var890, r3=var718, null_type=var3291, org.hibernate.MappingException=var2734, $r20=var774, $r19=var2793, $r11=var2315, $r9=var2631, $r10=var930, $r12=var3651, $r13=var392, java.lang.Throwable=var3581, $r23=var3660}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r4 := @this: org.hibernate.type.SerializableToBlobType;	r0 := @parameter0: java.util.Properties;	$r1 = virtualinvoke r0.<java.util.Properties: java.lang.Object get(java.lang.Object)>("org.hibernate.type.ParameterType");	r2 = (org.hibernate.usertype.DynamicParameterizedType$ParameterType) $r1;	if r2 == null goto r3 = virtualinvoke r0.<java.util.Properties: java.lang.String getProperty(java.lang.String)>("classname");	r3 = virtualinvoke r0.<java.util.Properties: java.lang.String getProperty(java.lang.String)>("classname");	if r3 != null goto $r21 = new org.hibernate.type.descriptor.java.SerializableTypeDescriptor;	$r20 = new org.hibernate.MappingException;	$r19 = new java.lang.StringBuilder;	specialinvoke $r19.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No class name defined for type: ");	$r9 = class "Lorg/hibernate/type/SerializableToBlobType;";	$r10 = virtualinvoke $r9.<java.lang.Class: java.lang.String getName()>();	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r20.<org.hibernate.MappingException: void <init>(java.lang.String)>($r13);	$r23 = (java.lang.Throwable) $r20;	throw $r23
;block_num 3