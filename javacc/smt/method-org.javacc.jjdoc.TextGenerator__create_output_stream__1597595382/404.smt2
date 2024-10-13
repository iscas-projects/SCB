(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3349 0)
(declare-sort var2322 0)
(declare-sort var2199 0)
(declare-sort var2671 0)
(declare-sort var3254 0)
(declare-sort var2594 0)
(declare-sort var2531 0)
(declare-sort var456 0)
(declare-sort var3170 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2322_getOutputFile/-943424739 () String)
(declare-fun var2671-init () var2671)
(declare-fun var3254-init () var3254)
(declare-fun <init>/-1119342706 (var3254 var456) void)
(declare-fun cast-from-var2594-to-var456 (var2594) var456)
(declare-fun <init>/-1864438596 (var2671 var3170) void)
(declare-fun cast-from-var3254-to-var3170 (var3254) var3170)
(declare-const null-var3349 var3349)
(declare-const var2199-input_file String)
(declare-const var2531-out var2594)
(declare-const var3458 var3349) ; Statement: r2 := @this: org.javacc.jjdoc.TextGenerator 
(assert (not (= var3458 null-var3349)))
(define-const var1394 String var2322_getOutputFile/-943424739) ; Statement: $r0 = staticinvoke <org.javacc.jjdoc.JJDocOptions: java.lang.String getOutputFile()>() 
(assert true)
(define-const var2428 Bool (= var1394 "")) ; Statement: $z0 = virtualinvoke $r0.<java.lang.String: boolean equals(java.lang.Object)>("") 
 ; Statement: if $z0 == 0 goto $r1 = staticinvoke <org.javacc.jjdoc.JJDocOptions: java.lang.String getOutputFile()>() 
(assert (not (= (ite var2428 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2374 String var2199-input_file) ; Statement: $r7 = <org.javacc.jjdoc.JJDocGlobals: java.lang.String input_file> 
(assert true)
(define-const var2401 Bool (= var2374 "standard input")) ; Statement: $z1 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>("standard input") 
 ; Statement: if $z1 == 0 goto r39 = ".html" 
(assert (not (= (ite var2401 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var1908 var2671 var2671-init) ; Statement: $r46 = new java.io.PrintWriter 
(define-const var3987 var3254 var3254-init) ; Statement: $r45 = new java.io.OutputStreamWriter 
(define-const var2270 var2594 var2531-out) ; Statement: $r28 = <java.lang.System: java.io.PrintStream out> 
(assert true)
;(assert (<init>/-1119342706 var3987 (cast-from-var2594-to-var456 var2270))) ; Statement: specialinvoke $r45.<java.io.OutputStreamWriter: void <init>(java.io.OutputStream)>($r28) 

(declare-const var3987!1 var3254)
(declare-const var2270!1 var2594)
(assert true)
;(assert (<init>/-1864438596 var1908 (cast-from-var3254-to-var3170 var3987!1))) ; Statement: specialinvoke $r46.<java.io.PrintWriter: void <init>(java.io.Writer)>($r45) 

(declare-const var1908!1 var2671)
(declare-const var3987!2 var3254)
 ; Statement: return $r46 
(check-sat)
(get-model)
(get-unsat-core)
; {var2322_getOutputFile/-943424739=([], java.lang.String), var2671-init=([], java.io.PrintWriter), var3254-init=([], java.io.OutputStreamWriter), <init>/-1119342706=([java.io.OutputStreamWriter, java.io.OutputStream], void), cast-from-var2594-to-var456=([java.io.PrintStream], java.io.OutputStream), <init>/-1864438596=([java.io.PrintWriter, java.io.Writer], void), cast-from-var3254-to-var3170=([java.io.OutputStreamWriter], java.io.Writer)}
; {var3349=org.javacc.jjdoc.TextGenerator, var3458=r2, var2322=org.javacc.jjdoc.JJDocOptions, var1394=$r0, var2428=$z0, var2199=org.javacc.jjdoc.JJDocGlobals, var2374=$r7, var2401=$z1, var2671=java.io.PrintWriter, var1908=$r46, var3254=java.io.OutputStreamWriter, var3987=$r45, var2594=java.io.PrintStream, var2531=java.lang.System, var2270=$r28, var456=java.io.OutputStream, var3170=java.io.Writer}
; {org.javacc.jjdoc.TextGenerator=var3349, r2=var3458, org.javacc.jjdoc.JJDocOptions=var2322, $r0=var1394, $z0=var2428, org.javacc.jjdoc.JJDocGlobals=var2199, $r7=var2374, $z1=var2401, java.io.PrintWriter=var2671, $r46=var1908, java.io.OutputStreamWriter=var3254, $r45=var3987, java.io.PrintStream=var2594, java.lang.System=var2531, $r28=var2270, java.io.OutputStream=var456, java.io.Writer=var3170}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 2}
;stmts r2 := @this: org.javacc.jjdoc.TextGenerator;	$r0 = staticinvoke <org.javacc.jjdoc.JJDocOptions: java.lang.String getOutputFile()>();	$z0 = virtualinvoke $r0.<java.lang.String: boolean equals(java.lang.Object)>("");	if $z0 == 0 goto $r1 = staticinvoke <org.javacc.jjdoc.JJDocOptions: java.lang.String getOutputFile()>();	$r7 = <org.javacc.jjdoc.JJDocGlobals: java.lang.String input_file>;	$z1 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>("standard input");	if $z1 == 0 goto r39 = ".html";	$r46 = new java.io.PrintWriter;	$r45 = new java.io.OutputStreamWriter;	$r28 = <java.lang.System: java.io.PrintStream out>;	specialinvoke $r45.<java.io.OutputStreamWriter: void <init>(java.io.OutputStream)>($r28);	specialinvoke $r46.<java.io.PrintWriter: void <init>(java.io.Writer)>($r45);	return $r46
;block_num 3