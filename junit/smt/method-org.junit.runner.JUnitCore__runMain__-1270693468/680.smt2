(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3943 0)
(declare-sort var1958 0)
(declare-sort var1282 0)
(declare-sort var756 0)
(declare-sort var1700 0)
(declare-sort var2918 0)
(declare-sort var2641 0)
(declare-sort var2572 0)
(declare-sort var1161 0)
(declare-sort var1841 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1958_out/-825151338 (var1958) var1282)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var756_id/-1448154429 () String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var1282 String) void)
(declare-fun var1700_parse/1932792441 ((Array Int String)) var1700)
(declare-fun var2918-init () var2918)
(declare-fun <init>/-1711633529 (var2918 var1958) void)
(declare-fun addListener/-872185087 (var3943 var2641) void)
(declare-fun cast-from-var2918-to-var2641 (var2918) var2641)
(declare-fun var3943_defaultComputer/1611905997 () var2572)
(declare-fun createRequest/624743511 (var1700 var2572) var1161)
(declare-fun run/-1955318889 (var3943 var1161) var1841)
(declare-const null-var3943 var3943)
(declare-const null-var1958 var1958)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var1566 var3943) ; Statement: r10 := @this: org.junit.runner.JUnitCore 
(assert (not (= var1566 null-var3943)))
(declare-const var1430 var1958) ; Statement: r0 := @parameter0: org.junit.internal.JUnitSystem 
(assert (not (= var1430 null-var1958)))
(declare-const var132 (Array Int String)) ; Statement: r7 := @parameter1: java.lang.String[] 
(assert (not (= var132 null-__Array__Int__String__)))
(define-const var1057 var1282 (var1958_out/-825151338 var1430)) ; Statement: $r6 = interfaceinvoke r0.<org.junit.internal.JUnitSystem: java.io.PrintStream out()>() 
(define-const var3459 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3459)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3459!1 String)
(assert (= var3459!1 ""))
(assert true)
(define-const var1299 String (append/672562846 var3459!1 "JUnit version ")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("JUnit version ") 
(declare-const var3459!2 String)
(assert (= var3459!2 (str.++ var3459!1 "JUnit version ")))
(define-const var276 String var756_id/-1448154429) ; Statement: $r2 = staticinvoke <junit.runner.Version: java.lang.String id()>() 
(assert true)
(define-const var2349 String (append/672562846 var1299 var276)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1299!1 String)
(assert (= var1299!1 (str.++ var1299 var276)))
(assert true)
(define-const var3191 String (toString/-2075883882 var2349)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var1057 var3191)) ; Statement: virtualinvoke $r6.<java.io.PrintStream: void println(java.lang.String)>($r5) 

(declare-const var1057!1 var1282)
(declare-const var3191!1 String)
(define-const var634 var1700 (var1700_parse/1932792441 var132)) ; Statement: r8 = staticinvoke <org.junit.runner.JUnitCommandLineParseResult: org.junit.runner.JUnitCommandLineParseResult parse(java.lang.String[])>(r7) 
(define-const var2374 var2918 var2918-init) ; Statement: $r9 = new org.junit.internal.TextListener 
(assert true)
;(assert (<init>/-1711633529 var2374 var1430)) ; Statement: specialinvoke $r9.<org.junit.internal.TextListener: void <init>(org.junit.internal.JUnitSystem)>(r0) 

(declare-const var2374!1 var2918)
(declare-const var1430!1 var1958)
(assert true)
;(assert (addListener/-872185087 var1566 (cast-from-var2918-to-var2641 var2374!1))) ; Statement: virtualinvoke r10.<org.junit.runner.JUnitCore: void addListener(org.junit.runner.notification.RunListener)>($r9) 

