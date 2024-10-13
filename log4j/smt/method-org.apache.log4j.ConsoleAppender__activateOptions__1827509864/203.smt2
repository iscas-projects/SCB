(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1265 0)
(declare-sort var1099 0)
(declare-sort var3154 0)
(declare-sort var2219 0)
(declare-sort var3891 0)
(declare-sort var1442 0)
(declare-sort var3487 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun follow/744633556 (var1265) Bool)
(declare-fun target/744633556 (var1265) String)
(declare-fun createWriter/-1088817847 (var3891 var1442) var2219)
(declare-fun cast-from-var1265-to-var3891 (var1265) var3891)
(declare-fun cast-from-var1099-to-var1442 (var1099) var1442)
(declare-fun setWriter/1009685557 (var3891 var3487) void)
(declare-fun cast-from-var2219-to-var3487 (var2219) var3487)
(declare-fun activateOptions/1782325040 (var3891) void)
(declare-const null-var1265 var1265)
(declare-const var3154-out var1099)
(declare-const var2288 var1265) ; Statement: r0 := @this: org.apache.log4j.ConsoleAppender 
(assert (not (= var2288 null-var1265)))
(define-const var1830 Bool (follow/744633556 var2288)) ; Statement: $z0 = r0.<org.apache.log4j.ConsoleAppender: boolean follow> 
 ; Statement: if $z0 == 0 goto $r1 = r0.<org.apache.log4j.ConsoleAppender: java.lang.String target> 
(assert (= (ite var1830 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3690 String (target/744633556 var2288)) ; Statement: $r1 = r0.<org.apache.log4j.ConsoleAppender: java.lang.String target> 
(assert true)
(define-const var3748 Bool (= var3690 "System.err")) ; Statement: $z1 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>("System.err") 
 ; Statement: if $z1 == 0 goto $r2 = <java.lang.System: java.io.PrintStream out> 
(assert (= (ite var3748 1 0) 0)) ; Cond: $z1 == 0 
(define-const var3536 var1099 var3154-out) ; Statement: $r2 = <java.lang.System: java.io.PrintStream out> 
(assert true)
(define-const var953 var2219 (createWriter/-1088817847 (cast-from-var1265-to-var3891 var2288) (cast-from-var1099-to-var1442 var3536))) ; Statement: $r3 = virtualinvoke r0.<org.apache.log4j.ConsoleAppender: java.io.OutputStreamWriter createWriter(java.io.OutputStream)>($r2) 
(assert true)
;(assert (setWriter/1009685557 (cast-from-var1265-to-var3891 var2288) (cast-from-var2219-to-var3487 var953))) ; Statement: virtualinvoke r0.<org.apache.log4j.ConsoleAppender: void setWriter(java.io.Writer)>($r3) 

(declare-const var2288!1 var1265)
(declare-const var953!1 var2219)
(assert true) ; Non Conditional
(assert true)
;(assert (activateOptions/1782325040 (cast-from-var1265-to-var3891 var2288!1))) ; Statement: specialinvoke r0.<org.apache.log4j.WriterAppender: void activateOptions()>() 

(declare-const var2288!2 var1265)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {follow/744633556=([org.apache.log4j.ConsoleAppender], boolean), target/744633556=([org.apache.log4j.ConsoleAppender], java.lang.String), createWriter/-1088817847=([org.apache.log4j.WriterAppender, java.io.OutputStream], java.io.OutputStreamWriter), cast-from-var1265-to-var3891=([org.apache.log4j.ConsoleAppender], org.apache.log4j.WriterAppender), cast-from-var1099-to-var1442=([java.io.PrintStream], java.io.OutputStream), setWriter/1009685557=([org.apache.log4j.WriterAppender, java.io.Writer], void), cast-from-var2219-to-var3487=([java.io.OutputStreamWriter], java.io.Writer), activateOptions/1782325040=([org.apache.log4j.WriterAppender], void)}
; {var1265=org.apache.log4j.ConsoleAppender, var2288=r0, var1830=$z0, var3690=$r1, var3748=$z1, var1099=java.io.PrintStream, var3154=java.lang.System, var3536=$r2, var2219=java.io.OutputStreamWriter, var3891=org.apache.log4j.WriterAppender, var1442=java.io.OutputStream, var953=$r3, var3487=java.io.Writer}
; {org.apache.log4j.ConsoleAppender=var1265, r0=var2288, $z0=var1830, $r1=var3690, $z1=var3748, java.io.PrintStream=var1099, java.lang.System=var3154, $r2=var3536, java.io.OutputStreamWriter=var2219, org.apache.log4j.WriterAppender=var3891, java.io.OutputStream=var1442, $r3=var953, java.io.Writer=var3487}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.apache.log4j.ConsoleAppender;	$z0 = r0.<org.apache.log4j.ConsoleAppender: boolean follow>;	if $z0 == 0 goto $r1 = r0.<org.apache.log4j.ConsoleAppender: java.lang.String target>;	$r1 = r0.<org.apache.log4j.ConsoleAppender: java.lang.String target>;	$z1 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>("System.err");	if $z1 == 0 goto $r2 = <java.lang.System: java.io.PrintStream out>;	$r2 = <java.lang.System: java.io.PrintStream out>;	$r3 = virtualinvoke r0.<org.apache.log4j.ConsoleAppender: java.io.OutputStreamWriter createWriter(java.io.OutputStream)>($r2);	virtualinvoke r0.<org.apache.log4j.ConsoleAppender: void setWriter(java.io.Writer)>($r3);	specialinvoke r0.<org.apache.log4j.WriterAppender: void activateOptions()>();	return
;block_num 4