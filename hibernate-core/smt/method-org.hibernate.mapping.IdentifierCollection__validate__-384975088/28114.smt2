(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var19 0)
(declare-sort var151 0)
(declare-sort var2485 0)
(declare-sort var1940 0)
(declare-sort var2952 0)
(declare-sort var3875 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun validate/649804871 (var2485 var151) void)
(declare-fun cast-from-var19-to-var2485 (var19) var2485)
(declare-fun getElement/1419751324 (var2485) var1940)
(declare-fun var2952-init () var2952)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getRole/-486327642 (var2485) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/582965326 (var2952 var3875) void)
(declare-fun cast-from-String-to-var3875 (String) var3875)
(declare-const null-var19 var19)
(declare-const null-var151 var151)
(declare-const var19-$assertionsDisabled Bool)
(declare-const null-var1940 var1940)
(declare-const var645 var19) ; Statement: r0 := @this: org.hibernate.mapping.IdentifierCollection 
(assert (not (= var645 null-var19)))
(declare-const var955 var151) ; Statement: r1 := @parameter0: org.hibernate.engine.spi.Mapping 
(assert (not (= var955 null-var151)))
(assert true)
;(assert (validate/649804871 (cast-from-var19-to-var2485 var645) var955)) ; Statement: specialinvoke r0.<org.hibernate.mapping.Collection: void validate(org.hibernate.engine.spi.Mapping)>(r1) 

(declare-const var645!1 var19)
(declare-const var955!1 var151)
(define-const var2734 Bool var19-$assertionsDisabled) ; Statement: $z0 = <org.hibernate.mapping.IdentifierCollection: boolean $assertionsDisabled> 
 ; Statement: if $z0 != 0 goto $r2 = virtualinvoke r0.<org.hibernate.mapping.IdentifierCollection: org.hibernate.mapping.KeyValue getIdentifier()>() 
(assert (not (not (= (ite var2734 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(assert true)
(define-const var803 var1940 (getElement/1419751324 (cast-from-var19-to-var2485 var645!1))) ; Statement: $r14 = virtualinvoke r0.<org.hibernate.mapping.IdentifierCollection: org.hibernate.mapping.Value getElement()>() 
 ; Statement: if $r14 != null goto $r2 = virtualinvoke r0.<org.hibernate.mapping.IdentifierCollection: org.hibernate.mapping.KeyValue getIdentifier()>() 
(assert (not (not (= var803 null-var1940)))) ; Negate: Cond: $r14 != null  
(define-const var785 var2952 var2952-init) ; Statement: $r22 = new java.lang.AssertionError 
(define-const var2556 String String-init) ; Statement: $r21 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2556)) ; Statement: specialinvoke $r21.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2556!1 String)
(assert (= var2556!1 ""))
(assert true)
(define-const var257 String (append/672562846 var2556!1 "IdentifierCollection identifier not bound : ")) ; Statement: $r18 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("IdentifierCollection identifier not bound : ") 
(declare-const var2556!2 String)
(assert (= var2556!2 (str.++ var2556!1 "IdentifierCollection identifier not bound : ")))
(assert true)
(define-const var710 String (getRole/-486327642 (cast-from-var19-to-var2485 var645!1))) ; Statement: $r17 = virtualinvoke r0.<org.hibernate.mapping.IdentifierCollection: java.lang.String getRole()>() 
(assert true)
(define-const var3561 String (append/672562846 var257 var710)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17) 
(declare-const var257!1 String)
(assert (= var257!1 (str.++ var257 var710)))
(assert true)
(define-const var1032 String (toString/-2075883882 var3561)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/582965326 var785 (cast-from-String-to-var3875 var1032))) ; Statement: specialinvoke $r22.<java.lang.AssertionError: void <init>(java.lang.Object)>($r20) 

(declare-const var785!1 var2952)
(declare-const var1032!1 String)
 ; Statement: throw $r22 
(check-sat)
(get-model)
(get-unsat-core)
; {validate/649804871=([org.hibernate.mapping.Collection, org.hibernate.engine.spi.Mapping], void), cast-from-var19-to-var2485=([org.hibernate.mapping.IdentifierCollection], org.hibernate.mapping.Collection), getElement/1419751324=([org.hibernate.mapping.Collection], org.hibernate.mapping.Value), var2952-init=([], java.lang.AssertionError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getRole/-486327642=([org.hibernate.mapping.Collection], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/582965326=([java.lang.AssertionError, java.lang.Object], void), cast-from-String-to-var3875=([java.lang.String], java.lang.Object)}
; {var19=org.hibernate.mapping.IdentifierCollection, var645=r0, var151=org.hibernate.engine.spi.Mapping, var955=r1, var2485=org.hibernate.mapping.Collection, var2734=$z0, var1940=org.hibernate.mapping.Value, var803=$r14, var2952=java.lang.AssertionError, var785=$r22, var2556=$r21, var257=$r18, var710=$r17, var3561=$r19, var1032=$r20, var3875=java.lang.Object}
; {org.hibernate.mapping.IdentifierCollection=var19, r0=var645, org.hibernate.engine.spi.Mapping=var151, r1=var955, org.hibernate.mapping.Collection=var2485, $z0=var2734, org.hibernate.mapping.Value=var1940, $r14=var803, java.lang.AssertionError=var2952, $r22=var785, $r21=var2556, $r18=var257, $r17=var710, $r19=var3561, $r20=var1032, java.lang.Object=var3875}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.mapping.IdentifierCollection;	r1 := @parameter0: org.hibernate.engine.spi.Mapping;	specialinvoke r0.<org.hibernate.mapping.Collection: void validate(org.hibernate.engine.spi.Mapping)>(r1);	$z0 = <org.hibernate.mapping.IdentifierCollection: boolean $assertionsDisabled>;	if $z0 != 0 goto $r2 = virtualinvoke r0.<org.hibernate.mapping.IdentifierCollection: org.hibernate.mapping.KeyValue getIdentifier()>();	$r14 = virtualinvoke r0.<org.hibernate.mapping.IdentifierCollection: org.hibernate.mapping.Value getElement()>();	if $r14 != null goto $r2 = virtualinvoke r0.<org.hibernate.mapping.IdentifierCollection: org.hibernate.mapping.KeyValue getIdentifier()>();	$r22 = new java.lang.AssertionError;	$r21 = new java.lang.StringBuilder;	specialinvoke $r21.<java.lang.StringBuilder: void <init>()>();	$r18 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("IdentifierCollection identifier not bound : ");	$r17 = virtualinvoke r0.<org.hibernate.mapping.IdentifierCollection: java.lang.String getRole()>();	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r22.<java.lang.AssertionError: void <init>(java.lang.Object)>($r20);	throw $r22
;block_num 3