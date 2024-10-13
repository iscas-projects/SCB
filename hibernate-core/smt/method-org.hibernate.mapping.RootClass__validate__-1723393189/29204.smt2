(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1 0)
(declare-sort var3996 0)
(declare-sort var105 0)
(declare-sort var3381 0)
(declare-sort var2596 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun validate/-664311930 (var105 var3996) void)
(declare-fun cast-from-var1-to-var105 (var1) var105)
(declare-fun getIdentifier/123977484 (var1) var3381)
(declare-fun var2596_isValid/-571082178 (var2596 var3996) Bool)
(declare-fun cast-from-var3381-to-var2596 (var3381) var2596)
(declare-fun checkCompositeIdentifier/1913605539 (var1) void)
(declare-const null-var1 var1)
(declare-const null-var3996 var3996)
(declare-const var1902 var1) ; Statement: r0 := @this: org.hibernate.mapping.RootClass 
(assert (not (= var1902 null-var1)))
(declare-const var3154 var3996) ; Statement: r1 := @parameter0: org.hibernate.engine.spi.Mapping 
(assert (not (= var3154 null-var3996)))
(assert true)
;(assert (validate/-664311930 (cast-from-var1-to-var105 var1902) var3154)) ; Statement: specialinvoke r0.<org.hibernate.mapping.PersistentClass: void validate(org.hibernate.engine.spi.Mapping)>(r1) 

(declare-const var1902!1 var1)
(declare-const var3154!1 var3996)
(assert true)
(define-const var1222 var3381 (getIdentifier/123977484 var1902!1)) ; Statement: $r2 = virtualinvoke r0.<org.hibernate.mapping.RootClass: org.hibernate.mapping.KeyValue getIdentifier()>() 
(define-const var895 Bool (var2596_isValid/-571082178 (cast-from-var3381-to-var2596 var1222) var3154!1)) ; Statement: $z0 = interfaceinvoke $r2.<org.hibernate.mapping.KeyValue: boolean isValid(org.hibernate.engine.spi.Mapping)>(r1) 
 ; Statement: if $z0 != 0 goto specialinvoke r0.<org.hibernate.mapping.RootClass: void checkCompositeIdentifier()>() 
(assert (not (= (ite var895 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
;(assert (checkCompositeIdentifier/1913605539 var1902!1)) ; Statement: specialinvoke r0.<org.hibernate.mapping.RootClass: void checkCompositeIdentifier()>() 

(declare-const var1902!2 var1)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {validate/-664311930=([org.hibernate.mapping.PersistentClass, org.hibernate.engine.spi.Mapping], void), cast-from-var1-to-var105=([org.hibernate.mapping.RootClass], org.hibernate.mapping.PersistentClass), getIdentifier/123977484=([org.hibernate.mapping.RootClass], org.hibernate.mapping.KeyValue), var2596_isValid/-571082178=([org.hibernate.mapping.Value, org.hibernate.engine.spi.Mapping], boolean), cast-from-var3381-to-var2596=([org.hibernate.mapping.KeyValue], org.hibernate.mapping.Value), checkCompositeIdentifier/1913605539=([org.hibernate.mapping.RootClass], void)}
; {var1=org.hibernate.mapping.RootClass, var1902=r0, var3996=org.hibernate.engine.spi.Mapping, var3154=r1, var105=org.hibernate.mapping.PersistentClass, var3381=org.hibernate.mapping.KeyValue, var1222=$r2, var2596=org.hibernate.mapping.Value, var895=$z0}
; {org.hibernate.mapping.RootClass=var1, r0=var1902, org.hibernate.engine.spi.Mapping=var3996, r1=var3154, org.hibernate.mapping.PersistentClass=var105, org.hibernate.mapping.KeyValue=var3381, $r2=var1222, org.hibernate.mapping.Value=var2596, $z0=var895}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.mapping.RootClass;	r1 := @parameter0: org.hibernate.engine.spi.Mapping;	specialinvoke r0.<org.hibernate.mapping.PersistentClass: void validate(org.hibernate.engine.spi.Mapping)>(r1);	$r2 = virtualinvoke r0.<org.hibernate.mapping.RootClass: org.hibernate.mapping.KeyValue getIdentifier()>();	$z0 = interfaceinvoke $r2.<org.hibernate.mapping.KeyValue: boolean isValid(org.hibernate.engine.spi.Mapping)>(r1);	if $z0 != 0 goto specialinvoke r0.<org.hibernate.mapping.RootClass: void checkCompositeIdentifier()>();	specialinvoke r0.<org.hibernate.mapping.RootClass: void checkCompositeIdentifier()>();	return
;block_num 2