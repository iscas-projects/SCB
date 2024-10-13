(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3999 0)
(declare-sort var422 0)
(declare-sort var3000 0)
(declare-sort var379 0)
(declare-sort var686 0)
(declare-sort var1811 0)
(declare-sort var2954 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/-813497597 (var379) String)
(declare-fun cast-from-var3000-to-var379 (var3000) var379)
(declare-fun namedSqlQueryDefinitionMap/1655543847 (var3999) var686)
(declare-fun var1811_makeCopy/784129208 (var686) var686)
(declare-fun var686_put/1464166817 (var686 var2954 var2954) var2954)
(declare-fun cast-from-String-to-var2954 (String) var2954)
(declare-fun cast-from-var3000-to-var2954 (var3000) var2954)
(declare-fun cast-from-var2954-to-var379 (var2954) var379)
(declare-fun var1811_toSmallMap/615160741 (var686) var686)
(declare-fun removeNamedQueryDefinition/1262916441 (var3999 String) void)
(declare-const null-var3999 var3999)
(declare-const null-String String)
(declare-const null-var3000 var3000)
(declare-const null-var379 var379)
(declare-const var2238 var3999) ; Statement: r2 := @this: org.hibernate.query.spi.NamedQueryRepository 
(assert (not (= var2238 null-var3999)))
(declare-const var3490 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3490 null-String)))
(declare-const var3589 var3000) ; Statement: r9 := @parameter1: org.hibernate.engine.spi.NamedSQLQueryDefinition 
(assert (not (= var3589 null-var3000)))
(assert true)
(define-const var2910 String (getName/-813497597 (cast-from-var3000-to-var379 var3589))) ; Statement: $r1 = virtualinvoke r9.<org.hibernate.engine.spi.NamedSQLQueryDefinition: java.lang.String getName()>() 
(assert true)
(define-const var3405 Bool (= var3490 var2910)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r1) 
 ; Statement: if $z0 != 0 goto $r3 = r2.<org.hibernate.query.spi.NamedQueryRepository: java.util.Map namedSqlQueryDefinitionMap> 
