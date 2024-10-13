(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1538 0)
(declare-sort var186 0)
(declare-sort var819 0)
(declare-sort var2984 0)
(declare-sort var2979 0)
(declare-sort var3643 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var819-init () var819)
(declare-fun <init>/-808729244 (var819) void)
(declare-fun getMappedClass/-493975315 (var1538) ClassObject)
(declare-fun getProxyInterface/1609399869 (var1538) ClassObject)
(declare-fun equals/-1650223740 (var2984 var2984) Bool)
(declare-fun cast-from-ClassObject-to-var2984 (ClassObject) var2984)
(declare-fun isInterface/-352192428 (ClassObject) Bool)
(declare-fun var2979-init () var2979)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1350304819 (var2979 String) void)
(declare-fun cast-from-var2979-to-var3643 (var2979) var3643)
(declare-const null-var1538 var1538)
(declare-const null-String String)
(declare-const null-ClassObject ClassObject)
(declare-const var1825 var1538) ; Statement: r1 := @parameter0: org.hibernate.mapping.PersistentClass 
(assert (not (= var1825 null-var1538)))
(declare-const var1086 String) ; Statement: r17 := @parameter1: java.lang.String 
(assert (not (= var1086 null-String)))
(define-const var3353 var819 var819-init) ; Statement: $r21 = new java.util.LinkedHashSet 
(assert true)
;(assert (<init>/-808729244 var3353)) ; Statement: specialinvoke $r21.<java.util.LinkedHashSet: void <init>()>() 

(declare-const var3353!1 var819)
(assert true)
(define-const var3748 ClassObject (getMappedClass/-493975315 var1825)) ; Statement: r2 = virtualinvoke r1.<org.hibernate.mapping.PersistentClass: java.lang.Class getMappedClass()>() 
(assert true)
(define-const var3000 ClassObject (getProxyInterface/1609399869 var1825)) ; Statement: r3 = virtualinvoke r1.<org.hibernate.mapping.PersistentClass: java.lang.Class getProxyInterface()>() 
 ; Statement: if r3 == null goto $z4 = virtualinvoke r2.<java.lang.Class: boolean isInterface()>() 
(assert (not (= var3000 null-ClassObject))) ; Negate: Cond: r3 == null  
(assert true)
(define-const var2877 Bool (equals/-1650223740 (cast-from-ClassObject-to-var2984 var3748) (cast-from-ClassObject-to-var2984 var3000))) ; Statement: $z2 = virtualinvoke r2.<java.lang.Object: boolean equals(java.lang.Object)>(r3) 
 ; Statement: if $z2 != 0 goto $z4 = virtualinvoke r2.<java.lang.Class: boolean isInterface()>() 
(assert (not (not (= (ite var2877 1 0) 0)))) ; Negate: Cond: $z2 != 0  
(assert true)
(define-const var1450 Bool (isInterface/-352192428 var3000)) ; Statement: $z3 = virtualinvoke r3.<java.lang.Class: boolean isInterface()>() 
 ; Statement: if $z3 != 0 goto interfaceinvoke $r21.<java.util.Set: boolean add(java.lang.Object)>(r3) 
(assert (not (not (= (ite var1450 1 0) 0)))) ; Negate: Cond: $z3 != 0  
(define-const var1255 var2979 var2979-init) ; Statement: $r23 = new org.hibernate.MappingException 
(define-const var2736 String String-init) ; Statement: $r22 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2736)) ; Statement: specialinvoke $r22.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2736!1 String)
(assert (= var2736!1 ""))
(assert true)
(define-const var1115 String (append/672562846 var2736!1 "proxy must be either an interface, or the class itself: ")) ; Statement: $r18 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("proxy must be either an interface, or the class itself: ") 
(declare-const var2736!2 String)
(assert (= var2736!2 (str.++ var2736!1 "proxy must be either an interface, or the class itself: ")))
(assert true)
(define-const var2573 String (append/672562846 var1115 var1086)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r17) 
(declare-const var1115!1 String)
(assert (= var1115!1 (str.++ var1115 var1086)))
(assert true)
(define-const var1745 String (toString/-2075883882 var2573)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1350304819 var1255 var1745)) ; Statement: specialinvoke $r23.<org.hibernate.MappingException: void <init>(java.lang.String)>($r20) 

