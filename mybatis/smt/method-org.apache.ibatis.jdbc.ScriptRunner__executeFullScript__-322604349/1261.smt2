(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1610 0)
(declare-sort var3974 0)
(declare-sort var3224 0)
(declare-sort var2565 0)
(declare-sort var2647 0)
(declare-sort var420 0)
(declare-sort var1315 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var3224-init () var3224)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2647) String)
(declare-fun cast-from-String-to-var2647 (String) var2647)
(declare-fun cast-from-var2565-to-var2647 (var2565) var2647)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun printlnError/-1111405567 (var1610 var2647) void)
(declare-fun var420-init () var420)
(declare-fun <init>/-1802819250 (var420 String var1315) void)
(declare-fun cast-from-var2565-to-var1315 (var2565) var1315)
(declare-const null-var1610 var1610)
(declare-const null-var3974 var3974)
(declare-const null-var2565 var2565)
(declare-const var2162 var1610) ; Statement: r5 := @this: org.apache.ibatis.jdbc.ScriptRunner 
(assert (not (= var2162 null-var1610)))
(declare-const var2667 var3974) ; Statement: r2 := @parameter0: java.io.Reader 
(assert (not (= var2667 null-var3974)))
(define-const var3973 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3973)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3973!1 String)
(assert (= var3973!1 ""))
(define-const var2944 var3224 var3224-init) ; Statement: $r1 = new java.io.BufferedReader 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3284 var2565) ; Statement: $r7 := @caughtexception 
(assert (not (= var3284 null-var2565)))
(define-const var1314 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1314)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1314!1 String)
(assert (= var1314!1 ""))
(assert true)
(define-const var3489 String (append/672562846 var1314!1 "Error executing: ")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error executing: ") 
(declare-const var1314!2 String)
(assert (= var1314!2 (str.++ var1314!1 "Error executing: ")))
(assert true)
(define-const var98 String (append/-1031950772 var3489 (cast-from-String-to-var2647 var3973!1))) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r0) 
(declare-const var3489!1 String)
(assert (str.prefixof var3489 var3489!1))
(assert true)
(define-const var727 String (append/672562846 var98 ".  Cause: ")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".  Cause: ") 
(declare-const var98!1 String)
(assert (= var98!1 (str.++ var98 ".  Cause: ")))
(assert true)
(define-const var2703 String (append/-1031950772 var727 (cast-from-var2565-to-var2647 var3284))) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r7) 
(declare-const var727!1 String)
(assert (str.prefixof var727 var727!1))
(assert true)
(define-const var3339 String (toString/-2075883882 var2703)) ; Statement: r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (printlnError/-1111405567 var2162 (cast-from-String-to-var2647 var3339))) ; Statement: specialinvoke r5.<org.apache.ibatis.jdbc.ScriptRunner: void printlnError(java.lang.Object)>(r14) 

(declare-const var2162!1 var1610)
(declare-const var3339!1 String)
(define-const var3341 var420 var420-init) ; Statement: $r13 = new org.apache.ibatis.jdbc.RuntimeSqlException 
(assert true)
;(assert (<init>/-1802819250 var3341 var3339!1 (cast-from-var2565-to-var1315 var3284))) ; Statement: specialinvoke $r13.<org.apache.ibatis.jdbc.RuntimeSqlException: void <init>(java.lang.String,java.lang.Throwable)>(r14, $r7) 

(declare-const var3341!1 var420)
(declare-const var3339!2 String)
(declare-const var3284!1 var2565)
 ; Statement: throw $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var3224-init=([], java.io.BufferedReader), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-String-to-var2647=([java.lang.StringBuilder], java.lang.Object), cast-from-var2565-to-var2647=([java.lang.Exception], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), printlnError/-1111405567=([org.apache.ibatis.jdbc.ScriptRunner, java.lang.Object], void), var420-init=([], org.apache.ibatis.jdbc.RuntimeSqlException), <init>/-1802819250=([org.apache.ibatis.jdbc.RuntimeSqlException, java.lang.String, java.lang.Throwable], void), cast-from-var2565-to-var1315=([java.lang.Exception], java.lang.Throwable)}
; {var1610=org.apache.ibatis.jdbc.ScriptRunner, var2162=r5, var3974=java.io.Reader, var2667=r2, var3973=$r0, var3224=java.io.BufferedReader, var2944=$r1, var2565=java.lang.Exception, var3284=$r7, var1314=$r8, var3489=$r9, var2647=java.lang.Object, var98=$r10, var727=$r11, var2703=$r12, var3339=r14, var420=org.apache.ibatis.jdbc.RuntimeSqlException, var3341=$r13, var1315=java.lang.Throwable}
; {org.apache.ibatis.jdbc.ScriptRunner=var1610, r5=var2162, java.io.Reader=var3974, r2=var2667, $r0=var3973, java.io.BufferedReader=var3224, $r1=var2944, java.lang.Exception=var2565, $r7=var3284, $r8=var1314, $r9=var3489, java.lang.Object=var2647, $r10=var98, $r11=var727, $r12=var2703, r14=var3339, org.apache.ibatis.jdbc.RuntimeSqlException=var420, $r13=var3341, java.lang.Throwable=var1315}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.apache.ibatis.jdbc.ScriptRunner;	r2 := @parameter0: java.io.Reader;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r1 = new java.io.BufferedReader;	$r7 := @caughtexception;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error executing: ");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r0);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".  Cause: ");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r7);	r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r5.<org.apache.ibatis.jdbc.ScriptRunner: void printlnError(java.lang.Object)>(r14);	$r13 = new org.apache.ibatis.jdbc.RuntimeSqlException;	specialinvoke $r13.<org.apache.ibatis.jdbc.RuntimeSqlException: void <init>(java.lang.String,java.lang.Throwable)>(r14, $r7);	throw $r13
;block_num 2