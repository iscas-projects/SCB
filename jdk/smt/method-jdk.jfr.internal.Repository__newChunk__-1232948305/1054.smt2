(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var213 0)
(declare-sort var1 0)
(declare-sort var984 0)
(declare-sort var3342 0)
(declare-sort var3165 0)
(declare-sort var3376 0)
(declare-sort var2439 0)
(declare-sort var447 0)
(declare-sort var958 0)
(declare-sort var3748 0)
(declare-sort var1168 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var3342-init () (Array Int var3342))
(declare-fun repository/1121014662 (var213) var3165)
(declare-fun cast-from-var3165-to-var3342 (var3165) var3342)
(declare-fun getMessage/849299655 (var3376) String)
(declare-fun cast-from-var984-to-var3376 (var984) var3376)
(declare-fun cast-from-String-to-var3342 (String) var3342)
(declare-fun String_format/1339386452 (String (Array Int var3342)) String)
(declare-fun var958_log/979489950 (var2439 var447 String) void)
(declare-fun abort/-1610727241 (var3748 String) void)
(declare-fun var1168-init () var1168)
(declare-fun <init>/1247810213 (var1168 String) void)
(declare-const null-var213 var213)
(declare-const null-var1 var1)
(declare-const null-var984 var984)
(declare-const null-__Array__Int__var3342__ (Array Int var3342))
(declare-const var2439-JFR var2439)
(declare-const var447-ERROR var447)
(declare-const var213-jvm var3748)
(declare-const var1696 var213) ; Statement: r0 := @this: jdk.jfr.internal.Repository 
(assert (not (= var1696 null-var213)))
(declare-const var3292 var1) ; Statement: r3 := @parameter0: java.time.Instant 
(assert (not (= var3292 null-var1)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1988 var984) ; Statement: $r12 := @caughtexception 
(assert (not (= var1988 null-var984)))
(define-const var3789 (Array Int var3342) arr-var3342-init) ; Statement: $r13 = newarray (java.lang.Object)[2] 
(define-const var798 var3165 (repository/1121014662 var1696)) ; Statement: $r14 = r0.<jdk.jfr.internal.Repository: jdk.jfr.internal.SecuritySupport$SafePath repository> 
(declare-const var3789!1 (Array Int var3342))
(assert (not (= var3789!1 null-__Array__Int__var3342__)))
(assert (= (select var3789!1 0) (cast-from-var3165-to-var3342 var798))) ; Statement: $r13[0] = $r14 
(assert true)
(define-const var668 String (getMessage/849299655 (cast-from-var984-to-var3376 var1988))) ; Statement: $r15 = virtualinvoke $r12.<java.lang.Exception: java.lang.String getMessage()>() 
(declare-const var3789!2 (Array Int var3342))
(assert (not (= var3789!2 null-__Array__Int__var3342__)))
(assert (= (select var3789!2 1) (cast-from-String-to-var3342 var668))) ; Statement: $r13[1] = $r15 
(define-const var2286 String (String_format/1339386452 "Could not create chunk in repository %s, %s" var3789!2)) ; Statement: r16 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Could not create chunk in repository %s, %s", $r13) 
(define-const var800 var2439 var2439-JFR) ; Statement: $r18 = <jdk.jfr.internal.LogTag: jdk.jfr.internal.LogTag JFR> 
(define-const var3388 var447 var447-ERROR) ; Statement: $r17 = <jdk.jfr.internal.LogLevel: jdk.jfr.internal.LogLevel ERROR> 
;(assert (var958_log/979489950 var800 var3388 var2286)) ; Statement: staticinvoke <jdk.jfr.internal.Logger: void log(jdk.jfr.internal.LogTag,jdk.jfr.internal.LogLevel,java.lang.String)>($r18, $r17, r16) 

(declare-const var800!1 var2439)
(declare-const var3388!1 var447)
(declare-const var2286!1 String)
(define-const var923 var3748 var213-jvm) ; Statement: $r19 = <jdk.jfr.internal.Repository: jdk.jfr.internal.JVM jvm> 
(assert true)
;(assert (abort/-1610727241 var923 var2286!1)) ; Statement: virtualinvoke $r19.<jdk.jfr.internal.JVM: void abort(java.lang.String)>(r16) 

(declare-const var923!1 var3748)
(declare-const var2286!2 String)
(define-const var1861 var1168 var1168-init) ; Statement: $r20 = new java.lang.InternalError 
(assert true)
;(assert (<init>/1247810213 var1861 "Could not abort after JFR disk creation error")) ; Statement: specialinvoke $r20.<java.lang.InternalError: void <init>(java.lang.String)>("Could not abort after JFR disk creation error") 

(declare-const var1861!1 var1168)
(declare-const var2705 String)
 ; Statement: throw $r20 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var3342-init=([], java.lang.Object[]), repository/1121014662=([jdk.jfr.internal.Repository], jdk.jfr.internal.SecuritySupport$SafePath), cast-from-var3165-to-var3342=([jdk.jfr.internal.SecuritySupport$SafePath], java.lang.Object), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var984-to-var3376=([java.lang.Exception], java.lang.Throwable), cast-from-String-to-var3342=([java.lang.String], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), var958_log/979489950=([jdk.jfr.internal.LogTag, jdk.jfr.internal.LogLevel, java.lang.String], void), abort/-1610727241=([jdk.jfr.internal.JVM, java.lang.String], void), var1168-init=([], java.lang.InternalError), <init>/1247810213=([java.lang.InternalError, java.lang.String], void)}
