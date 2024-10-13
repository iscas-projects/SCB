(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var572 0)
(declare-sort var3432 0)
(declare-sort var1802 0)
(declare-sort var3403 0)
(declare-sort var280 0)
(declare-sort var2375 0)
(declare-sort var2382 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3403_lineSeparator/-342590142 () String)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun setMessage/-720084151 (var3432 String Int) void)
(declare-fun isLoggingMessage/173117946 (var572) var280)
(declare-fun get/-896773187 (var280) var2375)
(declare-fun cast-from-var2382-to-var2375 (var2382) var2375)
(declare-const null-var572 var572)
(declare-const null-var3432 var3432)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var2382-FALSE var2382)
(declare-const var1313 var572) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project 
(assert (not (= var1313 null-var572)))
(declare-const var2760 var3432) ; Statement: r1 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent 
(assert (not (= var2760 null-var3432)))
(declare-const var1116 String) ; Statement: r16 := @parameter1: java.lang.String 
(assert (not (= var1116 null-String)))
(declare-const var3655 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var3655 null-Int)))
 ; Statement: if r16 != null goto $r0 = staticinvoke <java.lang.System: java.lang.String lineSeparator()>() 
(assert (not (= var1116 null-String))) ; Cond: r16 != null 
(define-const var489 String var3403_lineSeparator/-342590142) ; Statement: $r0 = staticinvoke <java.lang.System: java.lang.String lineSeparator()>() 
(assert true)
(define-const var412 Bool (endsWith/985337093 var1116 var489)) ; Statement: $z0 = virtualinvoke r16.<java.lang.String: boolean endsWith(java.lang.String)>($r0) 
 ; Statement: if $z0 == 0 goto virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent: void setMessage(java.lang.String,int)>(r16, i0) 
(assert (not (= (ite var412 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var454 Int (length/-134980193 var1116)) ; Statement: $i3 = virtualinvoke r16.<java.lang.String: int length()>() 
(define-const var2766 String var3403_lineSeparator/-342590142) ; Statement: $r11 = staticinvoke <java.lang.System: java.lang.String lineSeparator()>() 
(assert true)
(define-const var716 Int (length/-134980193 var2766)) ; Statement: $i2 = virtualinvoke $r11.<java.lang.String: int length()>() 
(define-const var637 Int (- var454 var716)) ; Statement: i4 = $i3 - $i2 
(assert (not (and true (and (>= 0 0) (>= (str.len var1116) var637) (>= var637 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {var3403_lineSeparator/-342590142=([], java.lang.String), endsWith/985337093=([java.lang.String, java.lang.String], boolean), length/-134980193=([java.lang.String], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), setMessage/-720084151=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent, java.lang.String, int], void), isLoggingMessage/173117946=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project], java.lang.ThreadLocal), get/-896773187=([java.lang.ThreadLocal], java.lang.Object), cast-from-var2382-to-var2375=([java.lang.Boolean], java.lang.Object)}
; {var572=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var1313=r2, var3432=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent, var2760=r1, var1116=r16, var1802=null_type, var3655=i0, var3403=java.lang.System, var489=$r0, var412=$z0, var454=$i3, var2766=$r11, var716=$i2, var637=i4, var3271=$r12, var280=java.lang.ThreadLocal, var1355=$r3, var2375=java.lang.Object, var3751=$r5, var2382=java.lang.Boolean, var3343=$r4}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var572, r2=var1313, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent=var3432, r1=var2760, r16=var1116, null_type=var1802, i0=var3655, java.lang.System=var3403, $r0=var489, $z0=var412, $i3=var454, $r11=var2766, $i2=var716, i4=var637, $r12=var3271, java.lang.ThreadLocal=var280, $r3=var1355, java.lang.Object=var2375, $r5=var3751, java.lang.Boolean=var2382, $r4=var3343}
;seq <java.lang.String: boolean endsWith(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 1,"<java.lang.String: int length()>": 2,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project;	r1 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent;	r16 := @parameter1: java.lang.String;	i0 := @parameter2: int;	if r16 != null goto $r0 = staticinvoke <java.lang.System: java.lang.String lineSeparator()>();	$r0 = staticinvoke <java.lang.System: java.lang.String lineSeparator()>();	$z0 = virtualinvoke r16.<java.lang.String: boolean endsWith(java.lang.String)>($r0);	if $z0 == 0 goto virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent: void setMessage(java.lang.String,int)>(r16, i0);	$i3 = virtualinvoke r16.<java.lang.String: int length()>();	$r11 = staticinvoke <java.lang.System: java.lang.String lineSeparator()>();	$i2 = virtualinvoke $r11.<java.lang.String: int length()>();	i4 = $i3 - $i2;	$r12 = virtualinvoke r16.<java.lang.String: java.lang.String substring(int,int)>(0, i4);	virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent: void setMessage(java.lang.String,int)>($r12, i0);	goto [?= $r3 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.lang.ThreadLocal isLoggingMessage>];	$r3 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.lang.ThreadLocal isLoggingMessage>;	$r5 = virtualinvoke $r3.<java.lang.ThreadLocal: java.lang.Object get()>();	$r4 = <java.lang.Boolean: java.lang.Boolean FALSE>;	if $r5 == $r4 goto $r7 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.lang.ThreadLocal isLoggingMessage>;	return
;block_num 5