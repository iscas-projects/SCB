(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1671 0)
(declare-sort var847 0)
(declare-sort var259 0)
(declare-sort var2111 0)
(declare-sort var3653 0)
(declare-sort var3504 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun follow/744633556 (var1671) Bool)
(declare-fun target/744633556 (var1671) String)
(declare-fun var847-init () var847)
(declare-fun <init>/1218628112 (var847) void)
(declare-fun createWriter/-1088817847 (var2111 var3653) var259)
(declare-fun cast-from-var1671-to-var2111 (var1671) var2111)
(declare-fun cast-from-var847-to-var3653 (var847) var3653)
(declare-fun setWriter/1009685557 (var2111 var3504) void)
(declare-fun cast-from-var259-to-var3504 (var259) var3504)
(declare-fun activateOptions/1782325040 (var2111) void)
(declare-const null-var1671 var1671)
(declare-const var3685 var1671) ; Statement: r0 := @this: org.apache.log4j.ConsoleAppender 
(assert (not (= var3685 null-var1671)))
(define-const var191 Bool (follow/744633556 var3685)) ; Statement: $z0 = r0.<org.apache.log4j.ConsoleAppender: boolean follow> 
 ; Statement: if $z0 == 0 goto $r1 = r0.<org.apache.log4j.ConsoleAppender: java.lang.String target> 
(assert (not (= (ite var191 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var60 String (target/744633556 var3685)) ; Statement: $r6 = r0.<org.apache.log4j.ConsoleAppender: java.lang.String target> 
(assert true)
(define-const var593 Bool (= var60 "System.err")) ; Statement: $z2 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>("System.err") 
 ; Statement: if $z2 == 0 goto $r7 = new org.apache.log4j.ConsoleAppender$SystemOutStream 
(assert (= (ite var593 1 0) 0)) ; Cond: $z2 == 0 
(define-const var3329 var847 var847-init) ; Statement: $r7 = new org.apache.log4j.ConsoleAppender$SystemOutStream 
(assert true)
;(assert (<init>/1218628112 var3329)) ; Statement: specialinvoke $r7.<org.apache.log4j.ConsoleAppender$SystemOutStream: void <init>()>() 

(declare-const var3329!1 var847)
(assert true)
(define-const var3647 var259 (createWriter/-1088817847 (cast-from-var1671-to-var2111 var3685) (cast-from-var847-to-var3653 var3329!1))) ; Statement: $r8 = virtualinvoke r0.<org.apache.log4j.ConsoleAppender: java.io.OutputStreamWriter createWriter(java.io.OutputStream)>($r7) 
(assert true)
;(assert (setWriter/1009685557 (cast-from-var1671-to-var2111 var3685) (cast-from-var259-to-var3504 var3647))) ; Statement: virtualinvoke r0.<org.apache.log4j.ConsoleAppender: void setWriter(java.io.Writer)>($r8) 

(declare-const var3685!1 var1671)
(declare-const var3647!1 var259)
 ; Statement: goto [?= specialinvoke r0.<org.apache.log4j.WriterAppender: void activateOptions()>()] 
(assert true) ; Non Conditional
(assert true)
;(assert (activateOptions/1782325040 (cast-from-var1671-to-var2111 var3685!1))) ; Statement: specialinvoke r0.<org.apache.log4j.WriterAppender: void activateOptions()>() 

(declare-const var3685!2 var1671)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {follow/744633556=([org.apache.log4j.ConsoleAppender], boolean), target/744633556=([org.apache.log4j.ConsoleAppender], java.lang.String), var847-init=([], org.apache.log4j.ConsoleAppender$SystemOutStream), <init>/1218628112=([org.apache.log4j.ConsoleAppender$SystemOutStream], void), createWriter/-1088817847=([org.apache.log4j.WriterAppender, java.io.OutputStream], java.io.OutputStreamWriter), cast-from-var1671-to-var2111=([org.apache.log4j.ConsoleAppender], org.apache.log4j.WriterAppender), cast-from-var847-to-var3653=([org.apache.log4j.ConsoleAppender$SystemOutStream], java.io.OutputStream), setWriter/1009685557=([org.apache.log4j.WriterAppender, java.io.Writer], void), cast-from-var259-to-var3504=([java.io.OutputStreamWriter], java.io.Writer), activateOptions/1782325040=([org.apache.log4j.WriterAppender], void)}
; {var1671=org.apache.log4j.ConsoleAppender, var3685=r0, var191=$z0, var60=$r6, var593=$z2, var847=org.apache.log4j.ConsoleAppender$SystemOutStream, var3329=$r7, var259=java.io.OutputStreamWriter, var2111=org.apache.log4j.WriterAppender, var3653=java.io.OutputStream, var3647=$r8, var3504=java.io.Writer}
; {org.apache.log4j.ConsoleAppender=var1671, r0=var3685, $z0=var191, $r6=var60, $z2=var593, org.apache.log4j.ConsoleAppender$SystemOutStream=var847, $r7=var3329, java.io.OutputStreamWriter=var259, org.apache.log4j.WriterAppender=var2111, java.io.OutputStream=var3653, $r8=var3647, java.io.Writer=var3504}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.apache.log4j.ConsoleAppender;	$z0 = r0.<org.apache.log4j.ConsoleAppender: boolean follow>;	if $z0 == 0 goto $r1 = r0.<org.apache.log4j.ConsoleAppender: java.lang.String target>;	$r6 = r0.<org.apache.log4j.ConsoleAppender: java.lang.String target>;	$z2 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>("System.err");	if $z2 == 0 goto $r7 = new org.apache.log4j.ConsoleAppender$SystemOutStream;	$r7 = new org.apache.log4j.ConsoleAppender$SystemOutStream;	specialinvoke $r7.<org.apache.log4j.ConsoleAppender$SystemOutStream: void <init>()>();	$r8 = virtualinvoke r0.<org.apache.log4j.ConsoleAppender: java.io.OutputStreamWriter createWriter(java.io.OutputStream)>($r7);	virtualinvoke r0.<org.apache.log4j.ConsoleAppender: void setWriter(java.io.Writer)>($r8);	goto [?= specialinvoke r0.<org.apache.log4j.WriterAppender: void activateOptions()>()];	specialinvoke r0.<org.apache.log4j.WriterAppender: void activateOptions()>();	return
;block_num 4