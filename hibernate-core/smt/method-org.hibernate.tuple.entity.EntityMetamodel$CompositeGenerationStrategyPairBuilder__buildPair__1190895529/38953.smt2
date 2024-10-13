(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var53 0)
(declare-sort var3841 0)
(declare-sort var633 0)
(declare-sort var662 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hadInMemoryGeneration/-1793784655 (var53) Bool)
(declare-fun hadInDatabaseGeneration/-1793784655 (var53) Bool)
(declare-fun var3841-init () var3841)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun mappingProperty/-1793784655 (var53) var633)
(declare-fun getName/-1464992742 (var633) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1539624541 (var3841 String) void)
(declare-fun cast-from-var3841-to-var662 (var3841) var662)
(declare-const null-var53 var53)
(declare-const var577 var53) ; Statement: r0 := @this: org.hibernate.tuple.entity.EntityMetamodel$CompositeGenerationStrategyPairBuilder 
(assert (not (= var577 null-var53)))
(define-const var3463 Bool (hadInMemoryGeneration/-1793784655 var577)) ; Statement: $z0 = r0.<org.hibernate.tuple.entity.EntityMetamodel$CompositeGenerationStrategyPairBuilder: boolean hadInMemoryGeneration> 
 ; Statement: if $z0 == 0 goto $z1 = r0.<org.hibernate.tuple.entity.EntityMetamodel$CompositeGenerationStrategyPairBuilder: boolean hadInMemoryGeneration> 
(assert (not (= (ite var3463 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1496 Bool (hadInDatabaseGeneration/-1793784655 var577)) ; Statement: $z5 = r0.<org.hibernate.tuple.entity.EntityMetamodel$CompositeGenerationStrategyPairBuilder: boolean hadInDatabaseGeneration> 
 ; Statement: if $z5 == 0 goto $z1 = r0.<org.hibernate.tuple.entity.EntityMetamodel$CompositeGenerationStrategyPairBuilder: boolean hadInMemoryGeneration> 
(assert (not (= (ite var1496 1 0) 0))) ; Negate: Cond: $z5 == 0  
(define-const var1460 var3841 var3841-init) ; Statement: $r48 = new org.hibernate.tuple.entity.EntityMetamodel$ValueGenerationStrategyException 
(define-const var3290 String String-init) ; Statement: $r47 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3290)) ; Statement: specialinvoke $r47.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3290!1 String)
(assert (= var3290!1 ""))
(assert true)
(define-const var3681 String (append/672562846 var3290!1 "Composite attribute [")) ; Statement: $r42 = virtualinvoke $r47.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Composite attribute [") 
(declare-const var3290!2 String)
(assert (= var3290!2 (str.++ var3290!1 "Composite attribute [")))
(define-const var2769 var633 (mappingProperty/-1793784655 var577)) ; Statement: $r40 = r0.<org.hibernate.tuple.entity.EntityMetamodel$CompositeGenerationStrategyPairBuilder: org.hibernate.mapping.Property mappingProperty> 
(assert true)
(define-const var656 String (getName/-1464992742 var2769)) ; Statement: $r41 = virtualinvoke $r40.<org.hibernate.mapping.Property: java.lang.String getName()>() 
(assert true)
(define-const var3847 String (append/672562846 var3681 var656)) ; Statement: $r43 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41) 
(declare-const var3681!1 String)
(assert (= var3681!1 (str.++ var3681 var656)))
(assert true)
(define-const var3097 String (append/672562846 var3847 "] contained both in-memory and in-database value generation")) ; Statement: $r44 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] contained both in-memory and in-database value generation") 
(declare-const var3847!1 String)
(assert (= var3847!1 (str.++ var3847 "] contained both in-memory and in-database value generation")))
(assert true)
(define-const var783 String (toString/-2075883882 var3097)) ; Statement: $r45 = virtualinvoke $r44.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1539624541 var1460 var783)) ; Statement: specialinvoke $r48.<org.hibernate.tuple.entity.EntityMetamodel$ValueGenerationStrategyException: void <init>(java.lang.String)>($r45) 

