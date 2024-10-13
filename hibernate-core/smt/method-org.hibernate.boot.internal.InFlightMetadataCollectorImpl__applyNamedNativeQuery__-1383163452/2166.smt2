(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1733 0)
(declare-sort var3665 0)
(declare-sort var503 0)
(declare-sort var2772 0)
(declare-sort var2845 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun checkQueryName/582632931 (var1733 String) void)
(declare-fun namedNativeQueryMap/1317447214 (var1733) var2772)
(declare-fun intern/-1326102057 (String) String)
(declare-fun var2772_put/1464166817 (var2772 var2845 var2845) var2845)
(declare-fun cast-from-String-to-var2845 (String) var2845)
(declare-fun cast-from-var503-to-var2845 (var503) var2845)
(declare-const null-var1733 var1733)
(declare-const null-String String)
(declare-const null-var503 var503)
(declare-const var2829 var1733) ; Statement: r0 := @this: org.hibernate.boot.internal.InFlightMetadataCollectorImpl 
(assert (not (= var2829 null-var1733)))
(declare-const var1716 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1716 null-String)))
(declare-const var1033 var503) ; Statement: r3 := @parameter1: org.hibernate.engine.spi.NamedSQLQueryDefinition 
(assert (not (= var1033 null-var503)))
(assert true)
;(assert (checkQueryName/582632931 var2829 var1716)) ; Statement: specialinvoke r0.<org.hibernate.boot.internal.InFlightMetadataCollectorImpl: void checkQueryName(java.lang.String)>(r1) 

(declare-const var2829!1 var1733)
(declare-const var1716!1 String)
(define-const var1775 var2772 (namedNativeQueryMap/1317447214 var2829!1)) ; Statement: $r2 = r0.<org.hibernate.boot.internal.InFlightMetadataCollectorImpl: java.util.Map namedNativeQueryMap> 
(assert true)
(define-const var3938 String (intern/-1326102057 var1716!1)) ; Statement: $r4 = virtualinvoke r1.<java.lang.String: java.lang.String intern()>() 
;(assert (var2772_put/1464166817 var1775 (cast-from-String-to-var2845 var3938) (cast-from-var503-to-var2845 var1033))) ; Statement: interfaceinvoke $r2.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r4, r3) 

(declare-const var1775!1 var2772)
(declare-const var3938!1 String)
(declare-const var1033!1 var503)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {checkQueryName/582632931=([org.hibernate.boot.internal.InFlightMetadataCollectorImpl, java.lang.String], void), namedNativeQueryMap/1317447214=([org.hibernate.boot.internal.InFlightMetadataCollectorImpl], java.util.Map), intern/-1326102057=([java.lang.String], java.lang.String), var2772_put/1464166817=([java.util.Map, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-String-to-var2845=([java.lang.String], java.lang.Object), cast-from-var503-to-var2845=([org.hibernate.engine.spi.NamedSQLQueryDefinition], java.lang.Object)}
; {var1733=org.hibernate.boot.internal.InFlightMetadataCollectorImpl, var2829=r0, var1716=r1, var3665=null_type, var503=org.hibernate.engine.spi.NamedSQLQueryDefinition, var1033=r3, var2772=java.util.Map, var1775=$r2, var3938=$r4, var2845=java.lang.Object}
; {org.hibernate.boot.internal.InFlightMetadataCollectorImpl=var1733, r0=var2829, r1=var1716, null_type=var3665, org.hibernate.engine.spi.NamedSQLQueryDefinition=var503, r3=var1033, java.util.Map=var2772, $r2=var1775, $r4=var3938, java.lang.Object=var2845}
;seq <java.lang.String: java.lang.String intern()>
;cnt {"<java.lang.String: java.lang.String intern()>": 1}
;stmts r0 := @this: org.hibernate.boot.internal.InFlightMetadataCollectorImpl;	r1 := @parameter0: java.lang.String;	r3 := @parameter1: org.hibernate.engine.spi.NamedSQLQueryDefinition;	specialinvoke r0.<org.hibernate.boot.internal.InFlightMetadataCollectorImpl: void checkQueryName(java.lang.String)>(r1);	$r2 = r0.<org.hibernate.boot.internal.InFlightMetadataCollectorImpl: java.util.Map namedNativeQueryMap>;	$r4 = virtualinvoke r1.<java.lang.String: java.lang.String intern()>();	interfaceinvoke $r2.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r4, r3);	return
;block_num 1