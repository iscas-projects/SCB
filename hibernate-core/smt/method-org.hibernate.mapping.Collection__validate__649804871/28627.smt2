(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3909 0)
(declare-sort var2821 0)
(declare-sort var1216 0)
(declare-sort var518 0)
(declare-sort var2056 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getKey/919528338 (var3909) var1216)
(declare-fun var518-init () var518)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getRole/-486327642 (var3909) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/582965326 (var518 var2056) void)
(declare-fun cast-from-String-to-var2056 (String) var2056)
(declare-const null-var3909 var3909)
(declare-const null-var2821 var2821)
(declare-const var3909-$assertionsDisabled Bool)
(declare-const null-var1216 var1216)
(declare-const var3931 var3909) ; Statement: r0 := @this: org.hibernate.mapping.Collection 
(assert (not (= var3931 null-var3909)))
(declare-const var1855 var2821) ; Statement: r1 := @parameter0: org.hibernate.engine.spi.Mapping 
(assert (not (= var1855 null-var2821)))
(define-const var91 Bool var3909-$assertionsDisabled) ; Statement: $z0 = <org.hibernate.mapping.Collection: boolean $assertionsDisabled> 
 ; Statement: if $z0 != 0 goto $z1 = <org.hibernate.mapping.Collection: boolean $assertionsDisabled> 
(assert (not (not (= (ite var91 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(assert true)
(define-const var224 var1216 (getKey/919528338 var3931)) ; Statement: $r33 = virtualinvoke r0.<org.hibernate.mapping.Collection: org.hibernate.mapping.KeyValue getKey()>() 
 ; Statement: if $r33 != null goto $z1 = <org.hibernate.mapping.Collection: boolean $assertionsDisabled> 
(assert (not (not (= var224 null-var1216)))) ; Negate: Cond: $r33 != null  
(define-const var3928 var518 var518-init) ; Statement: $r41 = new java.lang.AssertionError 
(define-const var1274 String String-init) ; Statement: $r40 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1274)) ; Statement: specialinvoke $r40.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1274!1 String)
(assert (= var1274!1 ""))
(assert true)
(define-const var3907 String (append/672562846 var1274!1 "Collection key not bound : ")) ; Statement: $r37 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Collection key not bound : ") 
(declare-const var1274!2 String)
(assert (= var1274!2 (str.++ var1274!1 "Collection key not bound : ")))
(assert true)
(define-const var2852 String (getRole/-486327642 var3931)) ; Statement: $r36 = virtualinvoke r0.<org.hibernate.mapping.Collection: java.lang.String getRole()>() 
(assert true)
(define-const var1314 String (append/672562846 var3907 var2852)) ; Statement: $r38 = virtualinvoke $r37.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r36) 
(declare-const var3907!1 String)
(assert (= var3907!1 (str.++ var3907 var2852)))
(assert true)
(define-const var346 String (toString/-2075883882 var1314)) ; Statement: $r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/582965326 var3928 (cast-from-String-to-var2056 var346))) ; Statement: specialinvoke $r41.<java.lang.AssertionError: void <init>(java.lang.Object)>($r39) 

(declare-const var3928!1 var518)
(declare-const var346!1 String)
 ; Statement: throw $r41 
(check-sat)
(get-model)
(get-unsat-core)
; {getKey/919528338=([org.hibernate.mapping.Collection], org.hibernate.mapping.KeyValue), var518-init=([], java.lang.AssertionError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getRole/-486327642=([org.hibernate.mapping.Collection], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/582965326=([java.lang.AssertionError, java.lang.Object], void), cast-from-String-to-var2056=([java.lang.String], java.lang.Object)}
; {var3909=org.hibernate.mapping.Collection, var3931=r0, var2821=org.hibernate.engine.spi.Mapping, var1855=r1, var91=$z0, var1216=org.hibernate.mapping.KeyValue, var224=$r33, var518=java.lang.AssertionError, var3928=$r41, var1274=$r40, var3907=$r37, var2852=$r36, var1314=$r38, var346=$r39, var2056=java.lang.Object}
; {org.hibernate.mapping.Collection=var3909, r0=var3931, org.hibernate.engine.spi.Mapping=var2821, r1=var1855, $z0=var91, org.hibernate.mapping.KeyValue=var1216, $r33=var224, java.lang.AssertionError=var518, $r41=var3928, $r40=var1274, $r37=var3907, $r36=var2852, $r38=var1314, $r39=var346, java.lang.Object=var2056}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.mapping.Collection;	r1 := @parameter0: org.hibernate.engine.spi.Mapping;	$z0 = <org.hibernate.mapping.Collection: boolean $assertionsDisabled>;	if $z0 != 0 goto $z1 = <org.hibernate.mapping.Collection: boolean $assertionsDisabled>;	$r33 = virtualinvoke r0.<org.hibernate.mapping.Collection: org.hibernate.mapping.KeyValue getKey()>();	if $r33 != null goto $z1 = <org.hibernate.mapping.Collection: boolean $assertionsDisabled>;	$r41 = new java.lang.AssertionError;	$r40 = new java.lang.StringBuilder;	specialinvoke $r40.<java.lang.StringBuilder: void <init>()>();	$r37 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Collection key not bound : ");	$r36 = virtualinvoke r0.<org.hibernate.mapping.Collection: java.lang.String getRole()>();	$r38 = virtualinvoke $r37.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r36);	$r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r41.<java.lang.AssertionError: void <init>(java.lang.Object)>($r39);	throw $r41
;block_num 3