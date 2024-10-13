(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3079 0)
(declare-sort var1479 0)
(declare-sort var2175 0)
(declare-sort var214 0)
(declare-sort var2633 0)
(declare-sort var3811 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun follow/744633556 (var3079) Bool)
(declare-fun target/744633556 (var3079) String)
(declare-fun var1479-init () var1479)
(declare-fun <init>/-1772623641 (var1479) void)
(declare-fun createWriter/-1088817847 (var214 var2633) var2175)
(declare-fun cast-from-var3079-to-var214 (var3079) var214)
(declare-fun cast-from-var1479-to-var2633 (var1479) var2633)
(declare-fun setWriter/1009685557 (var214 var3811) void)
(declare-fun cast-from-var2175-to-var3811 (var2175) var3811)
(declare-fun activateOptions/1782325040 (var214) void)
(declare-const null-var3079 var3079)
(declare-const var3975 var3079) ; Statement: r0 := @this: org.apache.log4j.ConsoleAppender 
(assert (not (= var3975 null-var3079)))
(define-const var2877 Bool (follow/744633556 var3975)) ; Statement: $z0 = r0.<org.apache.log4j.ConsoleAppender: boolean follow> 
 ; Statement: if $z0 == 0 goto $r1 = r0.<org.apache.log4j.ConsoleAppender: java.lang.String target> 
(assert (not (= (ite var2877 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1634 String (target/744633556 var3975)) ; Statement: $r6 = r0.<org.apache.log4j.ConsoleAppender: java.lang.String target> 
(assert true)
(define-const var1373 Bool (= var1634 "System.err")) ; Statement: $z2 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>("System.err") 
 ; Statement: if $z2 == 0 goto $r7 = new org.apache.log4j.ConsoleAppender$SystemOutStream 
(assert (not (= (ite var1373 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var760 var1479 var1479-init) ; Statement: $r9 = new org.apache.log4j.ConsoleAppender$SystemErrStream 
(assert true)
;(assert (<init>/-1772623641 var760)) ; Statement: specialinvoke $r9.<org.apache.log4j.ConsoleAppender$SystemErrStream: void <init>()>() 

(declare-const var760!1 var1479)
(assert true)
(define-const var1414 var2175 (createWriter/-1088817847 (cast-from-var3079-to-var214 var3975) (cast-from-var1479-to-var2633 var760!1))) ; Statement: $r10 = virtualinvoke r0.<org.apache.log4j.ConsoleAppender: java.io.OutputStreamWriter createWriter(java.io.OutputStream)>($r9) 
(assert true)
;(assert (setWriter/1009685557 (cast-from-var3079-to-var214 var3975) (cast-from-var2175-to-var3811 var1414))) ; Statement: virtualinvoke r0.<org.apache.log4j.ConsoleAppender: void setWriter(java.io.Writer)>($r10) 

(declare-const var3975!1 var3079)
(declare-const var1414!1 var2175)
 ; Statement: goto [?= specialinvoke r0.<org.apache.log4j.WriterAppender: void activateOptions()>()] 
(assert true) ; Non Conditional
(assert true)
;(assert (activateOptions/1782325040 (cast-from-var3079-to-var214 var3975!1))) ; Statement: specialinvoke r0.<org.apache.log4j.WriterAppender: void activateOptions()>() 

(declare-const var3975!2 var3079)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {follow/744633556=([org.apache.log4j.ConsoleAppender], boolean), target/744633556=([org.apache.log4j.ConsoleAppender], java.lang.String), var1479-init=([], org.apache.log4j.ConsoleAppender$SystemErrStream), <init>/-1772623641=([org.apache.log4j.ConsoleAppender$SystemErrStream], void), createWriter/-1088817847=([org.apache.log4j.WriterAppender, java.io.OutputStream], java.io.OutputStreamWriter), cast-from-var3079-to-var214=([org.apache.log4j.ConsoleAppender], org.apache.log4j.WriterAppender), cast-from-var1479-to-var2633=([org.apache.log4j.ConsoleAppender$SystemErrStream], java.io.OutputStream), setWriter/1009685557=([org.apache.log4j.WriterAppender, java.io.Writer], void), cast-from-var2175-to-var3811=([java.io.OutputStreamWriter], java.io.Writer), activateOptions/1782325040=([org.apache.log4j.WriterAppender], void)}
; {var3079=org.apache.log4j.ConsoleAppender, var3975=r0, var2877=$z0, var1634=$r6, var1373=$z2, var1479=org.apache.log4j.ConsoleAppender$SystemErrStream, var760=$r9, var2175=java.io.OutputStreamWriter, var214=org.apache.log4j.WriterAppender, var2633=java.io.OutputStream, var1414=$r10, var3811=java.io.Writer}
; {org.apache.log4j.ConsoleAppender=var3079, r0=var3975, $z0=var2877, $r6=var1634, $z2=var1373, org.apache.log4j.ConsoleAppender$SystemErrStream=var1479, $r9=var760, java.io.OutputStreamWriter=var2175, org.apache.log4j.WriterAppender=var214, java.io.OutputStream=var2633, $r10=var1414, java.io.Writer=var3811}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.apache.log4j.ConsoleAppender;	$z0 = r0.<org.apache.log4j.ConsoleAppender: boolean follow>;	if $z0 == 0 goto $r1 = r0.<org.apache.log4j.ConsoleAppender: java.lang.String target>;	$r6 = r0.<org.apache.log4j.ConsoleAppender: java.lang.String target>;	$z2 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>("System.err");	if $z2 == 0 goto $r7 = new org.apache.log4j.ConsoleAppender$SystemOutStream;	$r9 = new org.apache.log4j.ConsoleAppender$SystemErrStream;	specialinvoke $r9.<org.apache.log4j.ConsoleAppender$SystemErrStream: void <init>()>();	$r10 = virtualinvoke r0.<org.apache.log4j.ConsoleAppender: java.io.OutputStreamWriter createWriter(java.io.OutputStream)>($r9);	virtualinvoke r0.<org.apache.log4j.ConsoleAppender: void setWriter(java.io.Writer)>($r10);	goto [?= specialinvoke r0.<org.apache.log4j.WriterAppender: void activateOptions()>()];	specialinvoke r0.<org.apache.log4j.WriterAppender: void activateOptions()>();	return
;block_num 4