(declare-const var1566!1 var3943)
(declare-const var2374!2 var2918)
(define-const var3771 var2572 var3943_defaultComputer/1611905997) ; Statement: $r11 = staticinvoke <org.junit.runner.JUnitCore: org.junit.runner.Computer defaultComputer()>() 
(assert true)
(define-const var1800 var1161 (createRequest/624743511 var634 var3771)) ; Statement: $r12 = virtualinvoke r8.<org.junit.runner.JUnitCommandLineParseResult: org.junit.runner.Request createRequest(org.junit.runner.Computer)>($r11) 
(assert true)
(define-const var164 var1841 (run/-1955318889 var1566!1 var1800)) ; Statement: $r13 = virtualinvoke r10.<org.junit.runner.JUnitCore: org.junit.runner.Result run(org.junit.runner.Request)>($r12) 
 ; Statement: return $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {var1958_out/-825151338=([org.junit.internal.JUnitSystem], java.io.PrintStream), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var756_id/-1448154429=([], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void), var1700_parse/1932792441=([java.lang.String[]], org.junit.runner.JUnitCommandLineParseResult), var2918-init=([], org.junit.internal.TextListener), <init>/-1711633529=([org.junit.internal.TextListener, org.junit.internal.JUnitSystem], void), addListener/-872185087=([org.junit.runner.JUnitCore, org.junit.runner.notification.RunListener], void), cast-from-var2918-to-var2641=([org.junit.internal.TextListener], org.junit.runner.notification.RunListener), var3943_defaultComputer/1611905997=([], org.junit.runner.Computer), createRequest/624743511=([org.junit.runner.JUnitCommandLineParseResult, org.junit.runner.Computer], org.junit.runner.Request), run/-1955318889=([org.junit.runner.JUnitCore, org.junit.runner.Request], org.junit.runner.Result)}
; {var3943=org.junit.runner.JUnitCore, var1566=r10, var1958=org.junit.internal.JUnitSystem, var1430=r0, var132=r7, var1282=java.io.PrintStream, var1057=$r6, var3459=$r1, var1299=$r3, var756=junit.runner.Version, var276=$r2, var2349=$r4, var3191=$r5, var1700=org.junit.runner.JUnitCommandLineParseResult, var634=r8, var2918=org.junit.internal.TextListener, var2374=$r9, var2641=org.junit.runner.notification.RunListener, var2572=org.junit.runner.Computer, var3771=$r11, var1161=org.junit.runner.Request, var1800=$r12, var1841=org.junit.runner.Result, var164=$r13}
; {org.junit.runner.JUnitCore=var3943, r10=var1566, org.junit.internal.JUnitSystem=var1958, r0=var1430, r7=var132, java.io.PrintStream=var1282, $r6=var1057, $r1=var3459, $r3=var1299, junit.runner.Version=var756, $r2=var276, $r4=var2349, $r5=var3191, org.junit.runner.JUnitCommandLineParseResult=var1700, r8=var634, org.junit.internal.TextListener=var2918, $r9=var2374, org.junit.runner.notification.RunListener=var2641, org.junit.runner.Computer=var2572, $r11=var3771, org.junit.runner.Request=var1161, $r12=var1800, org.junit.runner.Result=var1841, $r13=var164}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r10 := @this: org.junit.runner.JUnitCore;	r0 := @parameter0: org.junit.internal.JUnitSystem;	r7 := @parameter1: java.lang.String[];	$r6 = interfaceinvoke r0.<org.junit.internal.JUnitSystem: java.io.PrintStream out()>();	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("JUnit version ");	$r2 = staticinvoke <junit.runner.Version: java.lang.String id()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r6.<java.io.PrintStream: void println(java.lang.String)>($r5);	r8 = staticinvoke <org.junit.runner.JUnitCommandLineParseResult: org.junit.runner.JUnitCommandLineParseResult parse(java.lang.String[])>(r7);	$r9 = new org.junit.internal.TextListener;	specialinvoke $r9.<org.junit.internal.TextListener: void <init>(org.junit.internal.JUnitSystem)>(r0);	virtualinvoke r10.<org.junit.runner.JUnitCore: void addListener(org.junit.runner.notification.RunListener)>($r9);	$r11 = staticinvoke <org.junit.runner.JUnitCore: org.junit.runner.Computer defaultComputer()>();	$r12 = virtualinvoke r8.<org.junit.runner.JUnitCommandLineParseResult: org.junit.runner.Request createRequest(org.junit.runner.Computer)>($r11);	$r13 = virtualinvoke r10.<org.junit.runner.JUnitCore: org.junit.runner.Result run(org.junit.runner.Request)>($r12);	return $r13
;block_num 1