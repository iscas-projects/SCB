(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2927 0)
(declare-sort var1427 0)
(declare-sort var1000 0)
(declare-sort var2058 0)
(declare-sort var977 0)
(declare-sort var758 0)
(declare-sort var3644 0)
(declare-sort var366 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var3644!class ClassObject)
(declare-fun request/612575476 (var2927) var1427)
(declare-fun var2058-init () var2058)
(declare-fun var977-init () var977)
(declare-fun arr-var758-init () (Array Int var758))
(declare-fun fFilter/612575476 (var2927) var3644)
(declare-fun describe/-1732091346 (var3644) String)
(declare-fun cast-from-String-to-var758 (String) var758)
(declare-fun toString/-522406933 (var758) String)
(declare-fun cast-from-var1427-to-var758 (var1427) var758)
(declare-fun String_format/1339386452 (String (Array Int var758)) String)
(declare-fun <init>/-8765015 (var977 String) void)
(declare-fun <init>/1880251901 (var2058 ClassObject var366) void)
(declare-fun cast-from-var977-to-var366 (var977) var366)
(declare-const null-var2927 var2927)
(declare-const null-var1000 var1000)
(declare-const null-__Array__Int__var758__ (Array Int var758))
(declare-const var1936 var2927) ; Statement: r0 := @this: org.junit.internal.requests.FilterRequest 
(assert (not (= var1936 null-var2927)))
(define-const var2900 var1427 (request/612575476 var1936)) ; Statement: $r1 = r0.<org.junit.internal.requests.FilterRequest: org.junit.runner.Request request> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1574 var1000) ; Statement: $r3 := @caughtexception 
(assert (not (= var1574 null-var1000)))
(define-const var3433 var2058 var2058-init) ; Statement: $r4 = new org.junit.internal.runners.ErrorReportingRunner 
(define-const var1247 var977 var977-init) ; Statement: $r5 = new java.lang.Exception 
(define-const var1307 (Array Int var758) arr-var758-init) ; Statement: $r6 = newarray (java.lang.Object)[2] 
(define-const var2130 var3644 (fFilter/612575476 var1936)) ; Statement: $r7 = r0.<org.junit.internal.requests.FilterRequest: org.junit.runner.manipulation.Filter fFilter> 
(assert true)
(define-const var1482 String (describe/-1732091346 var2130)) ; Statement: $r8 = virtualinvoke $r7.<org.junit.runner.manipulation.Filter: java.lang.String describe()>() 
(declare-const var1307!1 (Array Int var758))
(assert (not (= var1307!1 null-__Array__Int__var758__)))
(assert (= (select var1307!1 0) (cast-from-String-to-var758 var1482))) ; Statement: $r6[0] = $r8 
(define-const var2358 var1427 (request/612575476 var1936)) ; Statement: $r9 = r0.<org.junit.internal.requests.FilterRequest: org.junit.runner.Request request> 
(assert true)
(define-const var3533 String (toString/-522406933 (cast-from-var1427-to-var758 var2358))) ; Statement: $r10 = virtualinvoke $r9.<java.lang.Object: java.lang.String toString()>() 
(declare-const var1307!2 (Array Int var758))
(assert (not (= var1307!2 null-__Array__Int__var758__)))
(assert (= (select var1307!2 1) (cast-from-String-to-var758 var3533))) ; Statement: $r6[1] = $r10 
(define-const var2339 String (String_format/1339386452 "No tests found matching %s from %s" var1307!2)) ; Statement: $r11 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("No tests found matching %s from %s", $r6) 
(assert true)
;(assert (<init>/-8765015 var1247 var2339)) ; Statement: specialinvoke $r5.<java.lang.Exception: void <init>(java.lang.String)>($r11) 

