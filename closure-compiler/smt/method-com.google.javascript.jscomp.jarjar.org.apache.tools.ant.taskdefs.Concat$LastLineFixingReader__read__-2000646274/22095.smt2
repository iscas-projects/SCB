(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3735 0)
(declare-sort var2847 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun needAddSeparator/-1012698002 (var3735) Bool)
(declare-fun reader/-1012698002 (var3735) var2847)
(declare-fun read/2055644853 (var2847) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun addLastChar/-970300294 (var3735 Int) void)
(declare-const null-var3735 var3735)
(declare-const var1720 var3735) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$LastLineFixingReader 
(assert (not (= var1720 null-var3735)))
(define-const var3609 Bool (needAddSeparator/-1012698002 var1720)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$LastLineFixingReader: boolean needAddSeparator> 
 ; Statement: if $z0 == 0 goto $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$LastLineFixingReader: java.io.Reader reader> 
(assert (= (ite var3609 1 0) 0)) ; Cond: $z0 == 0 
(define-const var354 var2847 (reader/-1012698002 var1720)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$LastLineFixingReader: java.io.Reader reader> 
(assert true)
(define-const var695 Int (read/2055644853 var354)) ; Statement: i0 = virtualinvoke $r1.<java.io.Reader: int read()>() 
(define-const var3216 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i12 = (int) -1 
 ; Statement: if i0 != $i12 goto $c1 = (char) i0 
(assert (not (= var695 var3216))) ; Cond: i0 != $i12 
(define-const var3760 Int (cast-from-Int-to-Int var695)) ; Statement: $c1 = (char) i0 
(assert true)
;(assert (addLastChar/-970300294 var1720 var3760)) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$LastLineFixingReader: void addLastChar(char)>($c1) 

(declare-const var1720!1 var3735)
(declare-const var3760!1 Int)
 ; Statement: return i0 
(check-sat)
(get-model)
(get-unsat-core)
; {needAddSeparator/-1012698002=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$LastLineFixingReader], boolean), reader/-1012698002=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$LastLineFixingReader], java.io.Reader), read/2055644853=([java.io.Reader], int), cast-from-Int-to-Int=([int], int), addLastChar/-970300294=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$LastLineFixingReader, char], void)}
; {var3735=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$LastLineFixingReader, var1720=r0, var3609=$z0, var2847=java.io.Reader, var354=$r1, var695=i0, var3216=$i12, var3760=$c1}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$LastLineFixingReader=var3735, r0=var1720, $z0=var3609, java.io.Reader=var2847, $r1=var354, i0=var695, $i12=var3216, $c1=var3760}
;seq 
;cnt {}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$LastLineFixingReader;	$z0 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$LastLineFixingReader: boolean needAddSeparator>;	if $z0 == 0 goto $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$LastLineFixingReader: java.io.Reader reader>;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$LastLineFixingReader: java.io.Reader reader>;	i0 = virtualinvoke $r1.<java.io.Reader: int read()>();	$i12 = (int) -1;	if i0 != $i12 goto $c1 = (char) i0;	$c1 = (char) i0;	specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$LastLineFixingReader: void addLastChar(char)>($c1);	return i0
;block_num 3