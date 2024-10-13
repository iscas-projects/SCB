(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2313 0)
(declare-sort var601 0)
(declare-sort var435 0)
(declare-sort var588 0)
(declare-sort var3965 0)
(declare-sort var554 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun connection/1390709314 (var2313) var601)
(declare-fun var588-init () var588)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-388390247 (String Bool) String)
(declare-fun append/-1031950772 (String var3965) String)
(declare-fun cast-from-var435-to-var3965 (var435) var3965)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1591947657 (var588 String var554) void)
(declare-fun cast-from-var435-to-var554 (var435) var554)
(declare-const null-var2313 var2313)
(declare-const null-Bool Bool)
(declare-const null-var435 var435)
(declare-const var2645 var2313) ; Statement: r0 := @this: org.apache.ibatis.transaction.jdbc.JdbcTransaction 
(assert (not (= var2645 null-var2313)))
(declare-const var1378 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var1378 null-Bool)))
(define-const var2320 var601 (connection/1390709314 var2645)) ; Statement: $r1 = r0.<org.apache.ibatis.transaction.jdbc.JdbcTransaction: java.sql.Connection connection> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var591 var435) ; Statement: $r13 := @caughtexception 
(assert (not (= var591 null-var435)))
(define-const var3340 var588 var588-init) ; Statement: $r14 = new org.apache.ibatis.transaction.TransactionException 
(define-const var3553 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3553)) ; Statement: specialinvoke $r15.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3553!1 String)
(assert (= var3553!1 ""))
(assert true)
(define-const var923 String (append/672562846 var3553!1 "Error configuring AutoCommit.  Your driver may not support getAutoCommit() or setAutoCommit(). Requested setting: ")) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error configuring AutoCommit.  Your driver may not support getAutoCommit() or setAutoCommit(). Requested setting: ") 
(declare-const var3553!2 String)
(assert (= var3553!2 (str.++ var3553!1 "Error configuring AutoCommit.  Your driver may not support getAutoCommit() or setAutoCommit(). Requested setting: ")))
(assert true)
(define-const var680 String (append/-388390247 var923 var1378)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>(z0) 
(declare-const var923!1 String)
(assert (str.prefixof var923 var923!1))
(assert true)
(define-const var3750 String (append/672562846 var680 ".  Cause: ")) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".  Cause: ") 
(declare-const var680!1 String)
(assert (= var680!1 (str.++ var680 ".  Cause: ")))
(assert true)
(define-const var3687 String (append/-1031950772 var3750 (cast-from-var435-to-var3965 var591))) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r13) 
(declare-const var3750!1 String)
(assert (str.prefixof var3750 var3750!1))
(assert true)
(define-const var3945 String (toString/-2075883882 var3687)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1591947657 var3340 var3945 (cast-from-var435-to-var554 var591))) ; Statement: specialinvoke $r14.<org.apache.ibatis.transaction.TransactionException: void <init>(java.lang.String,java.lang.Throwable)>($r20, $r13) 

(declare-const var3340!1 var588)
(declare-const var3945!1 String)
(declare-const var591!1 var435)
 ; Statement: throw $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {connection/1390709314=([org.apache.ibatis.transaction.jdbc.JdbcTransaction], java.sql.Connection), var588-init=([], org.apache.ibatis.transaction.TransactionException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-388390247=([java.lang.StringBuilder, boolean], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var435-to-var3965=([java.sql.SQLException], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1591947657=([org.apache.ibatis.transaction.TransactionException, java.lang.String, java.lang.Throwable], void), cast-from-var435-to-var554=([java.sql.SQLException], java.lang.Throwable)}
; {var2313=org.apache.ibatis.transaction.jdbc.JdbcTransaction, var2645=r0, var1378=z0, var601=java.sql.Connection, var2320=$r1, var435=java.sql.SQLException, var591=$r13, var588=org.apache.ibatis.transaction.TransactionException, var3340=$r14, var3553=$r15, var923=$r16, var680=$r17, var3750=$r18, var3965=java.lang.Object, var3687=$r19, var3945=$r20, var554=java.lang.Throwable}
; {org.apache.ibatis.transaction.jdbc.JdbcTransaction=var2313, r0=var2645, z0=var1378, java.sql.Connection=var601, $r1=var2320, java.sql.SQLException=var435, $r13=var591, org.apache.ibatis.transaction.TransactionException=var588, $r14=var3340, $r15=var3553, $r16=var923, $r17=var680, $r18=var3750, java.lang.Object=var3965, $r19=var3687, $r20=var3945, java.lang.Throwable=var554}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.transaction.jdbc.JdbcTransaction;	z0 := @parameter0: boolean;	$r1 = r0.<org.apache.ibatis.transaction.jdbc.JdbcTransaction: java.sql.Connection connection>;	$r13 := @caughtexception;	$r14 = new org.apache.ibatis.transaction.TransactionException;	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error configuring AutoCommit.  Your driver may not support getAutoCommit() or setAutoCommit(). Requested setting: ");	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>(z0);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".  Cause: ");	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r13);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r14.<org.apache.ibatis.transaction.TransactionException: void <init>(java.lang.String,java.lang.Throwable)>($r20, $r13);	throw $r14
;block_num 2