(declare-const var1247!1 var977)
(declare-const var2339!1 String)
(assert true)
;(assert (<init>/1880251901 var3433 var3644!class (cast-from-var977-to-var366 var1247!1))) ; Statement: specialinvoke $r4.<org.junit.internal.runners.ErrorReportingRunner: void <init>(java.lang.Class,java.lang.Throwable)>(class "Lorg/junit/runner/manipulation/Filter;", $r5) 

(declare-const var3433!1 var2058)
(declare-const var643 ClassObject)
(declare-const var1247!2 var977)
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {request/612575476=([org.junit.internal.requests.FilterRequest], org.junit.runner.Request), var2058-init=([], org.junit.internal.runners.ErrorReportingRunner), var977-init=([], java.lang.Exception), arr-var758-init=([], java.lang.Object[]), fFilter/612575476=([org.junit.internal.requests.FilterRequest], org.junit.runner.manipulation.Filter), describe/-1732091346=([org.junit.runner.manipulation.Filter], java.lang.String), cast-from-String-to-var758=([java.lang.String], java.lang.Object), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-var1427-to-var758=([org.junit.runner.Request], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/-8765015=([java.lang.Exception, java.lang.String], void), <init>/1880251901=([org.junit.internal.runners.ErrorReportingRunner, java.lang.Class, java.lang.Throwable], void), cast-from-var977-to-var366=([java.lang.Exception], java.lang.Throwable)}
; {var2927=org.junit.internal.requests.FilterRequest, var1936=r0, var1427=org.junit.runner.Request, var2900=$r1, var1000=org.junit.runner.manipulation.NoTestsRemainException, var1574=$r3, var2058=org.junit.internal.runners.ErrorReportingRunner, var3433=$r4, var977=java.lang.Exception, var1247=$r5, var758=java.lang.Object, var1307=$r6, var3644=org.junit.runner.manipulation.Filter, var2130=$r7, var1482=$r8, var2358=$r9, var3533=$r10, var2339=$r11, var366=java.lang.Throwable, var643=class "Lorg/junit/runner/manipulation/Filter;"}
; {org.junit.internal.requests.FilterRequest=var2927, r0=var1936, org.junit.runner.Request=var1427, $r1=var2900, org.junit.runner.manipulation.NoTestsRemainException=var1000, $r3=var1574, org.junit.internal.runners.ErrorReportingRunner=var2058, $r4=var3433, java.lang.Exception=var977, $r5=var1247, java.lang.Object=var758, $r6=var1307, org.junit.runner.manipulation.Filter=var3644, $r7=var2130, $r8=var1482, $r9=var2358, $r10=var3533, $r11=var2339, java.lang.Throwable=var366, class "Lorg/junit/runner/manipulation/Filter;"=var643}
;seq <java.lang.Object: java.lang.String toString()>;	<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.junit.internal.requests.FilterRequest;	$r1 = r0.<org.junit.internal.requests.FilterRequest: org.junit.runner.Request request>;	$r3 := @caughtexception;	$r4 = new org.junit.internal.runners.ErrorReportingRunner;	$r5 = new java.lang.Exception;	$r6 = newarray (java.lang.Object)[2];	$r7 = r0.<org.junit.internal.requests.FilterRequest: org.junit.runner.manipulation.Filter fFilter>;	$r8 = virtualinvoke $r7.<org.junit.runner.manipulation.Filter: java.lang.String describe()>();	$r6[0] = $r8;	$r9 = r0.<org.junit.internal.requests.FilterRequest: org.junit.runner.Request request>;	$r10 = virtualinvoke $r9.<java.lang.Object: java.lang.String toString()>();	$r6[1] = $r10;	$r11 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("No tests found matching %s from %s", $r6);	specialinvoke $r5.<java.lang.Exception: void <init>(java.lang.String)>($r11);	specialinvoke $r4.<org.junit.internal.runners.ErrorReportingRunner: void <init>(java.lang.Class,java.lang.Throwable)>(class "Lorg/junit/runner/manipulation/Filter;", $r5);	return $r4
;block_num 2