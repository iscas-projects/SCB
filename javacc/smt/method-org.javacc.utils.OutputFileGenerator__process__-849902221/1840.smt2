(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2365 0)
(declare-sort var431 0)
(declare-sort var3648 0)
(declare-sort var3486 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun peekLine/2102330122 (var2365 var431) String)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun flush/-1073200041 (var3648) void)
(declare-const null-var2365 var2365)
(declare-const null-var431 var431)
(declare-const null-var3648 var3648)
(declare-const null-Bool Bool)
(declare-const null-String String)
(declare-const var2135 var2365) ; Statement: r0 := @this: org.javacc.utils.OutputFileGenerator 
(assert (not (= var2135 null-var2365)))
(declare-const var60 var431) ; Statement: r1 := @parameter0: java.io.BufferedReader 
(assert (not (= var60 null-var431)))
(declare-const var1745 var3648) ; Statement: r2 := @parameter1: java.io.PrintWriter 
(assert (not (= var1745 null-var3648)))
(declare-const var913 Bool) ; Statement: z2 := @parameter2: boolean 
(assert (not (= var913 null-Bool)))
(assert true) ; Non Conditional
(assert true)
(define-const var2292 String (peekLine/2102330122 var2135 var60)) ; Statement: $r8 = specialinvoke r0.<org.javacc.utils.OutputFileGenerator: java.lang.String peekLine(java.io.BufferedReader)>(r1) 
 ; Statement: if $r8 == null goto virtualinvoke r2.<java.io.PrintWriter: void flush()>() 
(assert (not (= var2292 null-String))) ; Negate: Cond: $r8 == null  
(assert true)
(define-const var342 String (peekLine/2102330122 var2135 var60)) ; Statement: $r3 = specialinvoke r0.<org.javacc.utils.OutputFileGenerator: java.lang.String peekLine(java.io.BufferedReader)>(r1) 
(assert true)
(define-const var3392 String (trim/-847153721 var342)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.String: java.lang.String trim()>() 
(assert true)
(define-const var582 Bool (startsWith/-1785782452 var3392 "#if")) ; Statement: $z0 = virtualinvoke $r4.<java.lang.String: boolean startsWith(java.lang.String)>("#if") 
 ; Statement: if $z0 == 0 goto $r5 = specialinvoke r0.<org.javacc.utils.OutputFileGenerator: java.lang.String peekLine(java.io.BufferedReader)>(r1) 
(assert (= (ite var582 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var1346 String (peekLine/2102330122 var2135 var60)) ; Statement: $r5 = specialinvoke r0.<org.javacc.utils.OutputFileGenerator: java.lang.String peekLine(java.io.BufferedReader)>(r1) 
(assert true)
(define-const var3645 String (trim/-847153721 var1346)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.String: java.lang.String trim()>() 
(assert true)
(define-const var3851 Bool (startsWith/-1785782452 var3645 "#")) ; Statement: $z1 = virtualinvoke $r6.<java.lang.String: boolean startsWith(java.lang.String)>("#") 
 ; Statement: if $z1 == 0 goto r7 = specialinvoke r0.<org.javacc.utils.OutputFileGenerator: java.lang.String getLine(java.io.BufferedReader)>(r1) 
(assert (not (= (ite var3851 1 0) 0))) ; Negate: Cond: $z1 == 0  
 ; Statement: goto [?= virtualinvoke r2.<java.io.PrintWriter: void flush()>()] 
(assert true) ; Non Conditional
(assert true)
;(assert (flush/-1073200041 var1745)) ; Statement: virtualinvoke r2.<java.io.PrintWriter: void flush()>() 

(declare-const var1745!1 var3648)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {peekLine/2102330122=([org.javacc.utils.OutputFileGenerator, java.io.BufferedReader], java.lang.String), trim/-847153721=([java.lang.String], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), flush/-1073200041=([java.io.PrintWriter], void)}
; {var2365=org.javacc.utils.OutputFileGenerator, var2135=r0, var431=java.io.BufferedReader, var60=r1, var3648=java.io.PrintWriter, var1745=r2, var913=z2, var2292=$r8, var3486=null_type, var342=$r3, var3392=$r4, var582=$z0, var1346=$r5, var3645=$r6, var3851=$z1}
; {org.javacc.utils.OutputFileGenerator=var2365, r0=var2135, java.io.BufferedReader=var431, r1=var60, java.io.PrintWriter=var3648, r2=var1745, z2=var913, $r8=var2292, null_type=var3486, $r3=var342, $r4=var3392, $z0=var582, $r5=var1346, $r6=var3645, $z1=var3851}
;seq <java.lang.String: java.lang.String trim()>;	<java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: java.lang.String trim()>;	<java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String trim()>": 2,"<java.lang.String: boolean startsWith(java.lang.String)>": 2}
;stmts r0 := @this: org.javacc.utils.OutputFileGenerator;	r1 := @parameter0: java.io.BufferedReader;	r2 := @parameter1: java.io.PrintWriter;	z2 := @parameter2: boolean;	$r8 = specialinvoke r0.<org.javacc.utils.OutputFileGenerator: java.lang.String peekLine(java.io.BufferedReader)>(r1);	if $r8 == null goto virtualinvoke r2.<java.io.PrintWriter: void flush()>();	$r3 = specialinvoke r0.<org.javacc.utils.OutputFileGenerator: java.lang.String peekLine(java.io.BufferedReader)>(r1);	$r4 = virtualinvoke $r3.<java.lang.String: java.lang.String trim()>();	$z0 = virtualinvoke $r4.<java.lang.String: boolean startsWith(java.lang.String)>("#if");	if $z0 == 0 goto $r5 = specialinvoke r0.<org.javacc.utils.OutputFileGenerator: java.lang.String peekLine(java.io.BufferedReader)>(r1);	$r5 = specialinvoke r0.<org.javacc.utils.OutputFileGenerator: java.lang.String peekLine(java.io.BufferedReader)>(r1);	$r6 = virtualinvoke $r5.<java.lang.String: java.lang.String trim()>();	$z1 = virtualinvoke $r6.<java.lang.String: boolean startsWith(java.lang.String)>("#");	if $z1 == 0 goto r7 = specialinvoke r0.<org.javacc.utils.OutputFileGenerator: java.lang.String getLine(java.io.BufferedReader)>(r1);	goto [?= virtualinvoke r2.<java.io.PrintWriter: void flush()>()];	virtualinvoke r2.<java.io.PrintWriter: void flush()>();	return
;block_num 6