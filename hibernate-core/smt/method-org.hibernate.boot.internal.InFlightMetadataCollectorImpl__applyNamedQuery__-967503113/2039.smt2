(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2451 0)
(declare-sort var416 0)
(declare-sort var35 0)
(declare-sort var3496 0)
(declare-sort var1200 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun checkQueryName/582632931 (var2451 String) void)
(declare-fun namedQueryMap/1317447214 (var2451) var3496)
(declare-fun intern/-1326102057 (String) String)
(declare-fun var3496_put/1464166817 (var3496 var1200 var1200) var1200)
(declare-fun cast-from-String-to-var1200 (String) var1200)
(declare-fun cast-from-var35-to-var1200 (var35) var1200)
(declare-const null-var2451 var2451)
(declare-const null-String String)
(declare-const null-var35 var35)
(declare-const var3905 var2451) ; Statement: r0 := @this: org.hibernate.boot.internal.InFlightMetadataCollectorImpl 
(assert (not (= var3905 null-var2451)))
(declare-const var205 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var205 null-String)))
(declare-const var548 var35) ; Statement: r3 := @parameter1: org.hibernate.engine.spi.NamedQueryDefinition 
(assert (not (= var548 null-var35)))
(assert true)
;(assert (checkQueryName/582632931 var3905 var205)) ; Statement: specialinvoke r0.<org.hibernate.boot.internal.InFlightMetadataCollectorImpl: void checkQueryName(java.lang.String)>(r1) 

(declare-const var3905!1 var2451)
(declare-const var205!1 String)
(define-const var3477 var3496 (namedQueryMap/1317447214 var3905!1)) ; Statement: $r2 = r0.<org.hibernate.boot.internal.InFlightMetadataCollectorImpl: java.util.Map namedQueryMap> 
(assert true)
(define-const var3956 String (intern/-1326102057 var205!1)) ; Statement: $r4 = virtualinvoke r1.<java.lang.String: java.lang.String intern()>() 
;(assert (var3496_put/1464166817 var3477 (cast-from-String-to-var1200 var3956) (cast-from-var35-to-var1200 var548))) ; Statement: interfaceinvoke $r2.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r4, r3) 

(declare-const var3477!1 var3496)
(declare-const var3956!1 String)
(declare-const var548!1 var35)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {checkQueryName/582632931=([org.hibernate.boot.internal.InFlightMetadataCollectorImpl, java.lang.String], void), namedQueryMap/1317447214=([org.hibernate.boot.internal.InFlightMetadataCollectorImpl], java.util.Map), intern/-1326102057=([java.lang.String], java.lang.String), var3496_put/1464166817=([java.util.Map, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-String-to-var1200=([java.lang.String], java.lang.Object), cast-from-var35-to-var1200=([org.hibernate.engine.spi.NamedQueryDefinition], java.lang.Object)}
; {var2451=org.hibernate.boot.internal.InFlightMetadataCollectorImpl, var3905=r0, var205=r1, var416=null_type, var35=org.hibernate.engine.spi.NamedQueryDefinition, var548=r3, var3496=java.util.Map, var3477=$r2, var3956=$r4, var1200=java.lang.Object}
; {org.hibernate.boot.internal.InFlightMetadataCollectorImpl=var2451, r0=var3905, r1=var205, null_type=var416, org.hibernate.engine.spi.NamedQueryDefinition=var35, r3=var548, java.util.Map=var3496, $r2=var3477, $r4=var3956, java.lang.Object=var1200}
;seq <java.lang.String: java.lang.String intern()>
;cnt {"<java.lang.String: java.lang.String intern()>": 1}
;stmts r0 := @this: org.hibernate.boot.internal.InFlightMetadataCollectorImpl;	r1 := @parameter0: java.lang.String;	r3 := @parameter1: org.hibernate.engine.spi.NamedQueryDefinition;	specialinvoke r0.<org.hibernate.boot.internal.InFlightMetadataCollectorImpl: void checkQueryName(java.lang.String)>(r1);	$r2 = r0.<org.hibernate.boot.internal.InFlightMetadataCollectorImpl: java.util.Map namedQueryMap>;	$r4 = virtualinvoke r1.<java.lang.String: java.lang.String intern()>();	interfaceinvoke $r2.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r4, r3);	return
;block_num 1