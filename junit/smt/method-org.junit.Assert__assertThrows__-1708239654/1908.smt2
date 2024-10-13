(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var263 0)
(declare-sort var1754 0)
(declare-sort var416 0)
(declare-sort var2026 0)
(declare-sort var1939 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1754_run/395733135 (var1754) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var416_buildPrefix/-2074822357 (String) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun arr-var2026-init () (Array Int var2026))
(declare-fun var416_formatClass/-46750007 (ClassObject) String)
(declare-fun cast-from-String-to-var2026 (String) var2026)
(declare-fun String_format/1339386452 (String (Array Int var2026)) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1939-init () var1939)
(declare-fun <init>/582965326 (var1939 var2026) void)
(declare-const null-String String)
(declare-const null-ClassObject ClassObject)
(declare-const null-var1754 var1754)
(declare-const null-__Array__Int__var2026__ (Array Int var2026))
(declare-const var59 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var59 null-String)))
(declare-const var3098 ClassObject) ; Statement: r5 := @parameter1: java.lang.Class 
(assert (not (= var3098 null-ClassObject)))
(declare-const var960 var1754) ; Statement: r0 := @parameter2: org.junit.function.ThrowingRunnable 
(assert (not (= var960 null-var1754)))
(assert true) ; Non Conditional
;(assert (var1754_run/395733135 var960)) ; Statement: interfaceinvoke r0.<org.junit.function.ThrowingRunnable: void run()>() 

(declare-const var960!1 var1754)
(assert true) ; Non Conditional
 ; Statement: goto [?= $r1 = new java.lang.StringBuilder] 
(assert true) ; Non Conditional
(define-const var2081 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2081)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2081!1 String)
(assert (= var2081!1 ""))
(define-const var855 String (var416_buildPrefix/-2074822357 var59)) ; Statement: $r3 = staticinvoke <org.junit.Assert: java.lang.String buildPrefix(java.lang.String)>(r2) 
(assert true)
(define-const var2290 String (append/672562846 var2081!1 var855)) ; Statement: $r8 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2081!2 String)
(assert (= var2081!2 (str.++ var2081!1 var855)))
(define-const var2743 (Array Int var2026) arr-var2026-init) ; Statement: $r4 = newarray (java.lang.Object)[1] 
(define-const var2330 String (var416_formatClass/-46750007 var3098)) ; Statement: $r6 = staticinvoke <org.junit.Assert: java.lang.String formatClass(java.lang.Class)>(r5) 
(declare-const var2743!1 (Array Int var2026))
(assert (not (= var2743!1 null-__Array__Int__var2026__)))
(assert (= (select var2743!1 0) (cast-from-String-to-var2026 var2330))) ; Statement: $r4[0] = $r6 
(define-const var2977 String (String_format/1339386452 "expected %s to be thrown, but nothing was thrown" var2743!1)) ; Statement: $r7 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("expected %s to be thrown, but nothing was thrown", $r4) 
(assert true)
(define-const var155 String (append/672562846 var2290 var2977)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var2290!1 String)
(assert (= var2290!1 (str.++ var2290 var2977)))
(assert true)
(define-const var821 String (toString/-2075883882 var155)) ; Statement: r32 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2660 var1939 var1939-init) ; Statement: $r10 = new java.lang.AssertionError 
(assert true)
;(assert (<init>/582965326 var2660 (cast-from-String-to-var2026 var821))) ; Statement: specialinvoke $r10.<java.lang.AssertionError: void <init>(java.lang.Object)>(r32) 

(declare-const var2660!1 var1939)
(declare-const var821!1 String)
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {var1754_run/395733135=([org.junit.function.ThrowingRunnable], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var416_buildPrefix/-2074822357=([java.lang.String], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), arr-var2026-init=([], java.lang.Object[]), var416_formatClass/-46750007=([java.lang.Class], java.lang.String), cast-from-String-to-var2026=([java.lang.String], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1939-init=([], java.lang.AssertionError), <init>/582965326=([java.lang.AssertionError, java.lang.Object], void)}
; {var59=r2, var263=null_type, var3098=r5, var1754=org.junit.function.ThrowingRunnable, var960=r0, var2081=$r1, var416=org.junit.Assert, var855=$r3, var2290=$r8, var2026=java.lang.Object, var2743=$r4, var2330=$r6, var2977=$r7, var155=$r9, var821=r32, var1939=java.lang.AssertionError, var2660=$r10}
; {r2=var59, null_type=var263, r5=var3098, org.junit.function.ThrowingRunnable=var1754, r0=var960, $r1=var2081, org.junit.Assert=var416, $r3=var855, $r8=var2290, java.lang.Object=var2026, $r4=var2743, $r6=var2330, $r7=var2977, $r9=var155, r32=var821, java.lang.AssertionError=var1939, $r10=var2660}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @parameter0: java.lang.String;	r5 := @parameter1: java.lang.Class;	r0 := @parameter2: org.junit.function.ThrowingRunnable;	interfaceinvoke r0.<org.junit.function.ThrowingRunnable: void run()>();	goto [?= $r1 = new java.lang.StringBuilder];	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = staticinvoke <org.junit.Assert: java.lang.String buildPrefix(java.lang.String)>(r2);	$r8 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r4 = newarray (java.lang.Object)[1];	$r6 = staticinvoke <org.junit.Assert: java.lang.String formatClass(java.lang.Class)>(r5);	$r4[0] = $r6;	$r7 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("expected %s to be thrown, but nothing was thrown", $r4);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	r32 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	$r10 = new java.lang.AssertionError;	specialinvoke $r10.<java.lang.AssertionError: void <init>(java.lang.Object)>(r32);	throw $r10
;block_num 4