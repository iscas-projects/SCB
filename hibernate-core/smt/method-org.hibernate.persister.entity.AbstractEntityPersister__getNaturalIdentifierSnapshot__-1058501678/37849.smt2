(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1198 0)
(declare-sort var3215 0)
(declare-sort var2991 0)
(declare-sort var2462 0)
(declare-sort var2901 0)
(declare-sort var864 0)
(declare-sort var1747 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hasNaturalIdentifier/-1979069337 (var1198) Bool)
(declare-fun var2462-init () var2462)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var2901_infoString/-1755730994 (var864) String)
(declare-fun cast-from-var1198-to-var864 (var1198) var864)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1350304819 (var2462 String) void)
(declare-fun cast-from-var2462-to-var1747 (var2462) var1747)
(declare-const null-var1198 var1198)
(declare-const null-var3215 var3215)
(declare-const null-var2991 var2991)
(declare-const var3706 var1198) ; Statement: r0 := @this: org.hibernate.persister.entity.AbstractEntityPersister 
(assert (not (= var3706 null-var1198)))
(declare-const var1612 var3215) ; Statement: r30 := @parameter0: java.io.Serializable 
(assert (not (= var1612 null-var3215)))
(declare-const var2618 var2991) ; Statement: r28 := @parameter1: org.hibernate.engine.spi.SharedSessionContractImplementor 
(assert (not (= var2618 null-var2991)))
(assert true)
(define-const var3081 Bool (hasNaturalIdentifier/-1979069337 var3706)) ; Statement: $z0 = virtualinvoke r0.<org.hibernate.persister.entity.AbstractEntityPersister: boolean hasNaturalIdentifier()>() 
 ; Statement: if $z0 != 0 goto $r1 = <org.hibernate.persister.entity.AbstractEntityPersister: org.hibernate.internal.CoreMessageLogger LOG> 
(assert (not (not (= (ite var3081 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var2602 var2462 var2462-init) ; Statement: $r88 = new org.hibernate.MappingException 
(define-const var1081 String String-init) ; Statement: $r87 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1081)) ; Statement: specialinvoke $r87.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1081!1 String)
(assert (= var1081!1 ""))
(assert true)
(define-const var2400 String (append/672562846 var1081!1 "persistent class did not define a natural-id : ")) ; Statement: $r69 = virtualinvoke $r87.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("persistent class did not define a natural-id : ") 
(declare-const var1081!2 String)
(assert (= var1081!2 (str.++ var1081!1 "persistent class did not define a natural-id : ")))
(define-const var2133 String (var2901_infoString/-1755730994 (cast-from-var1198-to-var864 var3706))) ; Statement: $r68 = staticinvoke <org.hibernate.pretty.MessageHelper: java.lang.String infoString(org.hibernate.persister.entity.EntityPersister)>(r0) 
(assert true)
(define-const var514 String (append/672562846 var2400 var2133)) ; Statement: $r70 = virtualinvoke $r69.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r68) 
(declare-const var2400!1 String)
(assert (= var2400!1 (str.++ var2400 var2133)))
(assert true)
(define-const var1477 String (toString/-2075883882 var514)) ; Statement: $r71 = virtualinvoke $r70.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1350304819 var2602 var1477)) ; Statement: specialinvoke $r88.<org.hibernate.MappingException: void <init>(java.lang.String)>($r71) 

(declare-const var2602!1 var2462)
(declare-const var1477!1 String)
(define-const var1119 var1747 (cast-from-var2462-to-var1747 var2602!1)) ; Statement: $r94 = (java.lang.Throwable) $r88 
 ; Statement: throw $r94 
(check-sat)
(get-model)
(get-unsat-core)
; {hasNaturalIdentifier/-1979069337=([org.hibernate.persister.entity.AbstractEntityPersister], boolean), var2462-init=([], org.hibernate.MappingException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var2901_infoString/-1755730994=([org.hibernate.persister.entity.EntityPersister], java.lang.String), cast-from-var1198-to-var864=([org.hibernate.persister.entity.AbstractEntityPersister], org.hibernate.persister.entity.EntityPersister), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1350304819=([org.hibernate.MappingException, java.lang.String], void), cast-from-var2462-to-var1747=([org.hibernate.MappingException], java.lang.Throwable)}
; {var1198=org.hibernate.persister.entity.AbstractEntityPersister, var3706=r0, var3215=java.io.Serializable, var1612=r30, var2991=org.hibernate.engine.spi.SharedSessionContractImplementor, var2618=r28, var3081=$z0, var2462=org.hibernate.MappingException, var2602=$r88, var1081=$r87, var2400=$r69, var2901=org.hibernate.pretty.MessageHelper, var864=org.hibernate.persister.entity.EntityPersister, var2133=$r68, var514=$r70, var1477=$r71, var1747=java.lang.Throwable, var1119=$r94}
; {org.hibernate.persister.entity.AbstractEntityPersister=var1198, r0=var3706, java.io.Serializable=var3215, r30=var1612, org.hibernate.engine.spi.SharedSessionContractImplementor=var2991, r28=var2618, $z0=var3081, org.hibernate.MappingException=var2462, $r88=var2602, $r87=var1081, $r69=var2400, org.hibernate.pretty.MessageHelper=var2901, org.hibernate.persister.entity.EntityPersister=var864, $r68=var2133, $r70=var514, $r71=var1477, java.lang.Throwable=var1747, $r94=var1119}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.persister.entity.AbstractEntityPersister;	r30 := @parameter0: java.io.Serializable;	r28 := @parameter1: org.hibernate.engine.spi.SharedSessionContractImplementor;	$z0 = virtualinvoke r0.<org.hibernate.persister.entity.AbstractEntityPersister: boolean hasNaturalIdentifier()>();	if $z0 != 0 goto $r1 = <org.hibernate.persister.entity.AbstractEntityPersister: org.hibernate.internal.CoreMessageLogger LOG>;	$r88 = new org.hibernate.MappingException;	$r87 = new java.lang.StringBuilder;	specialinvoke $r87.<java.lang.StringBuilder: void <init>()>();	$r69 = virtualinvoke $r87.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("persistent class did not define a natural-id : ");	$r68 = staticinvoke <org.hibernate.pretty.MessageHelper: java.lang.String infoString(org.hibernate.persister.entity.EntityPersister)>(r0);	$r70 = virtualinvoke $r69.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r68);	$r71 = virtualinvoke $r70.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r88.<org.hibernate.MappingException: void <init>(java.lang.String)>($r71);	$r94 = (java.lang.Throwable) $r88;	throw $r94
;block_num 2