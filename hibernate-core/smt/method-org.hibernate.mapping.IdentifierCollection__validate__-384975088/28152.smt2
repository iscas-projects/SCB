(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var230 0)
(declare-sort var1241 0)
(declare-sort var1373 0)
(declare-sort var28 0)
(declare-sort var2003 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun validate/649804871 (var1373 var1241) void)
(declare-fun cast-from-var230-to-var1373 (var230) var1373)
(declare-fun getIdentifier/1829720247 (var230) var28)
(declare-fun var2003_isValid/-571082178 (var2003 var1241) Bool)
(declare-fun cast-from-var28-to-var2003 (var28) var2003)
(declare-const null-var230 var230)
(declare-const null-var1241 var1241)
(declare-const var230-$assertionsDisabled Bool)
(declare-const var3541 var230) ; Statement: r0 := @this: org.hibernate.mapping.IdentifierCollection 
(assert (not (= var3541 null-var230)))
(declare-const var2963 var1241) ; Statement: r1 := @parameter0: org.hibernate.engine.spi.Mapping 
(assert (not (= var2963 null-var1241)))
(assert true)
;(assert (validate/649804871 (cast-from-var230-to-var1373 var3541) var2963)) ; Statement: specialinvoke r0.<org.hibernate.mapping.Collection: void validate(org.hibernate.engine.spi.Mapping)>(r1) 

(declare-const var3541!1 var230)
(declare-const var2963!1 var1241)
(define-const var2810 Bool var230-$assertionsDisabled) ; Statement: $z0 = <org.hibernate.mapping.IdentifierCollection: boolean $assertionsDisabled> 
 ; Statement: if $z0 != 0 goto $r2 = virtualinvoke r0.<org.hibernate.mapping.IdentifierCollection: org.hibernate.mapping.KeyValue getIdentifier()>() 
(assert (not (= (ite var2810 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
(define-const var1285 var28 (getIdentifier/1829720247 var3541!1)) ; Statement: $r2 = virtualinvoke r0.<org.hibernate.mapping.IdentifierCollection: org.hibernate.mapping.KeyValue getIdentifier()>() 
(define-const var860 Bool (var2003_isValid/-571082178 (cast-from-var28-to-var2003 var1285) var2963!1)) ; Statement: $z1 = interfaceinvoke $r2.<org.hibernate.mapping.KeyValue: boolean isValid(org.hibernate.engine.spi.Mapping)>(r1) 
 ; Statement: if $z1 != 0 goto return 
(assert (not (= (ite var860 1 0) 0))) ; Cond: $z1 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {validate/649804871=([org.hibernate.mapping.Collection, org.hibernate.engine.spi.Mapping], void), cast-from-var230-to-var1373=([org.hibernate.mapping.IdentifierCollection], org.hibernate.mapping.Collection), getIdentifier/1829720247=([org.hibernate.mapping.IdentifierCollection], org.hibernate.mapping.KeyValue), var2003_isValid/-571082178=([org.hibernate.mapping.Value, org.hibernate.engine.spi.Mapping], boolean), cast-from-var28-to-var2003=([org.hibernate.mapping.KeyValue], org.hibernate.mapping.Value)}
; {var230=org.hibernate.mapping.IdentifierCollection, var3541=r0, var1241=org.hibernate.engine.spi.Mapping, var2963=r1, var1373=org.hibernate.mapping.Collection, var2810=$z0, var28=org.hibernate.mapping.KeyValue, var1285=$r2, var2003=org.hibernate.mapping.Value, var860=$z1}
; {org.hibernate.mapping.IdentifierCollection=var230, r0=var3541, org.hibernate.engine.spi.Mapping=var1241, r1=var2963, org.hibernate.mapping.Collection=var1373, $z0=var2810, org.hibernate.mapping.KeyValue=var28, $r2=var1285, org.hibernate.mapping.Value=var2003, $z1=var860}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.mapping.IdentifierCollection;	r1 := @parameter0: org.hibernate.engine.spi.Mapping;	specialinvoke r0.<org.hibernate.mapping.Collection: void validate(org.hibernate.engine.spi.Mapping)>(r1);	$z0 = <org.hibernate.mapping.IdentifierCollection: boolean $assertionsDisabled>;	if $z0 != 0 goto $r2 = virtualinvoke r0.<org.hibernate.mapping.IdentifierCollection: org.hibernate.mapping.KeyValue getIdentifier()>();	$r2 = virtualinvoke r0.<org.hibernate.mapping.IdentifierCollection: org.hibernate.mapping.KeyValue getIdentifier()>();	$z1 = interfaceinvoke $r2.<org.hibernate.mapping.KeyValue: boolean isValid(org.hibernate.engine.spi.Mapping)>(r1);	if $z1 != 0 goto return;	return
;block_num 3