; {var213=jdk.jfr.internal.Repository, var1696=r0, var1=java.time.Instant, var3292=r3, var984=java.lang.Exception, var1988=$r12, var3342=java.lang.Object, var3789=$r13, var3165=jdk.jfr.internal.SecuritySupport$SafePath, var798=$r14, var3376=java.lang.Throwable, var668=$r15, var2286=r16, var2439=jdk.jfr.internal.LogTag, var800=$r18, var447=jdk.jfr.internal.LogLevel, var3388=$r17, var958=jdk.jfr.internal.Logger, var3748=jdk.jfr.internal.JVM, var923=$r19, var1168=java.lang.InternalError, var1861=$r20, var2705="Could not abort after JFR disk creation error"}
; {jdk.jfr.internal.Repository=var213, r0=var1696, java.time.Instant=var1, r3=var3292, java.lang.Exception=var984, $r12=var1988, java.lang.Object=var3342, $r13=var3789, jdk.jfr.internal.SecuritySupport$SafePath=var3165, $r14=var798, java.lang.Throwable=var3376, $r15=var668, r16=var2286, jdk.jfr.internal.LogTag=var2439, $r18=var800, jdk.jfr.internal.LogLevel=var447, $r17=var3388, jdk.jfr.internal.Logger=var958, jdk.jfr.internal.JVM=var3748, $r19=var923, java.lang.InternalError=var1168, $r20=var1861, "Could not abort after JFR disk creation error"=var2705}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: jdk.jfr.internal.Repository;	r3 := @parameter0: java.time.Instant;	$r12 := @caughtexception;	$r13 = newarray (java.lang.Object)[2];	$r14 = r0.<jdk.jfr.internal.Repository: jdk.jfr.internal.SecuritySupport$SafePath repository>;	$r13[0] = $r14;	$r15 = virtualinvoke $r12.<java.lang.Exception: java.lang.String getMessage()>();	$r13[1] = $r15;	r16 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Could not create chunk in repository %s, %s", $r13);	$r18 = <jdk.jfr.internal.LogTag: jdk.jfr.internal.LogTag JFR>;	$r17 = <jdk.jfr.internal.LogLevel: jdk.jfr.internal.LogLevel ERROR>;	staticinvoke <jdk.jfr.internal.Logger: void log(jdk.jfr.internal.LogTag,jdk.jfr.internal.LogLevel,java.lang.String)>($r18, $r17, r16);	$r19 = <jdk.jfr.internal.Repository: jdk.jfr.internal.JVM jvm>;	virtualinvoke $r19.<jdk.jfr.internal.JVM: void abort(java.lang.String)>(r16);	$r20 = new java.lang.InternalError;	specialinvoke $r20.<java.lang.InternalError: void <init>(java.lang.String)>("Could not abort after JFR disk creation error");	throw $r20
;block_num 2