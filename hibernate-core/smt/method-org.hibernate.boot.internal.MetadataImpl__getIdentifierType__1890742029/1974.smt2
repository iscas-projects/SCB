(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2324 0)
(declare-sort var2105 0)
(declare-sort var2927 0)
(declare-sort var302 0)
(declare-sort var1730 0)
(declare-sort var1741 0)
(declare-sort var3090 0)
(declare-sort var739 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun entityBindingMap/1077866378 (var2324) var2927)
(declare-fun var2927_get/1088891777 (var2927 var302) var302)
(declare-fun cast-from-String-to-var302 (String) var302)
(declare-fun cast-from-var302-to-var1730 (var302) var1730)
(declare-fun getIdentifier/1682162049 (var1730) var1741)
(declare-fun var739_getType/951709402 (var739) var3090)
(declare-fun cast-from-var1741-to-var739 (var1741) var739)
(declare-const null-var2324 var2324)
(declare-const null-String String)
(declare-const null-var1730 var1730)
(declare-const var3222 var2324) ; Statement: r0 := @this: org.hibernate.boot.internal.MetadataImpl 
(assert (not (= var3222 null-var2324)))
(declare-const var2377 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2377 null-String)))
(define-const var3901 var2927 (entityBindingMap/1077866378 var3222)) ; Statement: $r2 = r0.<org.hibernate.boot.internal.MetadataImpl: java.util.Map entityBindingMap> 
(define-const var3622 var302 (var2927_get/1088891777 var3901 (cast-from-String-to-var302 var2377))) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1) 
(define-const var2351 var1730 (cast-from-var302-to-var1730 var3622)) ; Statement: r4 = (org.hibernate.mapping.PersistentClass) $r3 
 ; Statement: if r4 != null goto $r5 = virtualinvoke r4.<org.hibernate.mapping.PersistentClass: org.hibernate.mapping.KeyValue getIdentifier()>() 
(assert (not (= var2351 null-var1730))) ; Cond: r4 != null 
(assert true)
(define-const var149 var1741 (getIdentifier/1682162049 var2351)) ; Statement: $r5 = virtualinvoke r4.<org.hibernate.mapping.PersistentClass: org.hibernate.mapping.KeyValue getIdentifier()>() 
(define-const var3030 var3090 (var739_getType/951709402 (cast-from-var1741-to-var739 var149))) ; Statement: $r6 = interfaceinvoke $r5.<org.hibernate.mapping.KeyValue: org.hibernate.type.Type getType()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {entityBindingMap/1077866378=([org.hibernate.boot.internal.MetadataImpl], java.util.Map), var2927_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var302=([java.lang.String], java.lang.Object), cast-from-var302-to-var1730=([java.lang.Object], org.hibernate.mapping.PersistentClass), getIdentifier/1682162049=([org.hibernate.mapping.PersistentClass], org.hibernate.mapping.KeyValue), var739_getType/951709402=([org.hibernate.mapping.Value], org.hibernate.type.Type), cast-from-var1741-to-var739=([org.hibernate.mapping.KeyValue], org.hibernate.mapping.Value)}
; {var2324=org.hibernate.boot.internal.MetadataImpl, var3222=r0, var2377=r1, var2105=null_type, var2927=java.util.Map, var3901=$r2, var302=java.lang.Object, var3622=$r3, var1730=org.hibernate.mapping.PersistentClass, var2351=r4, var1741=org.hibernate.mapping.KeyValue, var149=$r5, var3090=org.hibernate.type.Type, var739=org.hibernate.mapping.Value, var3030=$r6}
; {org.hibernate.boot.internal.MetadataImpl=var2324, r0=var3222, r1=var2377, null_type=var2105, java.util.Map=var2927, $r2=var3901, java.lang.Object=var302, $r3=var3622, org.hibernate.mapping.PersistentClass=var1730, r4=var2351, org.hibernate.mapping.KeyValue=var1741, $r5=var149, org.hibernate.type.Type=var3090, org.hibernate.mapping.Value=var739, $r6=var3030}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.boot.internal.MetadataImpl;	r1 := @parameter0: java.lang.String;	$r2 = r0.<org.hibernate.boot.internal.MetadataImpl: java.util.Map entityBindingMap>;	$r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1);	r4 = (org.hibernate.mapping.PersistentClass) $r3;	if r4 != null goto $r5 = virtualinvoke r4.<org.hibernate.mapping.PersistentClass: org.hibernate.mapping.KeyValue getIdentifier()>();	$r5 = virtualinvoke r4.<org.hibernate.mapping.PersistentClass: org.hibernate.mapping.KeyValue getIdentifier()>();	$r6 = interfaceinvoke $r5.<org.hibernate.mapping.KeyValue: org.hibernate.type.Type getType()>();	return $r6
;block_num 2