(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var570 0)
(declare-sort var202 0)
(declare-sort var758 0)
(declare-sort var962 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var758-init () var758)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var962) String)
(declare-fun cast-from-var202-to-var962 (var202) var962)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1802819250 (var758 String var202) void)
(declare-const null-var570 var570)
(declare-const null-var202 var202)
(declare-const var2554 var570) ; Statement: r0 := @this: org.apache.ibatis.jdbc.ScriptRunner 
(assert (not (= var2554 null-var570)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3790 var202) ; Statement: $r3 := @caughtexception 
(assert (not (= var3790 null-var202)))
(define-const var401 var758 var758-init) ; Statement: $r4 = new org.apache.ibatis.jdbc.RuntimeSqlException 
(define-const var3848 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3848)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3848!1 String)
(assert (= var3848!1 ""))
(assert true)
(define-const var1933 String (append/672562846 var3848!1 "Could not commit transaction. Cause: ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not commit transaction. Cause: ") 
(declare-const var3848!2 String)
(assert (= var3848!2 (str.++ var3848!1 "Could not commit transaction. Cause: ")))
(assert true)
(define-const var1113 String (append/-1031950772 var1933 (cast-from-var202-to-var962 var3790))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3) 
(declare-const var1933!1 String)
(assert (str.prefixof var1933 var1933!1))
(assert true)
(define-const var2011 String (toString/-2075883882 var1113)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1802819250 var401 var2011 var3790)) ; Statement: specialinvoke $r4.<org.apache.ibatis.jdbc.RuntimeSqlException: void <init>(java.lang.String,java.lang.Throwable)>($r8, $r3) 

(declare-const var401!1 var758)
(declare-const var2011!1 String)
(declare-const var3790!1 var202)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var758-init=([], org.apache.ibatis.jdbc.RuntimeSqlException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var202-to-var962=([java.lang.Throwable], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1802819250=([org.apache.ibatis.jdbc.RuntimeSqlException, java.lang.String, java.lang.Throwable], void)}
; {var570=org.apache.ibatis.jdbc.ScriptRunner, var2554=r0, var202=java.lang.Throwable, var3790=$r3, var758=org.apache.ibatis.jdbc.RuntimeSqlException, var401=$r4, var3848=$r5, var1933=$r6, var962=java.lang.Object, var1113=$r7, var2011=$r8}
; {org.apache.ibatis.jdbc.ScriptRunner=var570, r0=var2554, java.lang.Throwable=var202, $r3=var3790, org.apache.ibatis.jdbc.RuntimeSqlException=var758, $r4=var401, $r5=var3848, $r6=var1933, java.lang.Object=var962, $r7=var1113, $r8=var2011}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.jdbc.ScriptRunner;	$r3 := @caughtexception;	$r4 = new org.apache.ibatis.jdbc.RuntimeSqlException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not commit transaction. Cause: ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<org.apache.ibatis.jdbc.RuntimeSqlException: void <init>(java.lang.String,java.lang.Throwable)>($r8, $r3);	throw $r4
;block_num 2