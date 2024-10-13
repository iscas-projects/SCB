(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3375 0)
(declare-sort var1559 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-fun driver/-1769705380 (var3375) String)
(declare-const null-var3375 var3375)
(declare-const null-String String)
(declare-const var3074 var3375) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.JDBCTask 
(assert (not (= var3074 null-var3375)))
(declare-const var519 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var519 null-String)))
(assert true)
(define-const var3908 String (trim/-847153721 var519)) ; Statement: $r2 = virtualinvoke r1.<java.lang.String: java.lang.String trim()>() 
(declare-const var3074!1 var3375)
(assert (not (= var3074!1 null-var3375)))
(assert (= (driver/-1769705380 var3074!1) var3908)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.JDBCTask: java.lang.String driver> = $r2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {trim/-847153721=([java.lang.String], java.lang.String), driver/-1769705380=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.JDBCTask], java.lang.String)}
; {var3375=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.JDBCTask, var3074=r0, var519=r1, var1559=null_type, var3908=$r2}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.JDBCTask=var3375, r0=var3074, r1=var519, null_type=var1559, $r2=var3908}
;seq <java.lang.String: java.lang.String trim()>
;cnt {"<java.lang.String: java.lang.String trim()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.JDBCTask;	r1 := @parameter0: java.lang.String;	$r2 = virtualinvoke r1.<java.lang.String: java.lang.String trim()>();	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.JDBCTask: java.lang.String driver> = $r2;	return
;block_num 1