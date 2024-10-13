(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var26 0)
(declare-sort var102 0)
(declare-sort var3009 0)
(declare-sort var413 0)
(declare-sort var2921 0)
(declare-sort var2691 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun this$0/-1828164625 (var26) var102)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun file/-884741558 (var102) var2691)
(declare-fun getAbsolutePath/-802773300 (var2691) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var413 String) void)
(declare-const null-var26 var26)
(declare-const null-var3009 var3009)
(declare-const var2921-err var413)
(declare-const var326 var26) ; Statement: r0 := @this: org.javacc.parser.OutputFile$TrapClosePrintWriter 
(assert (not (= var326 null-var26)))
(define-const var181 var102 (this$0/-1828164625 var326)) ; Statement: $r1 = r0.<org.javacc.parser.OutputFile$TrapClosePrintWriter: org.javacc.parser.OutputFile this$0> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1457 var3009) ; Statement: $r2 := @caughtexception 
(assert (not (= var1457 null-var3009)))
(define-const var3561 var413 var2921-err) ; Statement: $r4 = <java.lang.System: java.io.PrintStream err> 
(define-const var479 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var479)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var479!1 String)
(assert (= var479!1 ""))
(assert true)
(define-const var1692 String (append/672562846 var479!1 "Could not close ")) ; Statement: $r8 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not close ") 
(declare-const var479!2 String)
(assert (= var479!2 (str.++ var479!1 "Could not close ")))
(define-const var851 var102 (this$0/-1828164625 var326)) ; Statement: $r5 = r0.<org.javacc.parser.OutputFile$TrapClosePrintWriter: org.javacc.parser.OutputFile this$0> 
(define-const var1501 var2691 (file/-884741558 var851)) ; Statement: $r6 = $r5.<org.javacc.parser.OutputFile: java.io.File file> 
(assert true)
(define-const var72 String (getAbsolutePath/-802773300 var1501)) ; Statement: $r7 = virtualinvoke $r6.<java.io.File: java.lang.String getAbsolutePath()>() 
(assert true)
(define-const var3134 String (append/672562846 var1692 var72)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var1692!1 String)
(assert (= var1692!1 (str.++ var1692 var72)))
(assert true)
(define-const var1152 String (toString/-2075883882 var3134)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var3561 var1152)) ; Statement: virtualinvoke $r4.<java.io.PrintStream: void println(java.lang.String)>($r10) 

(declare-const var3561!1 var413)
(declare-const var1152!1 String)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {this$0/-1828164625=([org.javacc.parser.OutputFile$TrapClosePrintWriter], org.javacc.parser.OutputFile), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), file/-884741558=([org.javacc.parser.OutputFile], java.io.File), getAbsolutePath/-802773300=([java.io.File], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void)}
; {var26=org.javacc.parser.OutputFile$TrapClosePrintWriter, var326=r0, var102=org.javacc.parser.OutputFile, var181=$r1, var3009=java.io.IOException, var1457=$r2, var413=java.io.PrintStream, var2921=java.lang.System, var3561=$r4, var479=$r3, var1692=$r8, var851=$r5, var2691=java.io.File, var1501=$r6, var72=$r7, var3134=$r9, var1152=$r10}
; {org.javacc.parser.OutputFile$TrapClosePrintWriter=var26, r0=var326, org.javacc.parser.OutputFile=var102, $r1=var181, java.io.IOException=var3009, $r2=var1457, java.io.PrintStream=var413, java.lang.System=var2921, $r4=var3561, $r3=var479, $r8=var1692, $r5=var851, java.io.File=var2691, $r6=var1501, $r7=var72, $r9=var3134, $r10=var1152}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.javacc.parser.OutputFile$TrapClosePrintWriter;	$r1 = r0.<org.javacc.parser.OutputFile$TrapClosePrintWriter: org.javacc.parser.OutputFile this$0>;	$r2 := @caughtexception;	$r4 = <java.lang.System: java.io.PrintStream err>;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not close ");	$r5 = r0.<org.javacc.parser.OutputFile$TrapClosePrintWriter: org.javacc.parser.OutputFile this$0>;	$r6 = $r5.<org.javacc.parser.OutputFile: java.io.File file>;	$r7 = virtualinvoke $r6.<java.io.File: java.lang.String getAbsolutePath()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r4.<java.io.PrintStream: void println(java.lang.String)>($r10);	return
;block_num 3