(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var87 0)
(declare-sort var3049 0)
(declare-sort var1609 0)
(declare-sort var755 0)
(declare-sort var2919 0)
(declare-sort var260 0)
(declare-sort var108 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun namedParameters/-758040019 (var87) var1609)
(declare-fun var1609_get/1088891777 (var1609 var755) var755)
(declare-fun cast-from-String-to-var755 (String) var755)
(declare-fun var2919-init () var2919)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun queryTranslatorImpl/-758040019 (var87) var260)
(declare-fun getQueryString/-1893002089 (var260) String)
(declare-fun <init>/-829781272 (var2919 String String) void)
(declare-fun cast-from-var2919-to-var108 (var2919) var108)
(declare-const null-var87 var87)
(declare-const null-String String)
(declare-const null-var755 var755)
(declare-const var3375 var87) ; Statement: r0 := @this: org.hibernate.hql.internal.ast.HqlSqlWalker 
(assert (not (= var3375 null-var87)))
(declare-const var3726 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3726 null-String)))
(define-const var2158 var1609 (namedParameters/-758040019 var3375)) ; Statement: $r2 = r0.<org.hibernate.hql.internal.ast.HqlSqlWalker: java.util.Map namedParameters> 
(define-const var2989 var755 (var1609_get/1088891777 var2158 (cast-from-String-to-var755 var3726))) ; Statement: r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1) 
 ; Statement: if r3 != null goto $z0 = r3 instanceof java.lang.Integer 
(assert (not (not (= var2989 null-var755)))) ; Negate: Cond: r3 != null  
(define-const var934 var2919 var2919-init) ; Statement: $r16 = new org.hibernate.QueryException 
(define-const var561 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var561)) ; Statement: specialinvoke $r15.<java.lang.StringBuilder: void <init>()>() 
(declare-const var561!1 String)
(assert (= var561!1 ""))
(assert true)
(define-const var3718 String (append/672562846 var561!1 "Named parameter does not appear in Query: ")) ; Statement: $r10 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Named parameter does not appear in Query: ") 
(declare-const var561!2 String)
(assert (= var561!2 (str.++ var561!1 "Named parameter does not appear in Query: ")))
(assert true)
(define-const var188 String (append/672562846 var3718 var3726)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3718!1 String)
(assert (= var3718!1 (str.++ var3718 var3726)))
(assert true)
(define-const var1432 String (toString/-2075883882 var188)) ; Statement: $r14 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3680 var260 (queryTranslatorImpl/-758040019 var3375)) ; Statement: $r12 = r0.<org.hibernate.hql.internal.ast.HqlSqlWalker: org.hibernate.hql.internal.ast.QueryTranslatorImpl queryTranslatorImpl> 
(assert true)
(define-const var1918 String (getQueryString/-1893002089 var3680)) ; Statement: $r13 = virtualinvoke $r12.<org.hibernate.hql.internal.ast.QueryTranslatorImpl: java.lang.String getQueryString()>() 
(assert true)
;(assert (<init>/-829781272 var934 var1432 var1918)) ; Statement: specialinvoke $r16.<org.hibernate.QueryException: void <init>(java.lang.String,java.lang.String)>($r14, $r13) 

(declare-const var934!1 var2919)
(declare-const var1432!1 String)
(declare-const var1918!1 String)
(define-const var3241 var108 (cast-from-var2919-to-var108 var934!1)) ; Statement: $r17 = (java.lang.Throwable) $r16 
 ; Statement: throw $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {namedParameters/-758040019=([org.hibernate.hql.internal.ast.HqlSqlWalker], java.util.Map), var1609_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var755=([java.lang.String], java.lang.Object), var2919-init=([], org.hibernate.QueryException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), queryTranslatorImpl/-758040019=([org.hibernate.hql.internal.ast.HqlSqlWalker], org.hibernate.hql.internal.ast.QueryTranslatorImpl), getQueryString/-1893002089=([org.hibernate.hql.internal.ast.QueryTranslatorImpl], java.lang.String), <init>/-829781272=([org.hibernate.QueryException, java.lang.String, java.lang.String], void), cast-from-var2919-to-var108=([org.hibernate.QueryException], java.lang.Throwable)}
; {var87=org.hibernate.hql.internal.ast.HqlSqlWalker, var3375=r0, var3726=r1, var3049=null_type, var1609=java.util.Map, var2158=$r2, var755=java.lang.Object, var2989=r3, var2919=org.hibernate.QueryException, var934=$r16, var561=$r15, var3718=$r10, var188=$r11, var1432=$r14, var260=org.hibernate.hql.internal.ast.QueryTranslatorImpl, var3680=$r12, var1918=$r13, var108=java.lang.Throwable, var3241=$r17}
; {org.hibernate.hql.internal.ast.HqlSqlWalker=var87, r0=var3375, r1=var3726, null_type=var3049, java.util.Map=var1609, $r2=var2158, java.lang.Object=var755, r3=var2989, org.hibernate.QueryException=var2919, $r16=var934, $r15=var561, $r10=var3718, $r11=var188, $r14=var1432, org.hibernate.hql.internal.ast.QueryTranslatorImpl=var260, $r12=var3680, $r13=var1918, java.lang.Throwable=var108, $r17=var3241}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.hql.internal.ast.HqlSqlWalker;	r1 := @parameter0: java.lang.String;	$r2 = r0.<org.hibernate.hql.internal.ast.HqlSqlWalker: java.util.Map namedParameters>;	r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1);	if r3 != null goto $z0 = r3 instanceof java.lang.Integer;	$r16 = new org.hibernate.QueryException;	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Named parameter does not appear in Query: ");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r14 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	$r12 = r0.<org.hibernate.hql.internal.ast.HqlSqlWalker: org.hibernate.hql.internal.ast.QueryTranslatorImpl queryTranslatorImpl>;	$r13 = virtualinvoke $r12.<org.hibernate.hql.internal.ast.QueryTranslatorImpl: java.lang.String getQueryString()>();	specialinvoke $r16.<org.hibernate.QueryException: void <init>(java.lang.String,java.lang.String)>($r14, $r13);	$r17 = (java.lang.Throwable) $r16;	throw $r17
;block_num 2