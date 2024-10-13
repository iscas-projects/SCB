(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3463 0)
(declare-sort var3991 0)
(declare-sort var2626 0)
(declare-sort var763 0)
(declare-sort var2786 0)
(declare-sort var3953 0)
(declare-sort var1228 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun uniqueKeys/310692072 (var3463) var2626)
(declare-fun getName/-2142322286 (var763) String)
(declare-fun cast-from-var3991-to-var763 (var3991) var763)
(declare-fun var2626_get/1088891777 (var2626 var2786) var2786)
(declare-fun cast-from-String-to-var2786 (String) var2786)
(declare-fun cast-from-var2786-to-var3991 (var2786) var3991)
(declare-fun var3953-init () var3953)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1350304819 (var3953 String) void)
(declare-fun cast-from-var3953-to-var1228 (var3953) var1228)
(declare-const null-var3463 var3463)
(declare-const null-var3991 var3991)
(declare-const var2671 var3463) ; Statement: r0 := @this: org.hibernate.mapping.Table 
(assert (not (= var2671 null-var3463)))
(declare-const var708 var3991) ; Statement: r1 := @parameter0: org.hibernate.mapping.UniqueKey 
(assert (not (= var708 null-var3991)))
(define-const var3824 var2626 (uniqueKeys/310692072 var2671)) ; Statement: $r2 = r0.<org.hibernate.mapping.Table: java.util.Map uniqueKeys> 
(assert true)
(define-const var1556 String (getName/-2142322286 (cast-from-var3991-to-var763 var708))) ; Statement: $r3 = virtualinvoke r1.<org.hibernate.mapping.UniqueKey: java.lang.String getName()>() 
(define-const var2325 var2786 (var2626_get/1088891777 var3824 (cast-from-String-to-var2786 var1556))) ; Statement: $r4 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>($r3) 
(define-const var2206 var3991 (cast-from-var2786-to-var3991 var2325)) ; Statement: r5 = (org.hibernate.mapping.UniqueKey) $r4 
 ; Statement: if r5 == null goto $r6 = r0.<org.hibernate.mapping.Table: java.util.Map uniqueKeys> 
(assert (not (= var2206 null-var3991))) ; Negate: Cond: r5 == null  
(define-const var778 var3953 var3953-init) ; Statement: $r16 = new org.hibernate.MappingException 
(define-const var2361 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2361)) ; Statement: specialinvoke $r15.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2361!1 String)
(assert (= var2361!1 ""))
(assert true)
(define-const var1055 String (append/672562846 var2361!1 "UniqueKey ")) ; Statement: $r11 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("UniqueKey ") 
(declare-const var2361!2 String)
(assert (= var2361!2 (str.++ var2361!1 "UniqueKey ")))
(assert true)
(define-const var2415 String (getName/-2142322286 (cast-from-var3991-to-var763 var708))) ; Statement: $r10 = virtualinvoke r1.<org.hibernate.mapping.UniqueKey: java.lang.String getName()>() 
(assert true)
(define-const var3106 String (append/672562846 var1055 var2415)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var1055!1 String)
(assert (= var1055!1 (str.++ var1055 var2415)))
(assert true)
(define-const var5 String (append/672562846 var3106 " already exists!")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" already exists!") 
(declare-const var3106!1 String)
(assert (= var3106!1 (str.++ var3106 " already exists!")))
(assert true)
(define-const var3949 String (toString/-2075883882 var5)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1350304819 var778 var3949)) ; Statement: specialinvoke $r16.<org.hibernate.MappingException: void <init>(java.lang.String)>($r14) 

(declare-const var778!1 var3953)
(declare-const var3949!1 String)
(define-const var1085 var1228 (cast-from-var3953-to-var1228 var778!1)) ; Statement: $r17 = (java.lang.Throwable) $r16 
 ; Statement: throw $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {uniqueKeys/310692072=([org.hibernate.mapping.Table], java.util.Map), getName/-2142322286=([org.hibernate.mapping.Constraint], java.lang.String), cast-from-var3991-to-var763=([org.hibernate.mapping.UniqueKey], org.hibernate.mapping.Constraint), var2626_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var2786=([java.lang.String], java.lang.Object), cast-from-var2786-to-var3991=([java.lang.Object], org.hibernate.mapping.UniqueKey), var3953-init=([], org.hibernate.MappingException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1350304819=([org.hibernate.MappingException, java.lang.String], void), cast-from-var3953-to-var1228=([org.hibernate.MappingException], java.lang.Throwable)}
; {var3463=org.hibernate.mapping.Table, var2671=r0, var3991=org.hibernate.mapping.UniqueKey, var708=r1, var2626=java.util.Map, var3824=$r2, var763=org.hibernate.mapping.Constraint, var1556=$r3, var2786=java.lang.Object, var2325=$r4, var2206=r5, var3953=org.hibernate.MappingException, var778=$r16, var2361=$r15, var1055=$r11, var2415=$r10, var3106=$r12, var5=$r13, var3949=$r14, var1228=java.lang.Throwable, var1085=$r17}
; {org.hibernate.mapping.Table=var3463, r0=var2671, org.hibernate.mapping.UniqueKey=var3991, r1=var708, java.util.Map=var2626, $r2=var3824, org.hibernate.mapping.Constraint=var763, $r3=var1556, java.lang.Object=var2786, $r4=var2325, r5=var2206, org.hibernate.MappingException=var3953, $r16=var778, $r15=var2361, $r11=var1055, $r10=var2415, $r12=var3106, $r13=var5, $r14=var3949, java.lang.Throwable=var1228, $r17=var1085}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.mapping.Table;	r1 := @parameter0: org.hibernate.mapping.UniqueKey;	$r2 = r0.<org.hibernate.mapping.Table: java.util.Map uniqueKeys>;	$r3 = virtualinvoke r1.<org.hibernate.mapping.UniqueKey: java.lang.String getName()>();	$r4 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>($r3);	r5 = (org.hibernate.mapping.UniqueKey) $r4;	if r5 == null goto $r6 = r0.<org.hibernate.mapping.Table: java.util.Map uniqueKeys>;	$r16 = new org.hibernate.MappingException;	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("UniqueKey ");	$r10 = virtualinvoke r1.<org.hibernate.mapping.UniqueKey: java.lang.String getName()>();	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" already exists!");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r16.<org.hibernate.MappingException: void <init>(java.lang.String)>($r14);	$r17 = (java.lang.Throwable) $r16;	throw $r17
;block_num 2