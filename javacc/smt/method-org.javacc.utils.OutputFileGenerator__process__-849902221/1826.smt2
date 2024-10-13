(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2738 0)
(declare-sort var3522 0)
(declare-sort var3438 0)
(declare-sort var677 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun peekLine/2102330122 (var2738 var3522) String)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun processIf/-324466858 (var2738 var3522 var3438 Bool) void)
(declare-fun flush/-1073200041 (var3438) void)
(declare-const null-var2738 var2738)
(declare-const null-var3522 var3522)
(declare-const null-var3438 var3438)
(declare-const null-Bool Bool)
(declare-const null-String String)
(declare-const var1086 var2738) ; Statement: r0 := @this: org.javacc.utils.OutputFileGenerator 
(assert (not (= var1086 null-var2738)))
(declare-const var498 var3522) ; Statement: r1 := @parameter0: java.io.BufferedReader 
(assert (not (= var498 null-var3522)))
(declare-const var3114 var3438) ; Statement: r2 := @parameter1: java.io.PrintWriter 
(assert (not (= var3114 null-var3438)))
(declare-const var2792 Bool) ; Statement: z2 := @parameter2: boolean 
(assert (not (= var2792 null-Bool)))
(assert true) ; Non Conditional
(assert true)
(define-const var2052 String (peekLine/2102330122 var1086 var498)) ; Statement: $r8 = specialinvoke r0.<org.javacc.utils.OutputFileGenerator: java.lang.String peekLine(java.io.BufferedReader)>(r1) 
 ; Statement: if $r8 == null goto virtualinvoke r2.<java.io.PrintWriter: void flush()>() 
(assert (not (= var2052 null-String))) ; Negate: Cond: $r8 == null  
(assert true)
(define-const var2866 String (peekLine/2102330122 var1086 var498)) ; Statement: $r3 = specialinvoke r0.<org.javacc.utils.OutputFileGenerator: java.lang.String peekLine(java.io.BufferedReader)>(r1) 
(assert true)
(define-const var418 String (trim/-847153721 var2866)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.String: java.lang.String trim()>() 
(assert true)
(define-const var3255 Bool (startsWith/-1785782452 var418 "#if")) ; Statement: $z0 = virtualinvoke $r4.<java.lang.String: boolean startsWith(java.lang.String)>("#if") 
 ; Statement: if $z0 == 0 goto $r5 = specialinvoke r0.<org.javacc.utils.OutputFileGenerator: java.lang.String peekLine(java.io.BufferedReader)>(r1) 
(assert (not (= (ite var3255 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
;(assert (processIf/-324466858 var1086 var498 var3114 var2792)) ; Statement: specialinvoke r0.<org.javacc.utils.OutputFileGenerator: void processIf(java.io.BufferedReader,java.io.PrintWriter,boolean)>(r1, r2, z2) 

(declare-const var1086!1 var2738)
(declare-const var498!1 var3522)
(declare-const var3114!1 var3438)
(declare-const var2792!1 Bool)
 ; Statement: goto [?= $r8 = specialinvoke r0.<org.javacc.utils.OutputFileGenerator: java.lang.String peekLine(java.io.BufferedReader)>(r1)] 
(assert true) ; Non Conditional
(assert true)
(define-const var2052!1 String (peekLine/2102330122 var1086!1 var498!1)) ; Statement: $r8 = specialinvoke r0.<org.javacc.utils.OutputFileGenerator: java.lang.String peekLine(java.io.BufferedReader)>(r1) 
 ; Statement: if $r8 == null goto virtualinvoke r2.<java.io.PrintWriter: void flush()>() 
(assert (= var2052!1 null-String)) ; Cond: $r8 == null 
(assert true)
;(assert (flush/-1073200041 var3114!1)) ; Statement: virtualinvoke r2.<java.io.PrintWriter: void flush()>() 

(declare-const var3114!2 var3438)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {peekLine/2102330122=([org.javacc.utils.OutputFileGenerator, java.io.BufferedReader], java.lang.String), trim/-847153721=([java.lang.String], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), processIf/-324466858=([org.javacc.utils.OutputFileGenerator, java.io.BufferedReader, java.io.PrintWriter, boolean], void), flush/-1073200041=([java.io.PrintWriter], void)}
; {var2738=org.javacc.utils.OutputFileGenerator, var1086=r0, var3522=java.io.BufferedReader, var498=r1, var3438=java.io.PrintWriter, var3114=r2, var2792=z2, var2052=$r8, var677=null_type, var2866=$r3, var418=$r4, var3255=$z0}
; {org.javacc.utils.OutputFileGenerator=var2738, r0=var1086, java.io.BufferedReader=var3522, r1=var498, java.io.PrintWriter=var3438, r2=var3114, z2=var2792, $r8=var2052, null_type=var677, $r3=var2866, $r4=var418, $z0=var3255}
;seq <java.lang.String: java.lang.String trim()>;	<java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String trim()>": 1,"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r0 := @this: org.javacc.utils.OutputFileGenerator;	r1 := @parameter0: java.io.BufferedReader;	r2 := @parameter1: java.io.PrintWriter;	z2 := @parameter2: boolean;	$r8 = specialinvoke r0.<org.javacc.utils.OutputFileGenerator: java.lang.String peekLine(java.io.BufferedReader)>(r1);	if $r8 == null goto virtualinvoke r2.<java.io.PrintWriter: void flush()>();	$r3 = specialinvoke r0.<org.javacc.utils.OutputFileGenerator: java.lang.String peekLine(java.io.BufferedReader)>(r1);	$r4 = virtualinvoke $r3.<java.lang.String: java.lang.String trim()>();	$z0 = virtualinvoke $r4.<java.lang.String: boolean startsWith(java.lang.String)>("#if");	if $z0 == 0 goto $r5 = specialinvoke r0.<org.javacc.utils.OutputFileGenerator: java.lang.String peekLine(java.io.BufferedReader)>(r1);	specialinvoke r0.<org.javacc.utils.OutputFileGenerator: void processIf(java.io.BufferedReader,java.io.PrintWriter,boolean)>(r1, r2, z2);	goto [?= $r8 = specialinvoke r0.<org.javacc.utils.OutputFileGenerator: java.lang.String peekLine(java.io.BufferedReader)>(r1)];	$r8 = specialinvoke r0.<org.javacc.utils.OutputFileGenerator: java.lang.String peekLine(java.io.BufferedReader)>(r1);	if $r8 == null goto virtualinvoke r2.<java.io.PrintWriter: void flush()>();	virtualinvoke r2.<java.io.PrintWriter: void flush()>();	return
;block_num 6