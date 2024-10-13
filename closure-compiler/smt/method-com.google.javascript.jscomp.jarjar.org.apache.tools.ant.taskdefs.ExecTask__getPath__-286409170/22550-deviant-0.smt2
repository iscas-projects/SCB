(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3837 0)
(declare-sort var3069 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-const null-var3837 var3837)
(declare-const null-String String)
(declare-const var560 var3837) ; Statement: r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecTask 
(assert (not (= var560 null-var3837)))
(declare-const var1144 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1144 null-String)))
(define-const var2603 String "PATH=") ; Statement: $r1 = "PATH=" 
(assert true)
(define-const var2740 Int (length/-134980193 var2603)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int length()>() 
(assert (not (and true (and (>= var2740 0) (>= (str.len var1144) var2740)))))
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), substring/850833817=([java.lang.String, int], java.lang.String)}
; {var3837=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecTask, var560=r3, var1144=r0, var3069=null_type, var2603=$r1, var2740=$i0, var1287=$r2}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecTask=var3837, r3=var560, r0=var1144, null_type=var3069, $r1=var2603, $i0=var2740, $r2=var1287}
;seq <java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecTask;	r0 := @parameter0: java.lang.String;	$r1 = "PATH=";	$i0 = virtualinvoke $r1.<java.lang.String: int length()>();	$r2 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>($i0);	return $r2
;block_num 1