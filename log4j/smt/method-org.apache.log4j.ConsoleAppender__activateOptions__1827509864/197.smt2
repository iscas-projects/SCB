(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1840 0)
(declare-sort var1703 0)
(declare-sort var3575 0)
(declare-sort var316 0)
(declare-sort var651 0)
(declare-sort var498 0)
(declare-sort var3133 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun follow/744633556 (var1840) Bool)
(declare-fun target/744633556 (var1840) String)
(declare-fun createWriter/-1088817847 (var651 var498) var316)
(declare-fun cast-from-var1840-to-var651 (var1840) var651)
(declare-fun cast-from-var1703-to-var498 (var1703) var498)
(declare-fun setWriter/1009685557 (var651 var3133) void)
(declare-fun cast-from-var316-to-var3133 (var316) var3133)
(declare-fun activateOptions/1782325040 (var651) void)
(declare-const null-var1840 var1840)
(declare-const var3575-err var1703)
(declare-const var1416 var1840) ; Statement: r0 := @this: org.apache.log4j.ConsoleAppender 
(assert (not (= var1416 null-var1840)))
(define-const var3440 Bool (follow/744633556 var1416)) ; Statement: $z0 = r0.<org.apache.log4j.ConsoleAppender: boolean follow> 
 ; Statement: if $z0 == 0 goto $r1 = r0.<org.apache.log4j.ConsoleAppender: java.lang.String target> 
(assert (= (ite var3440 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3589 String (target/744633556 var1416)) ; Statement: $r1 = r0.<org.apache.log4j.ConsoleAppender: java.lang.String target> 
(assert true)
(define-const var1173 Bool (= var3589 "System.err")) ; Statement: $z1 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>("System.err") 
 ; Statement: if $z1 == 0 goto $r2 = <java.lang.System: java.io.PrintStream out> 
(assert (not (= (ite var1173 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var2870 var1703 var3575-err) ; Statement: $r4 = <java.lang.System: java.io.PrintStream err> 
(assert true)
(define-const var2179 var316 (createWriter/-1088817847 (cast-from-var1840-to-var651 var1416) (cast-from-var1703-to-var498 var2870))) ; Statement: $r5 = virtualinvoke r0.<org.apache.log4j.ConsoleAppender: java.io.OutputStreamWriter createWriter(java.io.OutputStream)>($r4) 
(assert true)
;(assert (setWriter/1009685557 (cast-from-var1840-to-var651 var1416) (cast-from-var316-to-var3133 var2179))) ; Statement: virtualinvoke r0.<org.apache.log4j.ConsoleAppender: void setWriter(java.io.Writer)>($r5) 

(declare-const var1416!1 var1840)
(declare-const var2179!1 var316)
 ; Statement: goto [?= specialinvoke r0.<org.apache.log4j.WriterAppender: void activateOptions()>()] 
(assert true) ; Non Conditional
(assert true)
;(assert (activateOptions/1782325040 (cast-from-var1840-to-var651 var1416!1))) ; Statement: specialinvoke r0.<org.apache.log4j.WriterAppender: void activateOptions()>() 

(declare-const var1416!2 var1840)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {follow/744633556=([org.apache.log4j.ConsoleAppender], boolean), target/744633556=([org.apache.log4j.ConsoleAppender], java.lang.String), createWriter/-1088817847=([org.apache.log4j.WriterAppender, java.io.OutputStream], java.io.OutputStreamWriter), cast-from-var1840-to-var651=([org.apache.log4j.ConsoleAppender], org.apache.log4j.WriterAppender), cast-from-var1703-to-var498=([java.io.PrintStream], java.io.OutputStream), setWriter/1009685557=([org.apache.log4j.WriterAppender, java.io.Writer], void), cast-from-var316-to-var3133=([java.io.OutputStreamWriter], java.io.Writer), activateOptions/1782325040=([org.apache.log4j.WriterAppender], void)}
; {var1840=org.apache.log4j.ConsoleAppender, var1416=r0, var3440=$z0, var3589=$r1, var1173=$z1, var1703=java.io.PrintStream, var3575=java.lang.System, var2870=$r4, var316=java.io.OutputStreamWriter, var651=org.apache.log4j.WriterAppender, var498=java.io.OutputStream, var2179=$r5, var3133=java.io.Writer}
; {org.apache.log4j.ConsoleAppender=var1840, r0=var1416, $z0=var3440, $r1=var3589, $z1=var1173, java.io.PrintStream=var1703, java.lang.System=var3575, $r4=var2870, java.io.OutputStreamWriter=var316, org.apache.log4j.WriterAppender=var651, java.io.OutputStream=var498, $r5=var2179, java.io.Writer=var3133}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.apache.log4j.ConsoleAppender;	$z0 = r0.<org.apache.log4j.ConsoleAppender: boolean follow>;	if $z0 == 0 goto $r1 = r0.<org.apache.log4j.ConsoleAppender: java.lang.String target>;	$r1 = r0.<org.apache.log4j.ConsoleAppender: java.lang.String target>;	$z1 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>("System.err");	if $z1 == 0 goto $r2 = <java.lang.System: java.io.PrintStream out>;	$r4 = <java.lang.System: java.io.PrintStream err>;	$r5 = virtualinvoke r0.<org.apache.log4j.ConsoleAppender: java.io.OutputStreamWriter createWriter(java.io.OutputStream)>($r4);	virtualinvoke r0.<org.apache.log4j.ConsoleAppender: void setWriter(java.io.Writer)>($r5);	goto [?= specialinvoke r0.<org.apache.log4j.WriterAppender: void activateOptions()>()];	specialinvoke r0.<org.apache.log4j.WriterAppender: void activateOptions()>();	return
;block_num 4