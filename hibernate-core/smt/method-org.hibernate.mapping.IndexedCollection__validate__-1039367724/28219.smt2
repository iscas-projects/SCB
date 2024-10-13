(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3933 0)
(declare-sort var3810 0)
(declare-sort var412 0)
(declare-sort var678 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun validate/649804871 (var412 var3810) void)
(declare-fun cast-from-var3933-to-var412 (var3933) var412)
(declare-fun getIndex/317790361 (var3933) var678)
(declare-fun var678_isValid/-571082178 (var678 var3810) Bool)
(declare-const null-var3933 var3933)
(declare-const null-var3810 var3810)
(declare-const var3933-$assertionsDisabled Bool)
(declare-const var2242 var3933) ; Statement: r0 := @this: org.hibernate.mapping.IndexedCollection 
(assert (not (= var2242 null-var3933)))
(declare-const var745 var3810) ; Statement: r1 := @parameter0: org.hibernate.engine.spi.Mapping 
(assert (not (= var745 null-var3810)))
(assert true)
;(assert (validate/649804871 (cast-from-var3933-to-var412 var2242) var745)) ; Statement: specialinvoke r0.<org.hibernate.mapping.Collection: void validate(org.hibernate.engine.spi.Mapping)>(r1) 

(declare-const var2242!1 var3933)
(declare-const var745!1 var3810)
(define-const var1108 Bool var3933-$assertionsDisabled) ; Statement: $z0 = <org.hibernate.mapping.IndexedCollection: boolean $assertionsDisabled> 
 ; Statement: if $z0 != 0 goto $r2 = virtualinvoke r0.<org.hibernate.mapping.IndexedCollection: org.hibernate.mapping.Value getIndex()>() 
(assert (not (= (ite var1108 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
(define-const var60 var678 (getIndex/317790361 var2242!1)) ; Statement: $r2 = virtualinvoke r0.<org.hibernate.mapping.IndexedCollection: org.hibernate.mapping.Value getIndex()>() 
(define-const var2098 Bool (var678_isValid/-571082178 var60 var745!1)) ; Statement: $z1 = interfaceinvoke $r2.<org.hibernate.mapping.Value: boolean isValid(org.hibernate.engine.spi.Mapping)>(r1) 
 ; Statement: if $z1 != 0 goto return 
(assert (not (= (ite var2098 1 0) 0))) ; Cond: $z1 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {validate/649804871=([org.hibernate.mapping.Collection, org.hibernate.engine.spi.Mapping], void), cast-from-var3933-to-var412=([org.hibernate.mapping.IndexedCollection], org.hibernate.mapping.Collection), getIndex/317790361=([org.hibernate.mapping.IndexedCollection], org.hibernate.mapping.Value), var678_isValid/-571082178=([org.hibernate.mapping.Value, org.hibernate.engine.spi.Mapping], boolean)}
; {var3933=org.hibernate.mapping.IndexedCollection, var2242=r0, var3810=org.hibernate.engine.spi.Mapping, var745=r1, var412=org.hibernate.mapping.Collection, var1108=$z0, var678=org.hibernate.mapping.Value, var60=$r2, var2098=$z1}
; {org.hibernate.mapping.IndexedCollection=var3933, r0=var2242, org.hibernate.engine.spi.Mapping=var3810, r1=var745, org.hibernate.mapping.Collection=var412, $z0=var1108, org.hibernate.mapping.Value=var678, $r2=var60, $z1=var2098}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.mapping.IndexedCollection;	r1 := @parameter0: org.hibernate.engine.spi.Mapping;	specialinvoke r0.<org.hibernate.mapping.Collection: void validate(org.hibernate.engine.spi.Mapping)>(r1);	$z0 = <org.hibernate.mapping.IndexedCollection: boolean $assertionsDisabled>;	if $z0 != 0 goto $r2 = virtualinvoke r0.<org.hibernate.mapping.IndexedCollection: org.hibernate.mapping.Value getIndex()>();	$r2 = virtualinvoke r0.<org.hibernate.mapping.IndexedCollection: org.hibernate.mapping.Value getIndex()>();	$z1 = interfaceinvoke $r2.<org.hibernate.mapping.Value: boolean isValid(org.hibernate.engine.spi.Mapping)>(r1);	if $z1 != 0 goto return;	return
;block_num 3