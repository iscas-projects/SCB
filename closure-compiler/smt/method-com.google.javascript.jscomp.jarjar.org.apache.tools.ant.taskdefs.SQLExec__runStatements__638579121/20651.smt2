(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var981 0)
(declare-sort var842 0)
(declare-sort var264 0)
(declare-sort var2778 0)
(declare-sort var2153 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(declare-fun var2778-init () var2778)
(declare-fun <init>/30097470 (var2778 var842) void)
(declare-fun readLine/150542008 (var2778) String)
(declare-fun length/-1112840705 (String) Int)
(declare-const null-var981 var981)
(declare-const null-var842 var842)
(declare-const null-var264 var264)
(declare-const null-String String)
(declare-const var2800 var981) ; Statement: r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SQLExec 
(assert (not (= var2800 null-var981)))
(declare-const var2274 var842) ; Statement: r2 := @parameter0: java.io.Reader 
(assert (not (= var2274 null-var842)))
(declare-const var173 var264) ; Statement: r4 := @parameter1: java.io.PrintStream 
(assert (not (= var173 null-var264)))
(define-const var2666 String String-init) ; Statement: $r15 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var2666)) ; Statement: specialinvoke $r15.<java.lang.StringBuffer: void <init>()>() 

(declare-const var2666!1 String)
(define-const var3310 var2778 var2778-init) ; Statement: $r16 = new java.io.BufferedReader 
(assert true)
;(assert (<init>/30097470 var3310 var2274)) ; Statement: specialinvoke $r16.<java.io.BufferedReader: void <init>(java.io.Reader)>(r2) 

(declare-const var3310!1 var2778)
(declare-const var2274!1 var842)
(assert true) ; Non Conditional
(assert true)
(define-const var1185 String (readLine/150542008 var3310!1)) ; Statement: $r12 = virtualinvoke $r16.<java.io.BufferedReader: java.lang.String readLine()>() 
(define-const var2719 String var1185) ; Statement: r13 = $r12 
 ; Statement: if $r12 == null goto $i0 = virtualinvoke $r15.<java.lang.StringBuffer: int length()>() 
(assert (= var1185 null-String)) ; Cond: $r12 == null 
(assert true)
(define-const var1166 Int (length/-1112840705 var2666!1)) ; Statement: $i0 = virtualinvoke $r15.<java.lang.StringBuffer: int length()>() 
 ; Statement: if $i0 <= 0 goto return 
(assert (<= var1166 0)) ; Cond: $i0 <= 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), var2778-init=([], java.io.BufferedReader), <init>/30097470=([java.io.BufferedReader, java.io.Reader], void), readLine/150542008=([java.io.BufferedReader], java.lang.String), length/-1112840705=([java.lang.StringBuffer], int)}
; {var981=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SQLExec, var2800=r3, var842=java.io.Reader, var2274=r2, var264=java.io.PrintStream, var173=r4, var2666=$r15, var2778=java.io.BufferedReader, var3310=$r16, var1185=$r12, var2719=r13, var2153=null_type, var1166=$i0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SQLExec=var981, r3=var2800, java.io.Reader=var842, r2=var2274, java.io.PrintStream=var264, r4=var173, $r15=var2666, java.io.BufferedReader=var2778, $r16=var3310, $r12=var1185, r13=var2719, null_type=var2153, $i0=var1166}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: int length()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: int length()>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SQLExec;	r2 := @parameter0: java.io.Reader;	r4 := @parameter1: java.io.PrintStream;	$r15 = new java.lang.StringBuffer;	specialinvoke $r15.<java.lang.StringBuffer: void <init>()>();	$r16 = new java.io.BufferedReader;	specialinvoke $r16.<java.io.BufferedReader: void <init>(java.io.Reader)>(r2);	$r12 = virtualinvoke $r16.<java.io.BufferedReader: java.lang.String readLine()>();	r13 = $r12;	if $r12 == null goto $i0 = virtualinvoke $r15.<java.lang.StringBuffer: int length()>();	$i0 = virtualinvoke $r15.<java.lang.StringBuffer: int length()>();	if $i0 <= 0 goto return;	return
;block_num 4