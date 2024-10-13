(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3437 0)
(declare-sort var418 0)
(declare-sort var2504 0)
(declare-sort var1193 0)
(declare-sort var2245 0)
(declare-sort var476 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun indexes/310692072 (var3437) var2504)
(declare-fun getName/-354198463 (var418) String)
(declare-fun var2504_get/1088891777 (var2504 var1193) var1193)
(declare-fun cast-from-String-to-var1193 (String) var1193)
(declare-fun cast-from-var1193-to-var418 (var1193) var418)
(declare-fun var2245-init () var2245)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1350304819 (var2245 String) void)
(declare-fun cast-from-var2245-to-var476 (var2245) var476)
(declare-const null-var3437 var3437)
(declare-const null-var418 var418)
(declare-const var3852 var3437) ; Statement: r0 := @this: org.hibernate.mapping.Table 
(assert (not (= var3852 null-var3437)))
(declare-const var1029 var418) ; Statement: r1 := @parameter0: org.hibernate.mapping.Index 
(assert (not (= var1029 null-var418)))
(define-const var3475 var2504 (indexes/310692072 var3852)) ; Statement: $r2 = r0.<org.hibernate.mapping.Table: java.util.Map indexes> 
(assert true)
(define-const var2354 String (getName/-354198463 var1029)) ; Statement: $r3 = virtualinvoke r1.<org.hibernate.mapping.Index: java.lang.String getName()>() 
(define-const var1984 var1193 (var2504_get/1088891777 var3475 (cast-from-String-to-var1193 var2354))) ; Statement: $r4 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>($r3) 
(define-const var3901 var418 (cast-from-var1193-to-var418 var1984)) ; Statement: r5 = (org.hibernate.mapping.Index) $r4 
 ; Statement: if r5 == null goto $r6 = r0.<org.hibernate.mapping.Table: java.util.Map indexes> 
(assert (not (= var3901 null-var418))) ; Negate: Cond: r5 == null  
(define-const var3747 var2245 var2245-init) ; Statement: $r16 = new org.hibernate.MappingException 
(define-const var1130 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1130)) ; Statement: specialinvoke $r15.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1130!1 String)
(assert (= var1130!1 ""))
(assert true)
(define-const var1856 String (append/672562846 var1130!1 "Index ")) ; Statement: $r11 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Index ") 
(declare-const var1130!2 String)
(assert (= var1130!2 (str.++ var1130!1 "Index ")))
(assert true)
(define-const var295 String (getName/-354198463 var1029)) ; Statement: $r10 = virtualinvoke r1.<org.hibernate.mapping.Index: java.lang.String getName()>() 
(assert true)
(define-const var3846 String (append/672562846 var1856 var295)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var1856!1 String)
(assert (= var1856!1 (str.++ var1856 var295)))
(assert true)
(define-const var2362 String (append/672562846 var3846 " already exists!")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" already exists!") 
(declare-const var3846!1 String)
(assert (= var3846!1 (str.++ var3846 " already exists!")))
(assert true)
(define-const var1266 String (toString/-2075883882 var2362)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1350304819 var3747 var1266)) ; Statement: specialinvoke $r16.<org.hibernate.MappingException: void <init>(java.lang.String)>($r14) 

(declare-const var3747!1 var2245)
(declare-const var1266!1 String)
(define-const var2951 var476 (cast-from-var2245-to-var476 var3747!1)) ; Statement: $r17 = (java.lang.Throwable) $r16 
 ; Statement: throw $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {indexes/310692072=([org.hibernate.mapping.Table], java.util.Map), getName/-354198463=([org.hibernate.mapping.Index], java.lang.String), var2504_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var1193=([java.lang.String], java.lang.Object), cast-from-var1193-to-var418=([java.lang.Object], org.hibernate.mapping.Index), var2245-init=([], org.hibernate.MappingException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1350304819=([org.hibernate.MappingException, java.lang.String], void), cast-from-var2245-to-var476=([org.hibernate.MappingException], java.lang.Throwable)}
; {var3437=org.hibernate.mapping.Table, var3852=r0, var418=org.hibernate.mapping.Index, var1029=r1, var2504=java.util.Map, var3475=$r2, var2354=$r3, var1193=java.lang.Object, var1984=$r4, var3901=r5, var2245=org.hibernate.MappingException, var3747=$r16, var1130=$r15, var1856=$r11, var295=$r10, var3846=$r12, var2362=$r13, var1266=$r14, var476=java.lang.Throwable, var2951=$r17}
; {org.hibernate.mapping.Table=var3437, r0=var3852, org.hibernate.mapping.Index=var418, r1=var1029, java.util.Map=var2504, $r2=var3475, $r3=var2354, java.lang.Object=var1193, $r4=var1984, r5=var3901, org.hibernate.MappingException=var2245, $r16=var3747, $r15=var1130, $r11=var1856, $r10=var295, $r12=var3846, $r13=var2362, $r14=var1266, java.lang.Throwable=var476, $r17=var2951}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.mapping.Table;	r1 := @parameter0: org.hibernate.mapping.Index;	$r2 = r0.<org.hibernate.mapping.Table: java.util.Map indexes>;	$r3 = virtualinvoke r1.<org.hibernate.mapping.Index: java.lang.String getName()>();	$r4 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>($r3);	r5 = (org.hibernate.mapping.Index) $r4;	if r5 == null goto $r6 = r0.<org.hibernate.mapping.Table: java.util.Map indexes>;	$r16 = new org.hibernate.MappingException;	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Index ");	$r10 = virtualinvoke r1.<org.hibernate.mapping.Index: java.lang.String getName()>();	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" already exists!");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r16.<org.hibernate.MappingException: void <init>(java.lang.String)>($r14);	$r17 = (java.lang.Throwable) $r16;	throw $r17
;block_num 2