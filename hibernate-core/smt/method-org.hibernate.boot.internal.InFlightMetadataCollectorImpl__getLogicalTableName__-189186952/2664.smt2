(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3498 0)
(declare-sort var477 0)
(declare-sort var677 0)
(declare-sort var3430 0)
(declare-sort var3285 0)
(declare-sort var783 0)
(declare-sort var3533 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun physicalToLogicalTableNameMap/1317447214 (var3498) var677)
(declare-fun getNameIdentifier/1639380429 (var477) var3430)
(declare-fun var677_get/1088891777 (var677 var3285) var3285)
(declare-fun cast-from-var3430-to-var3285 (var3430) var3285)
(declare-fun cast-from-var3285-to-var3430 (var3285) var3430)
(declare-fun var783-init () var783)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1669825851 (var477) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1350304819 (var783 String) void)
(declare-fun cast-from-var783-to-var3533 (var783) var3533)
(declare-const null-var3498 var3498)
(declare-const null-var477 var477)
(declare-const null-var3430 var3430)
(declare-const var2683 var3498) ; Statement: r0 := @this: org.hibernate.boot.internal.InFlightMetadataCollectorImpl 
(assert (not (= var2683 null-var3498)))
(declare-const var3650 var477) ; Statement: r1 := @parameter0: org.hibernate.mapping.Table 
(assert (not (= var3650 null-var477)))
(define-const var2219 var677 (physicalToLogicalTableNameMap/1317447214 var2683)) ; Statement: $r2 = r0.<org.hibernate.boot.internal.InFlightMetadataCollectorImpl: java.util.Map physicalToLogicalTableNameMap> 
(assert true)
(define-const var2160 var3430 (getNameIdentifier/1639380429 var3650)) ; Statement: $r3 = virtualinvoke r1.<org.hibernate.mapping.Table: org.hibernate.boot.model.naming.Identifier getNameIdentifier()>() 
(define-const var269 var3285 (var677_get/1088891777 var2219 (cast-from-var3430-to-var3285 var2160))) ; Statement: $r4 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>($r3) 
(define-const var1932 var3430 (cast-from-var3285-to-var3430 var269)) ; Statement: r5 = (org.hibernate.boot.model.naming.Identifier) $r4 
 ; Statement: if r5 != null goto $r6 = virtualinvoke r5.<org.hibernate.boot.model.naming.Identifier: java.lang.String render()>() 
(assert (not (not (= var1932 null-var3430)))) ; Negate: Cond: r5 != null  
(define-const var3878 var783 var783-init) ; Statement: $r14 = new org.hibernate.MappingException 
(define-const var3812 String String-init) ; Statement: $r13 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3812)) ; Statement: specialinvoke $r13.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3812!1 String)
(assert (= var3812!1 ""))
(assert true)
(define-const var581 String (append/672562846 var3812!1 "Unable to find physical table: ")) ; Statement: $r10 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to find physical table: ") 
(declare-const var3812!2 String)
(assert (= var3812!2 (str.++ var3812!1 "Unable to find physical table: ")))
(assert true)
(define-const var476 String (getName/-1669825851 var3650)) ; Statement: $r9 = virtualinvoke r1.<org.hibernate.mapping.Table: java.lang.String getName()>() 
(assert true)
(define-const var3223 String (append/672562846 var581 var476)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var581!1 String)
(assert (= var581!1 (str.++ var581 var476)))
(assert true)
(define-const var75 String (toString/-2075883882 var3223)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1350304819 var3878 var75)) ; Statement: specialinvoke $r14.<org.hibernate.MappingException: void <init>(java.lang.String)>($r12) 

(declare-const var3878!1 var783)
(declare-const var75!1 String)
(define-const var2260 var3533 (cast-from-var783-to-var3533 var3878!1)) ; Statement: $r15 = (java.lang.Throwable) $r14 
 ; Statement: throw $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {physicalToLogicalTableNameMap/1317447214=([org.hibernate.boot.internal.InFlightMetadataCollectorImpl], java.util.Map), getNameIdentifier/1639380429=([org.hibernate.mapping.Table], org.hibernate.boot.model.naming.Identifier), var677_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-var3430-to-var3285=([org.hibernate.boot.model.naming.Identifier], java.lang.Object), cast-from-var3285-to-var3430=([java.lang.Object], org.hibernate.boot.model.naming.Identifier), var783-init=([], org.hibernate.MappingException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1669825851=([org.hibernate.mapping.Table], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1350304819=([org.hibernate.MappingException, java.lang.String], void), cast-from-var783-to-var3533=([org.hibernate.MappingException], java.lang.Throwable)}
; {var3498=org.hibernate.boot.internal.InFlightMetadataCollectorImpl, var2683=r0, var477=org.hibernate.mapping.Table, var3650=r1, var677=java.util.Map, var2219=$r2, var3430=org.hibernate.boot.model.naming.Identifier, var2160=$r3, var3285=java.lang.Object, var269=$r4, var1932=r5, var783=org.hibernate.MappingException, var3878=$r14, var3812=$r13, var581=$r10, var476=$r9, var3223=$r11, var75=$r12, var3533=java.lang.Throwable, var2260=$r15}
; {org.hibernate.boot.internal.InFlightMetadataCollectorImpl=var3498, r0=var2683, org.hibernate.mapping.Table=var477, r1=var3650, java.util.Map=var677, $r2=var2219, org.hibernate.boot.model.naming.Identifier=var3430, $r3=var2160, java.lang.Object=var3285, $r4=var269, r5=var1932, org.hibernate.MappingException=var783, $r14=var3878, $r13=var3812, $r10=var581, $r9=var476, $r11=var3223, $r12=var75, java.lang.Throwable=var3533, $r15=var2260}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.boot.internal.InFlightMetadataCollectorImpl;	r1 := @parameter0: org.hibernate.mapping.Table;	$r2 = r0.<org.hibernate.boot.internal.InFlightMetadataCollectorImpl: java.util.Map physicalToLogicalTableNameMap>;	$r3 = virtualinvoke r1.<org.hibernate.mapping.Table: org.hibernate.boot.model.naming.Identifier getNameIdentifier()>();	$r4 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>($r3);	r5 = (org.hibernate.boot.model.naming.Identifier) $r4;	if r5 != null goto $r6 = virtualinvoke r5.<org.hibernate.boot.model.naming.Identifier: java.lang.String render()>();	$r14 = new org.hibernate.MappingException;	$r13 = new java.lang.StringBuilder;	specialinvoke $r13.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to find physical table: ");	$r9 = virtualinvoke r1.<org.hibernate.mapping.Table: java.lang.String getName()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r14.<org.hibernate.MappingException: void <init>(java.lang.String)>($r12);	$r15 = (java.lang.Throwable) $r14;	throw $r15
;block_num 2