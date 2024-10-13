(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1123 0)
(declare-sort var3670 0)
(declare-sort var1008 0)
(declare-sort var2406 0)
(declare-sort var33 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun findSQLFunction/-1640416109 (var1123 String) var1008)
(declare-fun var2406-init () var2406)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1391884909 (var2406 String) void)
(declare-fun cast-from-var2406-to-var33 (var2406) var33)
(declare-const null-var1123 var1123)
(declare-const null-String String)
(declare-const null-var1008 var1008)
(declare-const var1448 var1123) ; Statement: r0 := @this: org.hibernate.hql.internal.ast.util.SessionFactoryHelper 
(assert (not (= var1448 null-var1123)))
(declare-const var2266 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2266 null-String)))
(assert true)
(define-const var773 var1008 (findSQLFunction/-1640416109 var1448 var2266)) ; Statement: r2 = virtualinvoke r0.<org.hibernate.hql.internal.ast.util.SessionFactoryHelper: org.hibernate.dialect.function.SQLFunction findSQLFunction(java.lang.String)>(r1) 
 ; Statement: if r2 != null goto return r2 
(assert (not (not (= var773 null-var1008)))) ; Negate: Cond: r2 != null  
(define-const var270 var2406 var2406-init) ; Statement: $r9 = new org.hibernate.QueryException 
(define-const var481 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var481)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var481!1 String)
(assert (= var481!1 ""))
(assert true)
(define-const var673 String (append/672562846 var481!1 "Unable to find SQL function: ")) ; Statement: $r5 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to find SQL function: ") 
(declare-const var481!2 String)
(assert (= var481!2 (str.++ var481!1 "Unable to find SQL function: ")))
(assert true)
(define-const var2039 String (append/672562846 var673 var2266)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var673!1 String)
(assert (= var673!1 (str.++ var673 var2266)))
(assert true)
(define-const var3871 String (toString/-2075883882 var2039)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1391884909 var270 var3871)) ; Statement: specialinvoke $r9.<org.hibernate.QueryException: void <init>(java.lang.String)>($r7) 

(declare-const var270!1 var2406)
(declare-const var3871!1 String)
(define-const var3149 var33 (cast-from-var2406-to-var33 var270!1)) ; Statement: $r10 = (java.lang.Throwable) $r9 
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {findSQLFunction/-1640416109=([org.hibernate.hql.internal.ast.util.SessionFactoryHelper, java.lang.String], org.hibernate.dialect.function.SQLFunction), var2406-init=([], org.hibernate.QueryException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1391884909=([org.hibernate.QueryException, java.lang.String], void), cast-from-var2406-to-var33=([org.hibernate.QueryException], java.lang.Throwable)}
; {var1123=org.hibernate.hql.internal.ast.util.SessionFactoryHelper, var1448=r0, var2266=r1, var3670=null_type, var1008=org.hibernate.dialect.function.SQLFunction, var773=r2, var2406=org.hibernate.QueryException, var270=$r9, var481=$r8, var673=$r5, var2039=$r6, var3871=$r7, var33=java.lang.Throwable, var3149=$r10}
; {org.hibernate.hql.internal.ast.util.SessionFactoryHelper=var1123, r0=var1448, r1=var2266, null_type=var3670, org.hibernate.dialect.function.SQLFunction=var1008, r2=var773, org.hibernate.QueryException=var2406, $r9=var270, $r8=var481, $r5=var673, $r6=var2039, $r7=var3871, java.lang.Throwable=var33, $r10=var3149}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.hql.internal.ast.util.SessionFactoryHelper;	r1 := @parameter0: java.lang.String;	r2 = virtualinvoke r0.<org.hibernate.hql.internal.ast.util.SessionFactoryHelper: org.hibernate.dialect.function.SQLFunction findSQLFunction(java.lang.String)>(r1);	if r2 != null goto return r2;	$r9 = new org.hibernate.QueryException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to find SQL function: ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r9.<org.hibernate.QueryException: void <init>(java.lang.String)>($r7);	$r10 = (java.lang.Throwable) $r9;	throw $r10
;block_num 2