(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3843 0)
(declare-sort var2304 0)
(declare-sort var2086 0)
(declare-sort var648 0)
(declare-sort var1851 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2086-init () var2086)
(declare-fun arr-var648-init () (Array Int var648))
(declare-fun cast-from-String-to-var648 (String) var648)
(declare-fun String_format/1339386452 (String (Array Int var648)) String)
(declare-fun <init>/-1245322999 (var2086 String var1851) void)
(declare-fun cast-from-var2304-to-var1851 (var2304) var1851)
(declare-fun cast-from-var2086-to-var1851 (var2086) var1851)
(declare-const null-var3843 var3843)
(declare-const null-var2304 var2304)
(declare-const null-__Array__Int__var648__ (Array Int var648))
(declare-const var2260 var3843) ; Statement: r7 := @this: org.hibernate.dialect.OracleTypesHelper 
(assert (not (= var2260 null-var3843)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2875 var2304) ; Statement: $r5 := @caughtexception 
(assert (not (= var2875 null-var2304)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2198 var2304) ; Statement: $r1 := @caughtexception 
(assert (not (= var2198 null-var2304)))
(define-const var1914 var2086 var2086-init) ; Statement: $r8 = new org.hibernate.HibernateException 
(define-const var3538 (Array Int var648) arr-var648-init) ; Statement: $r3 = newarray (java.lang.Object)[2] 
(declare-const var3538!1 (Array Int var648))
(assert (not (= var3538!1 null-__Array__Int__var648__)))
(assert (= (select var3538!1 0) (cast-from-String-to-var648 "oracle.jdbc.OracleTypes"))) ; Statement: $r3[0] = "oracle.jdbc.OracleTypes" 
(declare-const var3538!2 (Array Int var648))
(assert (not (= var3538!2 null-__Array__Int__var648__)))
(assert (= (select var3538!2 1) (cast-from-String-to-var648 "oracle.jdbc.driver.OracleTypes"))) ; Statement: $r3[1] = "oracle.jdbc.driver.OracleTypes" 
(define-const var803 String (String_format/1339386452 "Unable to locate OracleTypes class using either known FQN [%s, %s]" var3538!2)) ; Statement: $r4 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Unable to locate OracleTypes class using either known FQN [%s, %s]", $r3) 
(assert true)
;(assert (<init>/-1245322999 var1914 var803 (cast-from-var2304-to-var1851 var2875))) ; Statement: specialinvoke $r8.<org.hibernate.HibernateException: void <init>(java.lang.String,java.lang.Throwable)>($r4, $r5) 

(declare-const var1914!1 var2086)
(declare-const var803!1 String)
(declare-const var2875!1 var2304)
(define-const var2018 var1851 (cast-from-var2086-to-var1851 var1914!1)) ; Statement: $r9 = (java.lang.Throwable) $r8 
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {var2086-init=([], org.hibernate.HibernateException), arr-var648-init=([], java.lang.Object[]), cast-from-String-to-var648=([java.lang.String], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/-1245322999=([org.hibernate.HibernateException, java.lang.String, java.lang.Throwable], void), cast-from-var2304-to-var1851=([java.lang.ClassNotFoundException], java.lang.Throwable), cast-from-var2086-to-var1851=([org.hibernate.HibernateException], java.lang.Throwable)}
; {var3843=org.hibernate.dialect.OracleTypesHelper, var2260=r7, var2304=java.lang.ClassNotFoundException, var2875=$r5, var2198=$r1, var2086=org.hibernate.HibernateException, var1914=$r8, var648=java.lang.Object, var3538=$r3, var803=$r4, var1851=java.lang.Throwable, var2018=$r9}
; {org.hibernate.dialect.OracleTypesHelper=var3843, r7=var2260, java.lang.ClassNotFoundException=var2304, $r5=var2875, $r1=var2198, org.hibernate.HibernateException=var2086, $r8=var1914, java.lang.Object=var648, $r3=var3538, $r4=var803, java.lang.Throwable=var1851, $r9=var2018}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r7 := @this: org.hibernate.dialect.OracleTypesHelper;	$r5 := @caughtexception;	$r1 := @caughtexception;	$r8 = new org.hibernate.HibernateException;	$r3 = newarray (java.lang.Object)[2];	$r3[0] = "oracle.jdbc.OracleTypes";	$r3[1] = "oracle.jdbc.driver.OracleTypes";	$r4 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Unable to locate OracleTypes class using either known FQN [%s, %s]", $r3);	specialinvoke $r8.<org.hibernate.HibernateException: void <init>(java.lang.String,java.lang.Throwable)>($r4, $r5);	$r9 = (java.lang.Throwable) $r8;	throw $r9
;block_num 3