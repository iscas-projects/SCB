(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1012 0)
(declare-sort var1479 0)
(declare-sort var2142 0)
(declare-sort var3049 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1479-init () var1479)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getCollectionName/-1297012585 (var2142) String)
(declare-fun cast-from-var1012-to-var2142 (var1012) var2142)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1391884909 (var1479 String) void)
(declare-fun cast-from-var1479-to-var3049 (var1479) var3049)
(declare-const null-var1012 var1012)
(declare-const var2916 var1012) ; Statement: r2 := @this: org.hibernate.hql.internal.classic.FromPathExpressionParser 
(assert (not (= var2916 null-var1012)))
(define-const var2872 var1479 var1479-init) ; Statement: $r8 = new org.hibernate.QueryException 
(define-const var903 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var903)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var903!1 String)
(assert (= var903!1 ""))
(assert true)
(define-const var3368 String (append/672562846 var903!1 "illegal syntax near collection-valued path expression in from: ")) ; Statement: $r4 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("illegal syntax near collection-valued path expression in from: ") 
(declare-const var903!2 String)
(assert (= var903!2 (str.++ var903!1 "illegal syntax near collection-valued path expression in from: ")))
(assert true)
(define-const var2586 String (getCollectionName/-1297012585 (cast-from-var1012-to-var2142 var2916))) ; Statement: $r3 = virtualinvoke r2.<org.hibernate.hql.internal.classic.FromPathExpressionParser: java.lang.String getCollectionName()>() 
(assert true)
(define-const var1081 String (append/672562846 var3368 var2586)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3368!1 String)
(assert (= var3368!1 (str.++ var3368 var2586)))
(assert true)
(define-const var671 String (toString/-2075883882 var1081)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1391884909 var2872 var671)) ; Statement: specialinvoke $r8.<org.hibernate.QueryException: void <init>(java.lang.String)>($r6) 

(declare-const var2872!1 var1479)
(declare-const var671!1 String)
(define-const var2573 var3049 (cast-from-var1479-to-var3049 var2872!1)) ; Statement: $r9 = (java.lang.Throwable) $r8 
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {var1479-init=([], org.hibernate.QueryException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getCollectionName/-1297012585=([org.hibernate.hql.internal.classic.PathExpressionParser], java.lang.String), cast-from-var1012-to-var2142=([org.hibernate.hql.internal.classic.FromPathExpressionParser], org.hibernate.hql.internal.classic.PathExpressionParser), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1391884909=([org.hibernate.QueryException, java.lang.String], void), cast-from-var1479-to-var3049=([org.hibernate.QueryException], java.lang.Throwable)}
; {var1012=org.hibernate.hql.internal.classic.FromPathExpressionParser, var2916=r2, var1479=org.hibernate.QueryException, var2872=$r8, var903=$r7, var3368=$r4, var2142=org.hibernate.hql.internal.classic.PathExpressionParser, var2586=$r3, var1081=$r5, var671=$r6, var3049=java.lang.Throwable, var2573=$r9}
; {org.hibernate.hql.internal.classic.FromPathExpressionParser=var1012, r2=var2916, org.hibernate.QueryException=var1479, $r8=var2872, $r7=var903, $r4=var3368, org.hibernate.hql.internal.classic.PathExpressionParser=var2142, $r3=var2586, $r5=var1081, $r6=var671, java.lang.Throwable=var3049, $r9=var2573}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.hibernate.hql.internal.classic.FromPathExpressionParser;	$r8 = new org.hibernate.QueryException;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("illegal syntax near collection-valued path expression in from: ");	$r3 = virtualinvoke r2.<org.hibernate.hql.internal.classic.FromPathExpressionParser: java.lang.String getCollectionName()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r8.<org.hibernate.QueryException: void <init>(java.lang.String)>($r6);	$r9 = (java.lang.Throwable) $r8;	throw $r9
;block_num 1