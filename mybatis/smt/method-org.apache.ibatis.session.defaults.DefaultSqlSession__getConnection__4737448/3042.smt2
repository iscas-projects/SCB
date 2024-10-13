(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1638 0)
(declare-sort var763 0)
(declare-sort var690 0)
(declare-sort var1201 0)
(declare-sort var118 0)
(declare-sort var521 0)
(declare-sort var1896 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun executor/-697541497 (var1638) var763)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1201) String)
(declare-fun cast-from-var690-to-var1201 (var690) var1201)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var521_wrapException/-1072023692 (String var1896) var118)
(declare-fun cast-from-var690-to-var1896 (var690) var1896)
(declare-const null-var1638 var1638)
(declare-const null-var690 var690)
(declare-const var3906 var1638) ; Statement: r0 := @this: org.apache.ibatis.session.defaults.DefaultSqlSession 
(assert (not (= var3906 null-var1638)))
(define-const var502 var763 (executor/-697541497 var3906)) ; Statement: $r1 = r0.<org.apache.ibatis.session.defaults.DefaultSqlSession: org.apache.ibatis.executor.Executor executor> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1071 var690) ; Statement: $r4 := @caughtexception 
(assert (not (= var1071 null-var690)))
(define-const var3619 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3619)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3619!1 String)
(assert (= var3619!1 ""))
(assert true)
(define-const var2874 String (append/672562846 var3619!1 "Error getting a new connection.  Cause: ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error getting a new connection.  Cause: ") 
(declare-const var3619!2 String)
(assert (= var3619!2 (str.++ var3619!1 "Error getting a new connection.  Cause: ")))
(assert true)
(define-const var3255 String (append/-1031950772 var2874 (cast-from-var690-to-var1201 var1071))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4) 
(declare-const var2874!1 String)
(assert (str.prefixof var2874 var2874!1))
(assert true)
(define-const var2303 String (toString/-2075883882 var3255)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2062 var118 (var521_wrapException/-1072023692 var2303 (cast-from-var690-to-var1896 var1071))) ; Statement: $r9 = staticinvoke <org.apache.ibatis.exceptions.ExceptionFactory: java.lang.RuntimeException wrapException(java.lang.String,java.lang.Exception)>($r8, $r4) 
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {executor/-697541497=([org.apache.ibatis.session.defaults.DefaultSqlSession], org.apache.ibatis.executor.Executor), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var690-to-var1201=([java.sql.SQLException], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var521_wrapException/-1072023692=([java.lang.String, java.lang.Exception], java.lang.RuntimeException), cast-from-var690-to-var1896=([java.sql.SQLException], java.lang.Exception)}
; {var1638=org.apache.ibatis.session.defaults.DefaultSqlSession, var3906=r0, var763=org.apache.ibatis.executor.Executor, var502=$r1, var690=java.sql.SQLException, var1071=$r4, var3619=$r5, var2874=$r6, var1201=java.lang.Object, var3255=$r7, var2303=$r8, var118=java.lang.RuntimeException, var521=org.apache.ibatis.exceptions.ExceptionFactory, var1896=java.lang.Exception, var2062=$r9}
; {org.apache.ibatis.session.defaults.DefaultSqlSession=var1638, r0=var3906, org.apache.ibatis.executor.Executor=var763, $r1=var502, java.sql.SQLException=var690, $r4=var1071, $r5=var3619, $r6=var2874, java.lang.Object=var1201, $r7=var3255, $r8=var2303, java.lang.RuntimeException=var118, org.apache.ibatis.exceptions.ExceptionFactory=var521, java.lang.Exception=var1896, $r9=var2062}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.session.defaults.DefaultSqlSession;	$r1 = r0.<org.apache.ibatis.session.defaults.DefaultSqlSession: org.apache.ibatis.executor.Executor executor>;	$r4 := @caughtexception;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error getting a new connection.  Cause: ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	$r9 = staticinvoke <org.apache.ibatis.exceptions.ExceptionFactory: java.lang.RuntimeException wrapException(java.lang.String,java.lang.Exception)>($r8, $r4);	throw $r9
;block_num 2