(assert (not (= (ite var3405 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1911 var686 (namedSqlQueryDefinitionMap/1655543847 var2238)) ; Statement: $r3 = r2.<org.hibernate.query.spi.NamedQueryRepository: java.util.Map namedSqlQueryDefinitionMap> 
(define-const var792 var686 (var1811_makeCopy/784129208 var1911)) ; Statement: $r7 = staticinvoke <org.hibernate.internal.util.collections.CollectionHelper: java.util.Map makeCopy(java.util.Map)>($r3) 
(define-const var3202 var2954 (var686_put/1464166817 var792 (cast-from-String-to-var2954 var3490) (cast-from-var3000-to-var2954 var3589))) ; Statement: $r4 = interfaceinvoke $r7.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>(r0, r9) 
(define-const var1519 var379 (cast-from-var2954-to-var379 var3202)) ; Statement: $r8 = (org.hibernate.engine.spi.NamedQueryDefinition) $r4 
 ; Statement: if $r8 == null goto $r5 = staticinvoke <org.hibernate.internal.util.collections.CollectionHelper: java.util.Map toSmallMap(java.util.Map)>($r7) 
(assert (= var1519 null-var379)) ; Cond: $r8 == null 
(define-const var1188 var686 (var1811_toSmallMap/615160741 var792)) ; Statement: $r5 = staticinvoke <org.hibernate.internal.util.collections.CollectionHelper: java.util.Map toSmallMap(java.util.Map)>($r7) 
(declare-const var2238!1 var3999)
(assert (not (= var2238!1 null-var3999)))
(assert (= (namedSqlQueryDefinitionMap/1655543847 var2238!1) var1188)) ; Statement: r2.<org.hibernate.query.spi.NamedQueryRepository: java.util.Map namedSqlQueryDefinitionMap> = $r5 
(assert true)
;(assert (removeNamedQueryDefinition/1262916441 var2238!1 var3490)) ; Statement: specialinvoke r2.<org.hibernate.query.spi.NamedQueryRepository: void removeNamedQueryDefinition(java.lang.String)>(r0) 

(declare-const var2238!2 var3999)
(declare-const var3490!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/-813497597=([org.hibernate.engine.spi.NamedQueryDefinition], java.lang.String), cast-from-var3000-to-var379=([org.hibernate.engine.spi.NamedSQLQueryDefinition], org.hibernate.engine.spi.NamedQueryDefinition), namedSqlQueryDefinitionMap/1655543847=([org.hibernate.query.spi.NamedQueryRepository], java.util.Map), var1811_makeCopy/784129208=([java.util.Map], java.util.Map), var686_put/1464166817=([java.util.Map, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-String-to-var2954=([java.lang.String], java.lang.Object), cast-from-var3000-to-var2954=([org.hibernate.engine.spi.NamedSQLQueryDefinition], java.lang.Object), cast-from-var2954-to-var379=([java.lang.Object], org.hibernate.engine.spi.NamedQueryDefinition), var1811_toSmallMap/615160741=([java.util.Map], java.util.Map), removeNamedQueryDefinition/1262916441=([org.hibernate.query.spi.NamedQueryRepository, java.lang.String], void)}
; {var3999=org.hibernate.query.spi.NamedQueryRepository, var2238=r2, var3490=r0, var422=null_type, var3000=org.hibernate.engine.spi.NamedSQLQueryDefinition, var3589=r9, var379=org.hibernate.engine.spi.NamedQueryDefinition, var2910=$r1, var3405=$z0, var686=java.util.Map, var1911=$r3, var1811=org.hibernate.internal.util.collections.CollectionHelper, var792=$r7, var2954=java.lang.Object, var3202=$r4, var1519=$r8, var1188=$r5}
; {org.hibernate.query.spi.NamedQueryRepository=var3999, r2=var2238, r0=var3490, null_type=var422, org.hibernate.engine.spi.NamedSQLQueryDefinition=var3000, r9=var3589, org.hibernate.engine.spi.NamedQueryDefinition=var379, $r1=var2910, $z0=var3405, java.util.Map=var686, $r3=var1911, org.hibernate.internal.util.collections.CollectionHelper=var1811, $r7=var792, java.lang.Object=var2954, $r4=var3202, $r8=var1519, $r5=var1188}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r2 := @this: org.hibernate.query.spi.NamedQueryRepository;	r0 := @parameter0: java.lang.String;	r9 := @parameter1: org.hibernate.engine.spi.NamedSQLQueryDefinition;	$r1 = virtualinvoke r9.<org.hibernate.engine.spi.NamedSQLQueryDefinition: java.lang.String getName()>();	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r1);	if $z0 != 0 goto $r3 = r2.<org.hibernate.query.spi.NamedQueryRepository: java.util.Map namedSqlQueryDefinitionMap>;	$r3 = r2.<org.hibernate.query.spi.NamedQueryRepository: java.util.Map namedSqlQueryDefinitionMap>;	$r7 = staticinvoke <org.hibernate.internal.util.collections.CollectionHelper: java.util.Map makeCopy(java.util.Map)>($r3);	$r4 = interfaceinvoke $r7.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>(r0, r9);	$r8 = (org.hibernate.engine.spi.NamedQueryDefinition) $r4;	if $r8 == null goto $r5 = staticinvoke <org.hibernate.internal.util.collections.CollectionHelper: java.util.Map toSmallMap(java.util.Map)>($r7);	$r5 = staticinvoke <org.hibernate.internal.util.collections.CollectionHelper: java.util.Map toSmallMap(java.util.Map)>($r7);	r2.<org.hibernate.query.spi.NamedQueryRepository: java.util.Map namedSqlQueryDefinitionMap> = $r5;	specialinvoke r2.<org.hibernate.query.spi.NamedQueryRepository: void removeNamedQueryDefinition(java.lang.String)>(r0);	return
;block_num 3