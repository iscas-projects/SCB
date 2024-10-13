(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2616 0)
(declare-sort var3188 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3188-init () var3188)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getPathIdentifier/-501480733 (var2616) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var3188 String) void)
(declare-const null-var2616 var2616)
(declare-const var488 var2616) ; Statement: r2 := @this: org.hibernate.query.criteria.internal.path.AbstractFromImpl 
(assert (not (= var488 null-var2616)))
(define-const var3042 var3188 var3188-init) ; Statement: $r0 = new java.lang.IllegalArgumentException 
(define-const var1720 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1720)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1720!1 String)
(assert (= var1720!1 ""))
(assert true)
(define-const var1844 String (append/672562846 var1720!1 "Collection of values [")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Collection of values [") 
(declare-const var1720!2 String)
(assert (= var1720!2 (str.++ var1720!1 "Collection of values [")))
(assert true)
(define-const var640 String (getPathIdentifier/-501480733 var488)) ; Statement: $r3 = virtualinvoke r2.<org.hibernate.query.criteria.internal.path.AbstractFromImpl: java.lang.String getPathIdentifier()>() 
(assert true)
(define-const var548 String (append/672562846 var1844 var640)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1844!1 String)
(assert (= var1844!1 (str.++ var1844 var640)))
(assert true)
(define-const var2899 String (append/672562846 var548 "] cannot be source of a join")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] cannot be source of a join") 
(declare-const var548!1 String)
(assert (= var548!1 (str.++ var548 "] cannot be source of a join")))
(assert true)
(define-const var1798 String (toString/-2075883882 var2899)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var3042 var1798)) ; Statement: specialinvoke $r0.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r7) 

(declare-const var3042!1 var3188)
(declare-const var1798!1 String)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3188-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getPathIdentifier/-501480733=([org.hibernate.query.criteria.internal.path.AbstractFromImpl], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2616=org.hibernate.query.criteria.internal.path.AbstractFromImpl, var488=r2, var3188=java.lang.IllegalArgumentException, var3042=$r0, var1720=$r1, var1844=$r4, var640=$r3, var548=$r5, var2899=$r6, var1798=$r7}
; {org.hibernate.query.criteria.internal.path.AbstractFromImpl=var2616, r2=var488, java.lang.IllegalArgumentException=var3188, $r0=var3042, $r1=var1720, $r4=var1844, $r3=var640, $r5=var548, $r6=var2899, $r7=var1798}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.hibernate.query.criteria.internal.path.AbstractFromImpl;	$r0 = new java.lang.IllegalArgumentException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Collection of values [");	$r3 = virtualinvoke r2.<org.hibernate.query.criteria.internal.path.AbstractFromImpl: java.lang.String getPathIdentifier()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] cannot be source of a join");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r7);	return $r0
;block_num 1