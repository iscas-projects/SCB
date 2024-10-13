(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var518 0)
(declare-sort var3272 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun needAddSeparator/-1012698002 (var518) Bool)
(declare-fun lastPos/-1012698002 (var518) Int)
(declare-fun this$0/-1012698002 (var518) var3272)
(declare-fun var3272_access$000/-71214924 (var3272) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var518 var518)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const var480 var518) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$LastLineFixingReader 
(assert (not (= var480 null-var518)))
(declare-const var2741 (Array Int Int)) ; Statement: r1 := @parameter0: char[] 
(assert (not (= var2741 null-__Array__Int__Int__)))
(declare-const var2043 Int) ; Statement: i13 := @parameter1: int 
(assert (not (= var2043 null-Int)))
(declare-const var2530 Int) ; Statement: i14 := @parameter2: int 
(assert (not (= var2530 null-Int)))
(define-const var2718 Int 0) ; Statement: i15 = 0 
(assert true) ; Non Conditional
(define-const var3300 Bool (needAddSeparator/-1012698002 var480)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$LastLineFixingReader: boolean needAddSeparator> 
 ; Statement: if $z1 == 0 goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$LastLineFixingReader: java.io.Reader reader> 
(assert (not (= (ite var3300 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var3541 Int (lastPos/-1012698002 var480)) ; Statement: $i8 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$LastLineFixingReader: int lastPos> 
(define-const var268 var3272 (this$0/-1012698002 var480)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$LastLineFixingReader: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat this$0> 
(define-const var1670 String (var3272_access$000/-71214924 var268)) ; Statement: $r5 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat: java.lang.String access$000(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat)>($r4) 
(assert true)
(define-const var2808 Int (length/-134980193 var1670)) ; Statement: $i9 = virtualinvoke $r5.<java.lang.String: int length()>() 
 ; Statement: if $i8 < $i9 goto $r6 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$LastLineFixingReader: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat this$0> 
(assert (< var3541 var2808)) ; Cond: $i8 < $i9 
(define-const var1567 var3272 (this$0/-1012698002 var480)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$LastLineFixingReader: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat this$0> 
(define-const var453 String (var3272_access$000/-71214924 var1567)) ; Statement: $r7 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat: java.lang.String access$000(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat)>($r6) 
(define-const var3269 Int (lastPos/-1012698002 var480)) ; Statement: $i10 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$LastLineFixingReader: int lastPos> 
(define-const var1400 Int (+ var3269 1)) ; Statement: $i11 = $i10 + 1 
(declare-const var480!1 var518)
(assert (not (= var480!1 null-var518)))
(assert (= (lastPos/-1012698002 var480!1) var1400)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$LastLineFixingReader: int lastPos> = $i11 
(assert (and true (and (> (str.len var453) var3269) (<= 0 var3269))))
(define-const var2174 Int (charAt/698050440 var453 var3269)) ; Statement: $c12 = virtualinvoke $r7.<java.lang.String: char charAt(int)>($i10) 
(declare-const var2741!1 (Array Int Int))
(assert (not (= var2741!1 null-__Array__Int__Int__)))
(assert (= (select var2741!1 var2043) var2174)) ; Statement: r1[i13] = $c12 
(define-const var2106 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i18 = (int) -1 
(define-const var2530!1 Int (+ var2530 var2106)) ; Statement: i14 = i14 + $i18 
(define-const var2043!1 Int (+ var2043 1)) ; Statement: i13 = i13 + 1 
(define-const var2718!1 Int (+ var2718 1)) ; Statement: i15 = i15 + 1 
 ; Statement: if i14 != 0 goto $z1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$LastLineFixingReader: boolean needAddSeparator> 
(assert (not (not (= var2530!1 0)))) ; Negate: Cond: i14 != 0  
 ; Statement: return i15 
(check-sat)
(get-model)
(get-unsat-core)
; {needAddSeparator/-1012698002=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$LastLineFixingReader], boolean), lastPos/-1012698002=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$LastLineFixingReader], int), this$0/-1012698002=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$LastLineFixingReader], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat), var3272_access$000/-71214924=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat], java.lang.String), length/-134980193=([java.lang.String], int), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([int], int)}
; {var518=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$LastLineFixingReader, var480=r0, var2741=r1, var2043=i13, var2530=i14, var2718=i15, var3300=$z1, var3541=$i8, var3272=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat, var268=$r4, var1670=$r5, var2808=$i9, var1567=$r6, var453=$r7, var3269=$i10, var1400=$i11, var2174=$c12, var2106=$i18}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$LastLineFixingReader=var518, r0=var480, r1=var2741, i13=var2043, i14=var2530, i15=var2718, $z1=var3300, $i8=var3541, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat=var3272, $r4=var268, $r5=var1670, $i9=var2808, $r6=var1567, $r7=var453, $i10=var3269, $i11=var1400, $c12=var2174, $i18=var2106}
;seq <java.lang.String: int length()>;	<java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: char charAt(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$LastLineFixingReader;	r1 := @parameter0: char[];	i13 := @parameter1: int;	i14 := @parameter2: int;	i15 = 0;	$z1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$LastLineFixingReader: boolean needAddSeparator>;	if $z1 == 0 goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$LastLineFixingReader: java.io.Reader reader>;	$i8 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$LastLineFixingReader: int lastPos>;	$r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$LastLineFixingReader: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat this$0>;	$r5 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat: java.lang.String access$000(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat)>($r4);	$i9 = virtualinvoke $r5.<java.lang.String: int length()>();	if $i8 < $i9 goto $r6 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$LastLineFixingReader: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat this$0>;	$r6 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$LastLineFixingReader: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat this$0>;	$r7 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat: java.lang.String access$000(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat)>($r6);	$i10 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$LastLineFixingReader: int lastPos>;	$i11 = $i10 + 1;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$LastLineFixingReader: int lastPos> = $i11;	$c12 = virtualinvoke $r7.<java.lang.String: char charAt(int)>($i10);	r1[i13] = $c12;	$i18 = (int) -1;	i14 = i14 + $i18;	i13 = i13 + 1;	i15 = i15 + 1;	if i14 != 0 goto $z1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$LastLineFixingReader: boolean needAddSeparator>;	return i15
;block_num 5