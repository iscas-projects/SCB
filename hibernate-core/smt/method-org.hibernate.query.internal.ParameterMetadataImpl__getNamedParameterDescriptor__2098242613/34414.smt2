(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3958 0)
(declare-sort var1946 0)
(declare-sort var3963 0)
(declare-sort var1807 0)
(declare-sort var1442 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun namedDescriptorMap/-225037837 (var3958) var3963)
(declare-fun var3963_get/1088891777 (var3963 var1807) var1807)
(declare-fun cast-from-String-to-var1807 (String) var1807)
(declare-fun cast-from-var1807-to-var1442 (var1807) var1442)
(declare-const null-var3958 var3958)
(declare-const null-String String)
(declare-const null-var1442 var1442)
(declare-const var2969 var3958) ; Statement: r0 := @this: org.hibernate.query.internal.ParameterMetadataImpl 
(assert (not (= var2969 null-var3958)))
(declare-const var825 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var825 null-String)))
(define-const var2493 var3963 (namedDescriptorMap/-225037837 var2969)) ; Statement: $r2 = r0.<org.hibernate.query.internal.ParameterMetadataImpl: java.util.Map namedDescriptorMap> 
(define-const var1395 var1807 (var3963_get/1088891777 var2493 (cast-from-String-to-var1807 var825))) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1) 
(define-const var2255 var1442 (cast-from-var1807-to-var1442 var1395)) ; Statement: r4 = (org.hibernate.engine.query.spi.NamedParameterDescriptor) $r3 
 ; Statement: if r4 != null goto return r4 
(assert (not (= var2255 null-var1442))) ; Cond: r4 != null 
 ; Statement: return r4 
(check-sat)
(get-model)
(get-unsat-core)
; {namedDescriptorMap/-225037837=([org.hibernate.query.internal.ParameterMetadataImpl], java.util.Map), var3963_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var1807=([java.lang.String], java.lang.Object), cast-from-var1807-to-var1442=([java.lang.Object], org.hibernate.engine.query.spi.NamedParameterDescriptor)}
; {var3958=org.hibernate.query.internal.ParameterMetadataImpl, var2969=r0, var825=r1, var1946=null_type, var3963=java.util.Map, var2493=$r2, var1807=java.lang.Object, var1395=$r3, var1442=org.hibernate.engine.query.spi.NamedParameterDescriptor, var2255=r4}
; {org.hibernate.query.internal.ParameterMetadataImpl=var3958, r0=var2969, r1=var825, null_type=var1946, java.util.Map=var3963, $r2=var2493, java.lang.Object=var1807, $r3=var1395, org.hibernate.engine.query.spi.NamedParameterDescriptor=var1442, r4=var2255}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.query.internal.ParameterMetadataImpl;	r1 := @parameter0: java.lang.String;	$r2 = r0.<org.hibernate.query.internal.ParameterMetadataImpl: java.util.Map namedDescriptorMap>;	$r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1);	r4 = (org.hibernate.engine.query.spi.NamedParameterDescriptor) $r3;	if r4 != null goto return r4;	return r4
;block_num 2