(declare-const var1255!1 var2979)
(declare-const var1745!1 String)
(define-const var408 var3643 (cast-from-var2979-to-var3643 var1255!1)) ; Statement: $r26 = (java.lang.Throwable) $r23 
 ; Statement: throw $r26 
(check-sat)
(get-model)
(get-unsat-core)
; {var819-init=([], java.util.LinkedHashSet), <init>/-808729244=([java.util.LinkedHashSet], void), getMappedClass/-493975315=([org.hibernate.mapping.PersistentClass], java.lang.Class), getProxyInterface/1609399869=([org.hibernate.mapping.PersistentClass], java.lang.Class), equals/-1650223740=([java.lang.Object, java.lang.Object], boolean), cast-from-ClassObject-to-var2984=([java.lang.Class], java.lang.Object), isInterface/-352192428=([java.lang.Class], boolean), var2979-init=([], org.hibernate.MappingException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1350304819=([org.hibernate.MappingException, java.lang.String], void), cast-from-var2979-to-var3643=([org.hibernate.MappingException], java.lang.Throwable)}
; {var1538=org.hibernate.mapping.PersistentClass, var1825=r1, var1086=r17, var186=null_type, var819=java.util.LinkedHashSet, var3353=$r21, var3748=r2, var3000=r3, var2984=java.lang.Object, var2877=$z2, var1450=$z3, var2979=org.hibernate.MappingException, var1255=$r23, var2736=$r22, var1115=$r18, var2573=$r19, var1745=$r20, var3643=java.lang.Throwable, var408=$r26}
; {org.hibernate.mapping.PersistentClass=var1538, r1=var1825, r17=var1086, null_type=var186, java.util.LinkedHashSet=var819, $r21=var3353, r2=var3748, r3=var3000, java.lang.Object=var2984, $z2=var2877, $z3=var1450, org.hibernate.MappingException=var2979, $r23=var1255, $r22=var2736, $r18=var1115, $r19=var2573, $r20=var1745, java.lang.Throwable=var3643, $r26=var408}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: org.hibernate.mapping.PersistentClass;	r17 := @parameter1: java.lang.String;	$r21 = new java.util.LinkedHashSet;	specialinvoke $r21.<java.util.LinkedHashSet: void <init>()>();	r2 = virtualinvoke r1.<org.hibernate.mapping.PersistentClass: java.lang.Class getMappedClass()>();	r3 = virtualinvoke r1.<org.hibernate.mapping.PersistentClass: java.lang.Class getProxyInterface()>();	if r3 == null goto $z4 = virtualinvoke r2.<java.lang.Class: boolean isInterface()>();	$z2 = virtualinvoke r2.<java.lang.Object: boolean equals(java.lang.Object)>(r3);	if $z2 != 0 goto $z4 = virtualinvoke r2.<java.lang.Class: boolean isInterface()>();	$z3 = virtualinvoke r3.<java.lang.Class: boolean isInterface()>();	if $z3 != 0 goto interfaceinvoke $r21.<java.util.Set: boolean add(java.lang.Object)>(r3);	$r23 = new org.hibernate.MappingException;	$r22 = new java.lang.StringBuilder;	specialinvoke $r22.<java.lang.StringBuilder: void <init>()>();	$r18 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("proxy must be either an interface, or the class itself: ");	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r17);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r23.<org.hibernate.MappingException: void <init>(java.lang.String)>($r20);	$r26 = (java.lang.Throwable) $r23;	throw $r26
;block_num 4