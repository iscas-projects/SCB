(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3369 0)
(declare-sort var2451 0)
(declare-sort var1190 0)
(declare-sort var1397 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1190-init () var1190)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun autoCommit/-1637780756 (var3369) Bool)
(declare-fun append/-388390247 (String Bool) String)
(declare-fun append/-1031950772 (String var1397) String)
(declare-fun cast-from-var2451-to-var1397 (var2451) var1397)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1802819250 (var1190 String var2451) void)
(declare-const null-var3369 var3369)
(declare-const null-var2451 var2451)
(declare-const var453 var3369) ; Statement: r0 := @this: org.apache.ibatis.jdbc.ScriptRunner 
(assert (not (= var453 null-var3369)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1797 var2451) ; Statement: $r3 := @caughtexception 
(assert (not (= var1797 null-var2451)))
(define-const var2541 var1190 var1190-init) ; Statement: $r4 = new org.apache.ibatis.jdbc.RuntimeSqlException 
(define-const var1755 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1755)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1755!1 String)
(assert (= var1755!1 ""))
(assert true)
(define-const var2662 String (append/672562846 var1755!1 "Could not set AutoCommit to ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not set AutoCommit to ") 
(declare-const var1755!2 String)
(assert (= var1755!2 (str.++ var1755!1 "Could not set AutoCommit to ")))
(define-const var1649 Bool (autoCommit/-1637780756 var453)) ; Statement: $z3 = r0.<org.apache.ibatis.jdbc.ScriptRunner: boolean autoCommit> 
(assert true)
(define-const var3708 String (append/-388390247 var2662 var1649)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>($z3) 
(declare-const var2662!1 String)
(assert (str.prefixof var2662 var2662!1))
(assert true)
(define-const var171 String (append/672562846 var3708 ". Cause: ")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". Cause: ") 
(declare-const var3708!1 String)
(assert (= var3708!1 (str.++ var3708 ". Cause: ")))
(assert true)
(define-const var269 String (append/-1031950772 var171 (cast-from-var2451-to-var1397 var1797))) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3) 
(declare-const var171!1 String)
(assert (str.prefixof var171 var171!1))
(assert true)
(define-const var2350 String (toString/-2075883882 var269)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1802819250 var2541 var2350 var1797)) ; Statement: specialinvoke $r4.<org.apache.ibatis.jdbc.RuntimeSqlException: void <init>(java.lang.String,java.lang.Throwable)>($r10, $r3) 

(declare-const var2541!1 var1190)
(declare-const var2350!1 String)
(declare-const var1797!1 var2451)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var1190-init=([], org.apache.ibatis.jdbc.RuntimeSqlException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), autoCommit/-1637780756=([org.apache.ibatis.jdbc.ScriptRunner], boolean), append/-388390247=([java.lang.StringBuilder, boolean], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2451-to-var1397=([java.lang.Throwable], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1802819250=([org.apache.ibatis.jdbc.RuntimeSqlException, java.lang.String, java.lang.Throwable], void)}
; {var3369=org.apache.ibatis.jdbc.ScriptRunner, var453=r0, var2451=java.lang.Throwable, var1797=$r3, var1190=org.apache.ibatis.jdbc.RuntimeSqlException, var2541=$r4, var1755=$r5, var2662=$r6, var1649=$z3, var3708=$r7, var171=$r8, var1397=java.lang.Object, var269=$r9, var2350=$r10}
; {org.apache.ibatis.jdbc.ScriptRunner=var3369, r0=var453, java.lang.Throwable=var2451, $r3=var1797, org.apache.ibatis.jdbc.RuntimeSqlException=var1190, $r4=var2541, $r5=var1755, $r6=var2662, $z3=var1649, $r7=var3708, $r8=var171, java.lang.Object=var1397, $r9=var269, $r10=var2350}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.jdbc.ScriptRunner;	$r3 := @caughtexception;	$r4 = new org.apache.ibatis.jdbc.RuntimeSqlException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not set AutoCommit to ");	$z3 = r0.<org.apache.ibatis.jdbc.ScriptRunner: boolean autoCommit>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>($z3);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". Cause: ");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<org.apache.ibatis.jdbc.RuntimeSqlException: void <init>(java.lang.String,java.lang.Throwable)>($r10, $r3);	throw $r4
;block_num 2