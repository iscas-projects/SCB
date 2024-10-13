(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3872 0)
(declare-sort var1126 0)
(declare-sort var2700 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-const null-var3872 var3872)
(declare-const null-String String)
(declare-const null-var2700 var2700)
(declare-const var3161 var3872) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SQLExec 
(assert (not (= var3161 null-var3872)))
(declare-const var750 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var750 null-String)))
(declare-const var2585 var2700) ; Statement: r16 := @parameter1: java.io.PrintStream 
(assert (not (= var2585 null-var2700)))
(assert true)
(define-const var229 String (trim/-847153721 var750)) ; Statement: $r1 = virtualinvoke r0.<java.lang.String: java.lang.String trim()>() 
(assert true)
(define-const var2237 Bool (isEmpty/-1285796103 var229)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto r34 = null 
(assert (not (= (ite var2237 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {trim/-847153721=([java.lang.String], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean)}
; {var3872=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SQLExec, var3161=r2, var750=r0, var1126=null_type, var2700=java.io.PrintStream, var2585=r16, var229=$r1, var2237=$z0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SQLExec=var3872, r2=var3161, r0=var750, null_type=var1126, java.io.PrintStream=var2700, r16=var2585, $r1=var229, $z0=var2237}
;seq <java.lang.String: java.lang.String trim()>;	<java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: java.lang.String trim()>": 1,"<java.lang.String: boolean isEmpty()>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SQLExec;	r0 := @parameter0: java.lang.String;	r16 := @parameter1: java.io.PrintStream;	$r1 = virtualinvoke r0.<java.lang.String: java.lang.String trim()>();	$z0 = virtualinvoke $r1.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto r34 = null;	return
;block_num 2