(declare-const var1460!1 var3841)
(declare-const var783!1 String)
(define-const var1219 var662 (cast-from-var3841-to-var662 var1460!1)) ; Statement: $r56 = (java.lang.Throwable) $r48 
 ; Statement: throw $r56 
(check-sat)
(get-model)
(get-unsat-core)
; {hadInMemoryGeneration/-1793784655=([org.hibernate.tuple.entity.EntityMetamodel$CompositeGenerationStrategyPairBuilder], boolean), hadInDatabaseGeneration/-1793784655=([org.hibernate.tuple.entity.EntityMetamodel$CompositeGenerationStrategyPairBuilder], boolean), var3841-init=([], org.hibernate.tuple.entity.EntityMetamodel$ValueGenerationStrategyException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), mappingProperty/-1793784655=([org.hibernate.tuple.entity.EntityMetamodel$CompositeGenerationStrategyPairBuilder], org.hibernate.mapping.Property), getName/-1464992742=([org.hibernate.mapping.Property], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1539624541=([org.hibernate.tuple.entity.EntityMetamodel$ValueGenerationStrategyException, java.lang.String], void), cast-from-var3841-to-var662=([org.hibernate.tuple.entity.EntityMetamodel$ValueGenerationStrategyException], java.lang.Throwable)}
; {var53=org.hibernate.tuple.entity.EntityMetamodel$CompositeGenerationStrategyPairBuilder, var577=r0, var3463=$z0, var1496=$z5, var3841=org.hibernate.tuple.entity.EntityMetamodel$ValueGenerationStrategyException, var1460=$r48, var3290=$r47, var3681=$r42, var633=org.hibernate.mapping.Property, var2769=$r40, var656=$r41, var3847=$r43, var3097=$r44, var783=$r45, var662=java.lang.Throwable, var1219=$r56}
; {org.hibernate.tuple.entity.EntityMetamodel$CompositeGenerationStrategyPairBuilder=var53, r0=var577, $z0=var3463, $z5=var1496, org.hibernate.tuple.entity.EntityMetamodel$ValueGenerationStrategyException=var3841, $r48=var1460, $r47=var3290, $r42=var3681, org.hibernate.mapping.Property=var633, $r40=var2769, $r41=var656, $r43=var3847, $r44=var3097, $r45=var783, java.lang.Throwable=var662, $r56=var1219}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.tuple.entity.EntityMetamodel$CompositeGenerationStrategyPairBuilder;	$z0 = r0.<org.hibernate.tuple.entity.EntityMetamodel$CompositeGenerationStrategyPairBuilder: boolean hadInMemoryGeneration>;	if $z0 == 0 goto $z1 = r0.<org.hibernate.tuple.entity.EntityMetamodel$CompositeGenerationStrategyPairBuilder: boolean hadInMemoryGeneration>;	$z5 = r0.<org.hibernate.tuple.entity.EntityMetamodel$CompositeGenerationStrategyPairBuilder: boolean hadInDatabaseGeneration>;	if $z5 == 0 goto $z1 = r0.<org.hibernate.tuple.entity.EntityMetamodel$CompositeGenerationStrategyPairBuilder: boolean hadInMemoryGeneration>;	$r48 = new org.hibernate.tuple.entity.EntityMetamodel$ValueGenerationStrategyException;	$r47 = new java.lang.StringBuilder;	specialinvoke $r47.<java.lang.StringBuilder: void <init>()>();	$r42 = virtualinvoke $r47.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Composite attribute [");	$r40 = r0.<org.hibernate.tuple.entity.EntityMetamodel$CompositeGenerationStrategyPairBuilder: org.hibernate.mapping.Property mappingProperty>;	$r41 = virtualinvoke $r40.<org.hibernate.mapping.Property: java.lang.String getName()>();	$r43 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41);	$r44 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] contained both in-memory and in-database value generation");	$r45 = virtualinvoke $r44.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r48.<org.hibernate.tuple.entity.EntityMetamodel$ValueGenerationStrategyException: void <init>(java.lang.String)>($r45);	$r56 = (java.lang.Throwable) $r48;	throw $r56
;block_num 3