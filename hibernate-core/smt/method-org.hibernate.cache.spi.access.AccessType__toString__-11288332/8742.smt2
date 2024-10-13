(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1221 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun externalName/1406034260 (var1221) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1221 var1221)
(declare-const var1313 var1221) ; Statement: r1 := @this: org.hibernate.cache.spi.access.AccessType 
(assert (not (= var1313 null-var1221)))
(define-const var399 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var399)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var399!1 String)
(assert (= var399!1 ""))
(assert true)
(define-const var3768 String (append/672562846 var399!1 "AccessType[")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("AccessType[") 
(declare-const var399!2 String)
(assert (= var399!2 (str.++ var399!1 "AccessType[")))
(define-const var454 String (externalName/1406034260 var1313)) ; Statement: $r2 = r1.<org.hibernate.cache.spi.access.AccessType: java.lang.String externalName> 
(assert true)
(define-const var338 String (append/672562846 var3768 var454)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3768!1 String)
(assert (= var3768!1 (str.++ var3768 var454)))
(assert true)
(define-const var2090 String (append/672562846 var338 "]")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var338!1 String)
(assert (= var338!1 (str.++ var338 "]")))
(assert true)
(define-const var1389 String (toString/-2075883882 var2090)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), externalName/1406034260=([org.hibernate.cache.spi.access.AccessType], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1221=org.hibernate.cache.spi.access.AccessType, var1313=r1, var399=$r0, var3768=$r3, var454=$r2, var338=$r4, var2090=$r5, var1389=$r6}
; {org.hibernate.cache.spi.access.AccessType=var1221, r1=var1313, $r0=var399, $r3=var3768, $r2=var454, $r4=var338, $r5=var2090, $r6=var1389}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.cache.spi.access.AccessType;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("AccessType[");	$r2 = r1.<org.hibernate.cache.spi.access.AccessType: java.lang.String externalName>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1