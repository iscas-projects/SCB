(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1267 0)
(declare-sort var1093 0)
(declare-sort var3169 0)
(declare-sort var2221 0)
(declare-sort var3202 0)
(declare-sort var1363 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun validate/649804871 (var3169 var1093) void)
(declare-fun cast-from-var1267-to-var3169 (var1267) var3169)
(declare-fun getElement/1419751324 (var3169) var2221)
(declare-fun var3202-init () var3202)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getRole/-486327642 (var3169) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/582965326 (var3202 var1363) void)
(declare-fun cast-from-String-to-var1363 (String) var1363)
(declare-const null-var1267 var1267)
(declare-const null-var1093 var1093)
(declare-const var1267-$assertionsDisabled Bool)
(declare-const null-var2221 var2221)
(declare-const var1196 var1267) ; Statement: r0 := @this: org.hibernate.mapping.IndexedCollection 
(assert (not (= var1196 null-var1267)))
(declare-const var2669 var1093) ; Statement: r1 := @parameter0: org.hibernate.engine.spi.Mapping 
(assert (not (= var2669 null-var1093)))
(assert true)
;(assert (validate/649804871 (cast-from-var1267-to-var3169 var1196) var2669)) ; Statement: specialinvoke r0.<org.hibernate.mapping.Collection: void validate(org.hibernate.engine.spi.Mapping)>(r1) 

(declare-const var1196!1 var1267)
(declare-const var2669!1 var1093)
(define-const var3451 Bool var1267-$assertionsDisabled) ; Statement: $z0 = <org.hibernate.mapping.IndexedCollection: boolean $assertionsDisabled> 
 ; Statement: if $z0 != 0 goto $r2 = virtualinvoke r0.<org.hibernate.mapping.IndexedCollection: org.hibernate.mapping.Value getIndex()>() 
(assert (not (not (= (ite var3451 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(assert true)
(define-const var76 var2221 (getElement/1419751324 (cast-from-var1267-to-var3169 var1196!1))) ; Statement: $r14 = virtualinvoke r0.<org.hibernate.mapping.IndexedCollection: org.hibernate.mapping.Value getElement()>() 
 ; Statement: if $r14 != null goto $r2 = virtualinvoke r0.<org.hibernate.mapping.IndexedCollection: org.hibernate.mapping.Value getIndex()>() 
(assert (not (not (= var76 null-var2221)))) ; Negate: Cond: $r14 != null  
(define-const var1905 var3202 var3202-init) ; Statement: $r22 = new java.lang.AssertionError 
(define-const var3748 String String-init) ; Statement: $r21 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3748)) ; Statement: specialinvoke $r21.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3748!1 String)
(assert (= var3748!1 ""))
(assert true)
(define-const var3114 String (append/672562846 var3748!1 "IndexedCollection index not bound : ")) ; Statement: $r18 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("IndexedCollection index not bound : ") 
(declare-const var3748!2 String)
(assert (= var3748!2 (str.++ var3748!1 "IndexedCollection index not bound : ")))
(assert true)
(define-const var1399 String (getRole/-486327642 (cast-from-var1267-to-var3169 var1196!1))) ; Statement: $r17 = virtualinvoke r0.<org.hibernate.mapping.IndexedCollection: java.lang.String getRole()>() 
(assert true)
(define-const var3805 String (append/672562846 var3114 var1399)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17) 
(declare-const var3114!1 String)
(assert (= var3114!1 (str.++ var3114 var1399)))
(assert true)
(define-const var1599 String (toString/-2075883882 var3805)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/582965326 var1905 (cast-from-String-to-var1363 var1599))) ; Statement: specialinvoke $r22.<java.lang.AssertionError: void <init>(java.lang.Object)>($r20) 

(declare-const var1905!1 var3202)
(declare-const var1599!1 String)
 ; Statement: throw $r22 
(check-sat)
(get-model)
(get-unsat-core)
; {validate/649804871=([org.hibernate.mapping.Collection, org.hibernate.engine.spi.Mapping], void), cast-from-var1267-to-var3169=([org.hibernate.mapping.IndexedCollection], org.hibernate.mapping.Collection), getElement/1419751324=([org.hibernate.mapping.Collection], org.hibernate.mapping.Value), var3202-init=([], java.lang.AssertionError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getRole/-486327642=([org.hibernate.mapping.Collection], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/582965326=([java.lang.AssertionError, java.lang.Object], void), cast-from-String-to-var1363=([java.lang.String], java.lang.Object)}
; {var1267=org.hibernate.mapping.IndexedCollection, var1196=r0, var1093=org.hibernate.engine.spi.Mapping, var2669=r1, var3169=org.hibernate.mapping.Collection, var3451=$z0, var2221=org.hibernate.mapping.Value, var76=$r14, var3202=java.lang.AssertionError, var1905=$r22, var3748=$r21, var3114=$r18, var1399=$r17, var3805=$r19, var1599=$r20, var1363=java.lang.Object}
; {org.hibernate.mapping.IndexedCollection=var1267, r0=var1196, org.hibernate.engine.spi.Mapping=var1093, r1=var2669, org.hibernate.mapping.Collection=var3169, $z0=var3451, org.hibernate.mapping.Value=var2221, $r14=var76, java.lang.AssertionError=var3202, $r22=var1905, $r21=var3748, $r18=var3114, $r17=var1399, $r19=var3805, $r20=var1599, java.lang.Object=var1363}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.mapping.IndexedCollection;	r1 := @parameter0: org.hibernate.engine.spi.Mapping;	specialinvoke r0.<org.hibernate.mapping.Collection: void validate(org.hibernate.engine.spi.Mapping)>(r1);	$z0 = <org.hibernate.mapping.IndexedCollection: boolean $assertionsDisabled>;	if $z0 != 0 goto $r2 = virtualinvoke r0.<org.hibernate.mapping.IndexedCollection: org.hibernate.mapping.Value getIndex()>();	$r14 = virtualinvoke r0.<org.hibernate.mapping.IndexedCollection: org.hibernate.mapping.Value getElement()>();	if $r14 != null goto $r2 = virtualinvoke r0.<org.hibernate.mapping.IndexedCollection: org.hibernate.mapping.Value getIndex()>();	$r22 = new java.lang.AssertionError;	$r21 = new java.lang.StringBuilder;	specialinvoke $r21.<java.lang.StringBuilder: void <init>()>();	$r18 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("IndexedCollection index not bound : ");	$r17 = virtualinvoke r0.<org.hibernate.mapping.IndexedCollection: java.lang.String getRole()>();	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r22.<java.lang.AssertionError: void <init>(java.lang.Object)>($r20);	throw $r22
;block_num 3