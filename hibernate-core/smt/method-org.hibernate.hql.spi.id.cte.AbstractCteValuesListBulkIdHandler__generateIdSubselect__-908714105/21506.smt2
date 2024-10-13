(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var380 0)
(declare-sort var2832 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var2832_getIdentifierColumnNames/-1025856963 (var2832) (Array Int String))
(define-fun cast-from-__Array__Int__String__-to-__Array__Int__String__ ((arg (Array Int String))) (Array Int String) arg)
(declare-fun String_join/-1520935655 (String (Array Int String)) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun determineIdTableName/-1314173392 (var380 var2832) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var380 var380)
(declare-const null-var2832 var2832)
(declare-const var2557 var380) ; Statement: r7 := @this: org.hibernate.hql.spi.id.cte.AbstractCteValuesListBulkIdHandler 
(assert (not (= var2557 null-var380)))
(declare-const var3658 var2832) ; Statement: r1 := @parameter0: org.hibernate.persister.entity.Queryable 
(assert (not (= var3658 null-var2832)))
(define-const var3024 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3024)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3024!1 String)
(assert (= var3024!1 ""))
(assert true)
(define-const var2697 String (append/672562846 var3024!1 "select ")) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select ") 
(declare-const var3024!2 String)
(assert (= var3024!2 (str.++ var3024!1 "select ")))
(define-const var2424 (Array Int String) (var2832_getIdentifierColumnNames/-1025856963 var3658)) ; Statement: $r2 = interfaceinvoke r1.<org.hibernate.persister.entity.Queryable: java.lang.String[] getIdentifierColumnNames()>() 
(define-const var2946 (Array Int String) (cast-from-__Array__Int__String__-to-__Array__Int__String__ var2424)) ; Statement: $r3 = (java.lang.CharSequence[]) $r2 
(define-const var317 String (String_join/-1520935655 (cast-from-String-to-String ", ") var2946)) ; Statement: $r4 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>(", ", $r3) 
(assert true)
(define-const var2164 String (append/672562846 var2697 var317)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var2697!1 String)
(assert (= var2697!1 (str.++ var2697 var317)))
(assert true)
(define-const var2554 String (append/672562846 var2164 " from ")) ; Statement: $r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" from ") 
(declare-const var2164!1 String)
(assert (= var2164!1 (str.++ var2164 " from ")))
(assert true)
(define-const var3859 String (determineIdTableName/-1314173392 var2557 var3658)) ; Statement: $r8 = virtualinvoke r7.<org.hibernate.hql.spi.id.cte.AbstractCteValuesListBulkIdHandler: java.lang.String determineIdTableName(org.hibernate.persister.entity.Queryable)>(r1) 
(assert true)
(define-const var2997 String (append/672562846 var2554 var3859)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var2554!1 String)
(assert (= var2554!1 (str.++ var2554 var3859)))
(assert true)
(define-const var2804 String (append/672562846 var2997 " tmp2")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" tmp2") 
(declare-const var2997!1 String)
(assert (= var2997!1 (str.++ var2997 " tmp2")))
(assert true)
(define-const var790 String (toString/-2075883882 var2804)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var2832_getIdentifierColumnNames/-1025856963=([org.hibernate.persister.entity.Queryable], java.lang.String[]), cast-from-__Array__Int__String__-to-__Array__Int__String__=([java.lang.String[]], java.lang.CharSequence[]), String_join/-1520935655=([java.lang.CharSequence, java.lang.CharSequence[]], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), determineIdTableName/-1314173392=([org.hibernate.hql.spi.id.cte.AbstractCteValuesListBulkIdHandler, org.hibernate.persister.entity.Queryable], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var380=org.hibernate.hql.spi.id.cte.AbstractCteValuesListBulkIdHandler, var2557=r7, var2832=org.hibernate.persister.entity.Queryable, var3658=r1, var3024=$r0, var2697=$r5, var2424=$r2, var2946=$r3, var317=$r4, var2164=$r6, var2554=$r9, var3859=$r8, var2997=$r10, var2804=$r11, var790=$r12}
; {org.hibernate.hql.spi.id.cte.AbstractCteValuesListBulkIdHandler=var380, r7=var2557, org.hibernate.persister.entity.Queryable=var2832, r1=var3658, $r0=var3024, $r5=var2697, $r2=var2424, $r3=var2946, $r4=var317, $r6=var2164, $r9=var2554, $r8=var3859, $r10=var2997, $r11=var2804, $r12=var790}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r7 := @this: org.hibernate.hql.spi.id.cte.AbstractCteValuesListBulkIdHandler;	r1 := @parameter0: org.hibernate.persister.entity.Queryable;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select ");	$r2 = interfaceinvoke r1.<org.hibernate.persister.entity.Queryable: java.lang.String[] getIdentifierColumnNames()>();	$r3 = (java.lang.CharSequence[]) $r2;	$r4 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>(", ", $r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" from ");	$r8 = virtualinvoke r7.<org.hibernate.hql.spi.id.cte.AbstractCteValuesListBulkIdHandler: java.lang.String determineIdTableName(org.hibernate.persister.entity.Queryable)>(r1);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" tmp2");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	return $r12
;block_num 1