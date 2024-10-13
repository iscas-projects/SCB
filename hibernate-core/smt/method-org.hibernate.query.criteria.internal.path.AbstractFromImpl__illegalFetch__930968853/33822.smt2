(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1774 0)
(declare-sort var158 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var158-init () var158)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getPathIdentifier/-501480733 (var1774) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var158 String) void)
(declare-const null-var1774 var1774)
(declare-const var3220 var1774) ; Statement: r2 := @this: org.hibernate.query.criteria.internal.path.AbstractFromImpl 
(assert (not (= var3220 null-var1774)))
(define-const var3938 var158 var158-init) ; Statement: $r0 = new java.lang.IllegalArgumentException 
(define-const var401 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var401)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var401!1 String)
(assert (= var401!1 ""))
(assert true)
(define-const var3725 String (append/672562846 var401!1 "Collection of values [")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Collection of values [") 
(declare-const var401!2 String)
(assert (= var401!2 (str.++ var401!1 "Collection of values [")))
(assert true)
(define-const var961 String (getPathIdentifier/-501480733 var3220)) ; Statement: $r3 = virtualinvoke r2.<org.hibernate.query.criteria.internal.path.AbstractFromImpl: java.lang.String getPathIdentifier()>() 
(assert true)
(define-const var2579 String (append/672562846 var3725 var961)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3725!1 String)
(assert (= var3725!1 (str.++ var3725 var961)))
(assert true)
(define-const var43 String (append/672562846 var2579 "] cannot be source of a fetch")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] cannot be source of a fetch") 
(declare-const var2579!1 String)
(assert (= var2579!1 (str.++ var2579 "] cannot be source of a fetch")))
(assert true)
(define-const var323 String (toString/-2075883882 var43)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var3938 var323)) ; Statement: specialinvoke $r0.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r7) 

(declare-const var3938!1 var158)
(declare-const var323!1 String)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var158-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getPathIdentifier/-501480733=([org.hibernate.query.criteria.internal.path.AbstractFromImpl], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1774=org.hibernate.query.criteria.internal.path.AbstractFromImpl, var3220=r2, var158=java.lang.IllegalArgumentException, var3938=$r0, var401=$r1, var3725=$r4, var961=$r3, var2579=$r5, var43=$r6, var323=$r7}
; {org.hibernate.query.criteria.internal.path.AbstractFromImpl=var1774, r2=var3220, java.lang.IllegalArgumentException=var158, $r0=var3938, $r1=var401, $r4=var3725, $r3=var961, $r5=var2579, $r6=var43, $r7=var323}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.hibernate.query.criteria.internal.path.AbstractFromImpl;	$r0 = new java.lang.IllegalArgumentException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Collection of values [");	$r3 = virtualinvoke r2.<org.hibernate.query.criteria.internal.path.AbstractFromImpl: java.lang.String getPathIdentifier()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] cannot be source of a fetch");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r7);	return $r0
;block_num 1