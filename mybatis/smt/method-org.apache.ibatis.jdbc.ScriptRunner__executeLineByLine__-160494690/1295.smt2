(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var50 0)
(declare-sort var113 0)
(declare-sort var3982 0)
(declare-sort var685 0)
(declare-sort var1695 0)
(declare-sort var3890 0)
(declare-sort var1437 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var3982-init () var3982)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1695) String)
(declare-fun cast-from-String-to-var1695 (String) var1695)
(declare-fun cast-from-var685-to-var1695 (var685) var1695)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun printlnError/-1111405567 (var50 var1695) void)
(declare-fun var3890-init () var3890)
(declare-fun <init>/-1802819250 (var3890 String var1437) void)
(declare-fun cast-from-var685-to-var1437 (var685) var1437)
(declare-const null-var50 var50)
(declare-const null-var113 var113)
(declare-const null-var685 var685)
(declare-const var3432 var50) ; Statement: r4 := @this: org.apache.ibatis.jdbc.ScriptRunner 
(assert (not (= var3432 null-var50)))
(declare-const var1371 var113) ; Statement: r2 := @parameter0: java.io.Reader 
(assert (not (= var1371 null-var113)))
(define-const var3494 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3494)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3494!1 String)
(assert (= var3494!1 ""))
(define-const var3411 var3982 var3982-init) ; Statement: $r1 = new java.io.BufferedReader 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3237 var685) ; Statement: $r5 := @caughtexception 
(assert (not (= var3237 null-var685)))
(define-const var3555 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3555)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3555!1 String)
(assert (= var3555!1 ""))
(assert true)
(define-const var289 String (append/672562846 var3555!1 "Error executing: ")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error executing: ") 
(declare-const var3555!2 String)
(assert (= var3555!2 (str.++ var3555!1 "Error executing: ")))
(assert true)
(define-const var3180 String (append/-1031950772 var289 (cast-from-String-to-var1695 var3494!1))) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r0) 
(declare-const var289!1 String)
(assert (str.prefixof var289 var289!1))
(assert true)
(define-const var2212 String (append/672562846 var3180 ".  Cause: ")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".  Cause: ") 
(declare-const var3180!1 String)
(assert (= var3180!1 (str.++ var3180 ".  Cause: ")))
(assert true)
(define-const var1498 String (append/-1031950772 var2212 (cast-from-var685-to-var1695 var3237))) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5) 
(declare-const var2212!1 String)
(assert (str.prefixof var2212 var2212!1))
(assert true)
(define-const var1216 String (toString/-2075883882 var1498)) ; Statement: r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (printlnError/-1111405567 var3432 (cast-from-String-to-var1695 var1216))) ; Statement: specialinvoke r4.<org.apache.ibatis.jdbc.ScriptRunner: void printlnError(java.lang.Object)>(r12) 

(declare-const var3432!1 var50)
(declare-const var1216!1 String)
(define-const var1744 var3890 var3890-init) ; Statement: $r11 = new org.apache.ibatis.jdbc.RuntimeSqlException 
(assert true)
;(assert (<init>/-1802819250 var1744 var1216!1 (cast-from-var685-to-var1437 var3237))) ; Statement: specialinvoke $r11.<org.apache.ibatis.jdbc.RuntimeSqlException: void <init>(java.lang.String,java.lang.Throwable)>(r12, $r5) 

(declare-const var1744!1 var3890)
(declare-const var1216!2 String)
(declare-const var3237!1 var685)
 ; Statement: throw $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var3982-init=([], java.io.BufferedReader), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-String-to-var1695=([java.lang.StringBuilder], java.lang.Object), cast-from-var685-to-var1695=([java.lang.Exception], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), printlnError/-1111405567=([org.apache.ibatis.jdbc.ScriptRunner, java.lang.Object], void), var3890-init=([], org.apache.ibatis.jdbc.RuntimeSqlException), <init>/-1802819250=([org.apache.ibatis.jdbc.RuntimeSqlException, java.lang.String, java.lang.Throwable], void), cast-from-var685-to-var1437=([java.lang.Exception], java.lang.Throwable)}
; {var50=org.apache.ibatis.jdbc.ScriptRunner, var3432=r4, var113=java.io.Reader, var1371=r2, var3494=$r0, var3982=java.io.BufferedReader, var3411=$r1, var685=java.lang.Exception, var3237=$r5, var3555=$r6, var289=$r7, var1695=java.lang.Object, var3180=$r8, var2212=$r9, var1498=$r10, var1216=r12, var3890=org.apache.ibatis.jdbc.RuntimeSqlException, var1744=$r11, var1437=java.lang.Throwable}
; {org.apache.ibatis.jdbc.ScriptRunner=var50, r4=var3432, java.io.Reader=var113, r2=var1371, $r0=var3494, java.io.BufferedReader=var3982, $r1=var3411, java.lang.Exception=var685, $r5=var3237, $r6=var3555, $r7=var289, java.lang.Object=var1695, $r8=var3180, $r9=var2212, $r10=var1498, r12=var1216, org.apache.ibatis.jdbc.RuntimeSqlException=var3890, $r11=var1744, java.lang.Throwable=var1437}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r4 := @this: org.apache.ibatis.jdbc.ScriptRunner;	r2 := @parameter0: java.io.Reader;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r1 = new java.io.BufferedReader;	$r5 := @caughtexception;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error executing: ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r0);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".  Cause: ");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5);	r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r4.<org.apache.ibatis.jdbc.ScriptRunner: void printlnError(java.lang.Object)>(r12);	$r11 = new org.apache.ibatis.jdbc.RuntimeSqlException;	specialinvoke $r11.<org.apache.ibatis.jdbc.RuntimeSqlException: void <init>(java.lang.String,java.lang.Throwable)>(r12, $r5);	throw $r11
;block_num 2