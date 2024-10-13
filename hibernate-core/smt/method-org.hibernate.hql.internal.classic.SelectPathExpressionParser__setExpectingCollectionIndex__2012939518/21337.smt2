(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1944 0)
(declare-sort var463 0)
(declare-sort var2911 0)
(declare-sort var881 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var463-init () var463)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getCollectionName/-1297012585 (var2911) String)
(declare-fun cast-from-var1944-to-var2911 (var1944) var2911)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1391884909 (var463 String) void)
(declare-fun cast-from-var463-to-var881 (var463) var881)
(declare-const null-var1944 var1944)
(declare-const var3399 var1944) ; Statement: r2 := @this: org.hibernate.hql.internal.classic.SelectPathExpressionParser 
(assert (not (= var3399 null-var1944)))
(define-const var3512 var463 var463-init) ; Statement: $r8 = new org.hibernate.QueryException 
(define-const var3886 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3886)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3886!1 String)
(assert (= var3886!1 ""))
(assert true)
(define-const var1833 String (append/672562846 var3886!1 "illegal syntax near collection-valued path expression in select: ")) ; Statement: $r4 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("illegal syntax near collection-valued path expression in select: ") 
(declare-const var3886!2 String)
(assert (= var3886!2 (str.++ var3886!1 "illegal syntax near collection-valued path expression in select: ")))
(assert true)
(define-const var3020 String (getCollectionName/-1297012585 (cast-from-var1944-to-var2911 var3399))) ; Statement: $r3 = virtualinvoke r2.<org.hibernate.hql.internal.classic.SelectPathExpressionParser: java.lang.String getCollectionName()>() 
(assert true)
(define-const var751 String (append/672562846 var1833 var3020)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1833!1 String)
(assert (= var1833!1 (str.++ var1833 var3020)))
(assert true)
(define-const var162 String (toString/-2075883882 var751)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1391884909 var3512 var162)) ; Statement: specialinvoke $r8.<org.hibernate.QueryException: void <init>(java.lang.String)>($r6) 

(declare-const var3512!1 var463)
(declare-const var162!1 String)
(define-const var3134 var881 (cast-from-var463-to-var881 var3512!1)) ; Statement: $r9 = (java.lang.Throwable) $r8 
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {var463-init=([], org.hibernate.QueryException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getCollectionName/-1297012585=([org.hibernate.hql.internal.classic.PathExpressionParser], java.lang.String), cast-from-var1944-to-var2911=([org.hibernate.hql.internal.classic.SelectPathExpressionParser], org.hibernate.hql.internal.classic.PathExpressionParser), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1391884909=([org.hibernate.QueryException, java.lang.String], void), cast-from-var463-to-var881=([org.hibernate.QueryException], java.lang.Throwable)}
; {var1944=org.hibernate.hql.internal.classic.SelectPathExpressionParser, var3399=r2, var463=org.hibernate.QueryException, var3512=$r8, var3886=$r7, var1833=$r4, var2911=org.hibernate.hql.internal.classic.PathExpressionParser, var3020=$r3, var751=$r5, var162=$r6, var881=java.lang.Throwable, var3134=$r9}
; {org.hibernate.hql.internal.classic.SelectPathExpressionParser=var1944, r2=var3399, org.hibernate.QueryException=var463, $r8=var3512, $r7=var3886, $r4=var1833, org.hibernate.hql.internal.classic.PathExpressionParser=var2911, $r3=var3020, $r5=var751, $r6=var162, java.lang.Throwable=var881, $r9=var3134}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.hibernate.hql.internal.classic.SelectPathExpressionParser;	$r8 = new org.hibernate.QueryException;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("illegal syntax near collection-valued path expression in select: ");	$r3 = virtualinvoke r2.<org.hibernate.hql.internal.classic.SelectPathExpressionParser: java.lang.String getCollectionName()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r8.<org.hibernate.QueryException: void <init>(java.lang.String)>($r6);	$r9 = (java.lang.Throwable) $r8;	throw $r9
;block_num 1