(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var295 0)
(declare-sort var3599 0)
(declare-sort var1851 0)
(declare-sort var1958 0)
(declare-sort var2981 0)
(declare-sort var3261 0)
(declare-sort var1150 0)
(declare-sort var1429 0)
(declare-sort var2014 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3599_getOutputFile/-943424739 () String)
(declare-fun var1958-init () var1958)
(declare-fun var2981-init () var2981)
(declare-fun <init>/-1119342706 (var2981 var1429) void)
(declare-fun cast-from-var3261-to-var1429 (var3261) var1429)
(declare-fun <init>/-1864438596 (var1958 var2014) void)
(declare-fun cast-from-var2981-to-var2014 (var2981) var2014)
(declare-const null-var295 var295)
(declare-const var1851-input_file String)
(declare-const var1150-out var3261)
(declare-const var170 var295) ; Statement: r2 := @this: org.javacc.jjdoc.BNFGenerator 
(assert (not (= var170 null-var295)))
(define-const var3667 String var3599_getOutputFile/-943424739) ; Statement: $r0 = staticinvoke <org.javacc.jjdoc.JJDocOptions: java.lang.String getOutputFile()>() 
(assert true)
(define-const var3188 Bool (= var3667 "")) ; Statement: $z0 = virtualinvoke $r0.<java.lang.String: boolean equals(java.lang.Object)>("") 
 ; Statement: if $z0 == 0 goto $r1 = staticinvoke <org.javacc.jjdoc.JJDocOptions: java.lang.String getOutputFile()>() 
(assert (not (= (ite var3188 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2734 String var1851-input_file) ; Statement: $r7 = <org.javacc.jjdoc.JJDocGlobals: java.lang.String input_file> 
(assert true)
(define-const var1325 Bool (= var2734 "standard input")) ; Statement: $z1 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>("standard input") 
 ; Statement: if $z1 == 0 goto $r8 = <org.javacc.jjdoc.JJDocGlobals: java.lang.String input_file> 
(assert (not (= (ite var1325 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var66 var1958 var1958-init) ; Statement: $r41 = new java.io.PrintWriter 
(define-const var1176 var2981 var2981-init) ; Statement: $r40 = new java.io.OutputStreamWriter 
(define-const var1993 var3261 var1150-out) ; Statement: $r29 = <java.lang.System: java.io.PrintStream out> 
(assert true)
;(assert (<init>/-1119342706 var1176 (cast-from-var3261-to-var1429 var1993))) ; Statement: specialinvoke $r40.<java.io.OutputStreamWriter: void <init>(java.io.OutputStream)>($r29) 

(declare-const var1176!1 var2981)
(declare-const var1993!1 var3261)
(assert true)
;(assert (<init>/-1864438596 var66 (cast-from-var2981-to-var2014 var1176!1))) ; Statement: specialinvoke $r41.<java.io.PrintWriter: void <init>(java.io.Writer)>($r40) 

(declare-const var66!1 var1958)
(declare-const var1176!2 var2981)
 ; Statement: return $r41 
(check-sat)
(get-model)
(get-unsat-core)
; {var3599_getOutputFile/-943424739=([], java.lang.String), var1958-init=([], java.io.PrintWriter), var2981-init=([], java.io.OutputStreamWriter), <init>/-1119342706=([java.io.OutputStreamWriter, java.io.OutputStream], void), cast-from-var3261-to-var1429=([java.io.PrintStream], java.io.OutputStream), <init>/-1864438596=([java.io.PrintWriter, java.io.Writer], void), cast-from-var2981-to-var2014=([java.io.OutputStreamWriter], java.io.Writer)}
; {var295=org.javacc.jjdoc.BNFGenerator, var170=r2, var3599=org.javacc.jjdoc.JJDocOptions, var3667=$r0, var3188=$z0, var1851=org.javacc.jjdoc.JJDocGlobals, var2734=$r7, var1325=$z1, var1958=java.io.PrintWriter, var66=$r41, var2981=java.io.OutputStreamWriter, var1176=$r40, var3261=java.io.PrintStream, var1150=java.lang.System, var1993=$r29, var1429=java.io.OutputStream, var2014=java.io.Writer}
; {org.javacc.jjdoc.BNFGenerator=var295, r2=var170, org.javacc.jjdoc.JJDocOptions=var3599, $r0=var3667, $z0=var3188, org.javacc.jjdoc.JJDocGlobals=var1851, $r7=var2734, $z1=var1325, java.io.PrintWriter=var1958, $r41=var66, java.io.OutputStreamWriter=var2981, $r40=var1176, java.io.PrintStream=var3261, java.lang.System=var1150, $r29=var1993, java.io.OutputStream=var1429, java.io.Writer=var2014}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 2}
;stmts r2 := @this: org.javacc.jjdoc.BNFGenerator;	$r0 = staticinvoke <org.javacc.jjdoc.JJDocOptions: java.lang.String getOutputFile()>();	$z0 = virtualinvoke $r0.<java.lang.String: boolean equals(java.lang.Object)>("");	if $z0 == 0 goto $r1 = staticinvoke <org.javacc.jjdoc.JJDocOptions: java.lang.String getOutputFile()>();	$r7 = <org.javacc.jjdoc.JJDocGlobals: java.lang.String input_file>;	$z1 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>("standard input");	if $z1 == 0 goto $r8 = <org.javacc.jjdoc.JJDocGlobals: java.lang.String input_file>;	$r41 = new java.io.PrintWriter;	$r40 = new java.io.OutputStreamWriter;	$r29 = <java.lang.System: java.io.PrintStream out>;	specialinvoke $r40.<java.io.OutputStreamWriter: void <init>(java.io.OutputStream)>($r29);	specialinvoke $r41.<java.io.PrintWriter: void <init>(java.io.Writer)>($r40);	return $r41
;block_num 3