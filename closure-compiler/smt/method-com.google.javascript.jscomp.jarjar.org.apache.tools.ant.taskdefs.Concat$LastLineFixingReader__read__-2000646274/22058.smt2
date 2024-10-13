(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2926 0)
(declare-sort var530 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun needAddSeparator/-1012698002 (var2926) Bool)
(declare-fun lastPos/-1012698002 (var2926) Int)
(declare-fun this$0/-1012698002 (var2926) var530)
(declare-fun var530_access$000/-71214924 (var530) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var2926 var2926)
(declare-const var1353 var2926) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$LastLineFixingReader 
(assert (not (= var1353 null-var2926)))
(define-const var602 Bool (needAddSeparator/-1012698002 var1353)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$LastLineFixingReader: boolean needAddSeparator> 
 ; Statement: if $z0 == 0 goto $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$LastLineFixingReader: java.io.Reader reader> 
(assert (not (= (ite var602 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3282 Int (lastPos/-1012698002 var1353)) ; Statement: $i3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$LastLineFixingReader: int lastPos> 
(define-const var1632 var530 (this$0/-1012698002 var1353)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$LastLineFixingReader: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat this$0> 
(define-const var3520 String (var530_access$000/-71214924 var1632)) ; Statement: $r5 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat: java.lang.String access$000(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat)>($r4) 
(assert true)
(define-const var364 Int (length/-134980193 var3520)) ; Statement: $i4 = virtualinvoke $r5.<java.lang.String: int length()>() 
 ; Statement: if $i3 < $i4 goto $r6 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$LastLineFixingReader: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat this$0> 
(assert (not (< var3282 var364))) ; Negate: Cond: $i3 < $i4  
(define-const var1751 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i9 = (int) -1 
 ; Statement: return $i9 
(check-sat)
(get-model)
(get-unsat-core)
; {needAddSeparator/-1012698002=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$LastLineFixingReader], boolean), lastPos/-1012698002=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$LastLineFixingReader], int), this$0/-1012698002=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$LastLineFixingReader], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat), var530_access$000/-71214924=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat], java.lang.String), length/-134980193=([java.lang.String], int), cast-from-Int-to-Int=([int], int)}
; {var2926=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$LastLineFixingReader, var1353=r0, var602=$z0, var3282=$i3, var530=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat, var1632=$r4, var3520=$r5, var364=$i4, var1751=$i9}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$LastLineFixingReader=var2926, r0=var1353, $z0=var602, $i3=var3282, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat=var530, $r4=var1632, $r5=var3520, $i4=var364, $i9=var1751}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$LastLineFixingReader;	$z0 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$LastLineFixingReader: boolean needAddSeparator>;	if $z0 == 0 goto $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$LastLineFixingReader: java.io.Reader reader>;	$i3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$LastLineFixingReader: int lastPos>;	$r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$LastLineFixingReader: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat this$0>;	$r5 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat: java.lang.String access$000(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat)>($r4);	$i4 = virtualinvoke $r5.<java.lang.String: int length()>();	if $i3 < $i4 goto $r6 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$LastLineFixingReader: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat this$0>;	$i9 = (int) -1;	return $i9
;block_num 3