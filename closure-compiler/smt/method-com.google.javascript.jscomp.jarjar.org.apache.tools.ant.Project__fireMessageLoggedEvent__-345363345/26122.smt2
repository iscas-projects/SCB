(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1936 0)
(declare-sort var1652 0)
(declare-sort var2489 0)
(declare-sort var1928 0)
(declare-sort var940 0)
(declare-sort var2627 0)
(declare-sort var3727 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1928_lineSeparator/-342590142 () String)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-fun setMessage/-720084151 (var1652 String Int) void)
(declare-fun isLoggingMessage/173117946 (var1936) var940)
(declare-fun get/-896773187 (var940) var2627)
(declare-fun cast-from-var3727-to-var2627 (var3727) var2627)
(declare-const null-var1936 var1936)
(declare-const null-var1652 var1652)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var3727-FALSE var3727)
(declare-const var389 var1936) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project 
(assert (not (= var389 null-var1936)))
(declare-const var1579 var1652) ; Statement: r1 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent 
(assert (not (= var1579 null-var1652)))
(declare-const var2695 String) ; Statement: r16 := @parameter1: java.lang.String 
(assert (not (= var2695 null-String)))
(declare-const var1853 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var1853 null-Int)))
 ; Statement: if r16 != null goto $r0 = staticinvoke <java.lang.System: java.lang.String lineSeparator()>() 
(assert (not (= var2695 null-String))) ; Cond: r16 != null 
(define-const var2902 String var1928_lineSeparator/-342590142) ; Statement: $r0 = staticinvoke <java.lang.System: java.lang.String lineSeparator()>() 
(assert true)
(define-const var3034 Bool (endsWith/985337093 var2695 var2902)) ; Statement: $z0 = virtualinvoke r16.<java.lang.String: boolean endsWith(java.lang.String)>($r0) 
 ; Statement: if $z0 == 0 goto virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent: void setMessage(java.lang.String,int)>(r16, i0) 
(assert (= (ite var3034 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
;(assert (setMessage/-720084151 var1579 var2695 var1853)) ; Statement: virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent: void setMessage(java.lang.String,int)>(r16, i0) 

(declare-const var1579!1 var1652)
(declare-const var2695!1 String)
(declare-const var1853!1 Int)
(assert true) ; Non Conditional
(define-const var1511 var940 (isLoggingMessage/173117946 var389)) ; Statement: $r3 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.lang.ThreadLocal isLoggingMessage> 
(assert true)
(define-const var1501 var2627 (get/-896773187 var1511)) ; Statement: $r5 = virtualinvoke $r3.<java.lang.ThreadLocal: java.lang.Object get()>() 
(define-const var3711 var3727 var3727-FALSE) ; Statement: $r4 = <java.lang.Boolean: java.lang.Boolean FALSE> 
 ; Statement: if $r5 == $r4 goto $r7 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.lang.ThreadLocal isLoggingMessage> 
(assert (not (= var1501 (cast-from-var3727-to-var2627 var3711)))) ; Negate: Cond: $r5 == $r4  
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var1928_lineSeparator/-342590142=([], java.lang.String), endsWith/985337093=([java.lang.String, java.lang.String], boolean), setMessage/-720084151=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent, java.lang.String, int], void), isLoggingMessage/173117946=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project], java.lang.ThreadLocal), get/-896773187=([java.lang.ThreadLocal], java.lang.Object), cast-from-var3727-to-var2627=([java.lang.Boolean], java.lang.Object)}
; {var1936=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var389=r2, var1652=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent, var1579=r1, var2695=r16, var2489=null_type, var1853=i0, var1928=java.lang.System, var2902=$r0, var3034=$z0, var940=java.lang.ThreadLocal, var1511=$r3, var2627=java.lang.Object, var1501=$r5, var3727=java.lang.Boolean, var3711=$r4}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var1936, r2=var389, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent=var1652, r1=var1579, r16=var2695, null_type=var2489, i0=var1853, java.lang.System=var1928, $r0=var2902, $z0=var3034, java.lang.ThreadLocal=var940, $r3=var1511, java.lang.Object=var2627, $r5=var1501, java.lang.Boolean=var3727, $r4=var3711}
;seq <java.lang.String: boolean endsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project;	r1 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent;	r16 := @parameter1: java.lang.String;	i0 := @parameter2: int;	if r16 != null goto $r0 = staticinvoke <java.lang.System: java.lang.String lineSeparator()>();	$r0 = staticinvoke <java.lang.System: java.lang.String lineSeparator()>();	$z0 = virtualinvoke r16.<java.lang.String: boolean endsWith(java.lang.String)>($r0);	if $z0 == 0 goto virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent: void setMessage(java.lang.String,int)>(r16, i0);	virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent: void setMessage(java.lang.String,int)>(r16, i0);	$r3 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.lang.ThreadLocal isLoggingMessage>;	$r5 = virtualinvoke $r3.<java.lang.ThreadLocal: java.lang.Object get()>();	$r4 = <java.lang.Boolean: java.lang.Boolean FALSE>;	if $r5 == $r4 goto $r7 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.lang.ThreadLocal isLoggingMessage>;	return
;block_num 5