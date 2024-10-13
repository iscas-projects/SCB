(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2867 0)
(declare-sort var2236 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun needAddSeparator/-1012698002 (var2867) Bool)
(declare-fun lastPos/-1012698002 (var2867) Int)
(declare-fun this$0/-1012698002 (var2867) var2236)
(declare-fun var2236_access$000/-71214924 (var2236) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var2867 var2867)
(declare-const var3739 var2867) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$LastLineFixingReader 
(assert (not (= var3739 null-var2867)))
(define-const var774 Bool (needAddSeparator/-1012698002 var3739)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$LastLineFixingReader: boolean needAddSeparator> 
 ; Statement: if $z0 == 0 goto $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$LastLineFixingReader: java.io.Reader reader> 
(assert (not (= (ite var774 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1690 Int (lastPos/-1012698002 var3739)) ; Statement: $i3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$LastLineFixingReader: int lastPos> 
(define-const var1194 var2236 (this$0/-1012698002 var3739)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$LastLineFixingReader: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat this$0> 
(define-const var3890 String (var2236_access$000/-71214924 var1194)) ; Statement: $r5 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat: java.lang.String access$000(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat)>($r4) 
(assert true)
(define-const var1954 Int (length/-134980193 var3890)) ; Statement: $i4 = virtualinvoke $r5.<java.lang.String: int length()>() 
 ; Statement: if $i3 < $i4 goto $r6 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$LastLineFixingReader: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat this$0> 
(assert (< var1690 var1954)) ; Cond: $i3 < $i4 
(define-const var2767 var2236 (this$0/-1012698002 var3739)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$LastLineFixingReader: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat this$0> 
(define-const var3803 String (var2236_access$000/-71214924 var2767)) ; Statement: $r7 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat: java.lang.String access$000(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat)>($r6) 
(define-const var2725 Int (lastPos/-1012698002 var3739)) ; Statement: $i5 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$LastLineFixingReader: int lastPos> 
(define-const var2716 Int (+ var2725 1)) ; Statement: $i6 = $i5 + 1 
(declare-const var3739!1 var2867)
(assert (not (= var3739!1 null-var2867)))
(assert (= (lastPos/-1012698002 var3739!1) var2716)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$LastLineFixingReader: int lastPos> = $i6 
(assert (and true (and (> (str.len var3803) var2725) (<= 0 var2725))))
(define-const var3196 Int (charAt/698050440 var3803 var2725)) ; Statement: $c7 = virtualinvoke $r7.<java.lang.String: char charAt(int)>($i5) 
(define-const var1669 Int (cast-from-Int-to-Int var3196)) ; Statement: $i10 = (int) $c7 
 ; Statement: return $i10 
(check-sat)
(get-model)
(get-unsat-core)
; {needAddSeparator/-1012698002=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$LastLineFixingReader], boolean), lastPos/-1012698002=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$LastLineFixingReader], int), this$0/-1012698002=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$LastLineFixingReader], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat), var2236_access$000/-71214924=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat], java.lang.String), length/-134980193=([java.lang.String], int), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int)}
; {var2867=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$LastLineFixingReader, var3739=r0, var774=$z0, var1690=$i3, var2236=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat, var1194=$r4, var3890=$r5, var1954=$i4, var2767=$r6, var3803=$r7, var2725=$i5, var2716=$i6, var3196=$c7, var1669=$i10}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$LastLineFixingReader=var2867, r0=var3739, $z0=var774, $i3=var1690, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat=var2236, $r4=var1194, $r5=var3890, $i4=var1954, $r6=var2767, $r7=var3803, $i5=var2725, $i6=var2716, $c7=var3196, $i10=var1669}
;seq <java.lang.String: int length()>;	<java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: char charAt(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$LastLineFixingReader;	$z0 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$LastLineFixingReader: boolean needAddSeparator>;	if $z0 == 0 goto $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$LastLineFixingReader: java.io.Reader reader>;	$i3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$LastLineFixingReader: int lastPos>;	$r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$LastLineFixingReader: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat this$0>;	$r5 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat: java.lang.String access$000(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat)>($r4);	$i4 = virtualinvoke $r5.<java.lang.String: int length()>();	if $i3 < $i4 goto $r6 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$LastLineFixingReader: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat this$0>;	$r6 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$LastLineFixingReader: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat this$0>;	$r7 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat: java.lang.String access$000(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat)>($r6);	$i5 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$LastLineFixingReader: int lastPos>;	$i6 = $i5 + 1;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$LastLineFixingReader: int lastPos> = $i6;	$c7 = virtualinvoke $r7.<java.lang.String: char charAt(int)>($i5);	$i10 = (int) $c7;	return $i10
;block_num 3