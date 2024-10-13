(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2303 0)
(declare-sort var3635 0)
(declare-sort var2548 0)
(declare-sort var73 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun propertyRefResolver/1317447214 (var2303) var2548)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2548_get/1088891777 (var2548 var73) var73)
(declare-fun cast-from-String-to-var73 (String) var73)
(declare-fun cast-from-var73-to-String (var73) String)
(declare-const null-var2303 var2303)
(declare-const null-String String)
(declare-const null-var2548 var2548)
(declare-const var2968 var2303) ; Statement: r0 := @this: org.hibernate.boot.internal.InFlightMetadataCollectorImpl 
(assert (not (= var2968 null-var2303)))
(declare-const var2283 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var2283 null-String)))
(declare-const var2023 String) ; Statement: r6 := @parameter1: java.lang.String 
(assert (not (= var2023 null-String)))
(define-const var2497 var2548 (propertyRefResolver/1317447214 var2968)) ; Statement: $r1 = r0.<org.hibernate.boot.internal.InFlightMetadataCollectorImpl: java.util.Map propertyRefResolver> 
 ; Statement: if $r1 != null goto $r3 = r0.<org.hibernate.boot.internal.InFlightMetadataCollectorImpl: java.util.Map propertyRefResolver> 
(assert (not (= var2497 null-var2548))) ; Cond: $r1 != null 
(define-const var3982 var2548 (propertyRefResolver/1317447214 var2968)) ; Statement: $r3 = r0.<org.hibernate.boot.internal.InFlightMetadataCollectorImpl: java.util.Map propertyRefResolver> 
(define-const var3928 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3928)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3928!1 String)
(assert (= var3928!1 ""))
(assert true)
(define-const var665 String (append/672562846 var3928!1 var2283)) ; Statement: $r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var3928!2 String)
(assert (= var3928!2 (str.++ var3928!1 var2283)))
(assert true)
(define-const var1816 String (append/672562846 var665 ".")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".") 
(declare-const var665!1 String)
(assert (= var665!1 (str.++ var665 ".")))
(assert true)
(define-const var1277 String (append/672562846 var1816 var2023)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6) 
(declare-const var1816!1 String)
(assert (= var1816!1 (str.++ var1816 var2023)))
(assert true)
(define-const var1947 String (toString/-2075883882 var1277)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3936 var73 (var2548_get/1088891777 var3982 (cast-from-String-to-var73 var1947))) ; Statement: $r10 = interfaceinvoke $r3.<java.util.Map: java.lang.Object get(java.lang.Object)>($r9) 
(define-const var3384 String (cast-from-var73-to-String var3936)) ; Statement: $r11 = (java.lang.String) $r10 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {propertyRefResolver/1317447214=([org.hibernate.boot.internal.InFlightMetadataCollectorImpl], java.util.Map), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2548_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var73=([java.lang.String], java.lang.Object), cast-from-var73-to-String=([java.lang.Object], java.lang.String)}
; {var2303=org.hibernate.boot.internal.InFlightMetadataCollectorImpl, var2968=r0, var2283=r4, var3635=null_type, var2023=r6, var2548=java.util.Map, var2497=$r1, var3982=$r3, var3928=$r2, var665=$r5, var1816=$r7, var1277=$r8, var1947=$r9, var73=java.lang.Object, var3936=$r10, var3384=$r11}
; {org.hibernate.boot.internal.InFlightMetadataCollectorImpl=var2303, r0=var2968, r4=var2283, null_type=var3635, r6=var2023, java.util.Map=var2548, $r1=var2497, $r3=var3982, $r2=var3928, $r5=var665, $r7=var1816, $r8=var1277, $r9=var1947, java.lang.Object=var73, $r10=var3936, $r11=var3384}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.boot.internal.InFlightMetadataCollectorImpl;	r4 := @parameter0: java.lang.String;	r6 := @parameter1: java.lang.String;	$r1 = r0.<org.hibernate.boot.internal.InFlightMetadataCollectorImpl: java.util.Map propertyRefResolver>;	if $r1 != null goto $r3 = r0.<org.hibernate.boot.internal.InFlightMetadataCollectorImpl: java.util.Map propertyRefResolver>;	$r3 = r0.<org.hibernate.boot.internal.InFlightMetadataCollectorImpl: java.util.Map propertyRefResolver>;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	$r10 = interfaceinvoke $r3.<java.util.Map: java.lang.Object get(java.lang.Object)>($r9);	$r11 = (java.lang.String) $r10;	return $r11
;block_num 2