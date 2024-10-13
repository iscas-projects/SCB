(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var337 0)
(declare-sort var1127 0)
(declare-sort var3711 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun tSqlCommand/-1908367811 (var337) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun tSrcResource/-1908367811 (var337) var3711)
(declare-const null-var337 var337)
(declare-const null-var1127 var1127)
(declare-const null-var3711 var3711)
(declare-const var3788 var337) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SQLExec$Transaction 
(assert (not (= var3788 null-var337)))
(declare-const var1324 var1127) ; Statement: r17 := @parameter0: java.io.PrintStream 
(assert (not (= var1324 null-var1127)))
(define-const var1567 String (tSqlCommand/-1908367811 var3788)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SQLExec$Transaction: java.lang.String tSqlCommand> 
(assert true)
(define-const var3688 Bool (isEmpty/-1285796103 var1567)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SQLExec$Transaction: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource tSrcResource> 
(assert (not (= (ite var3688 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2084 var3711 (tSrcResource/-1908367811 var3788)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SQLExec$Transaction: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource tSrcResource> 
 ; Statement: if $r2 == null goto return 
(assert (= var2084 null-var3711)) ; Cond: $r2 == null 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {tSqlCommand/-1908367811=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SQLExec$Transaction], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean), tSrcResource/-1908367811=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SQLExec$Transaction], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource)}
; {var337=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SQLExec$Transaction, var3788=r0, var1127=java.io.PrintStream, var1324=r17, var1567=$r1, var3688=$z0, var3711=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource, var2084=$r2}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SQLExec$Transaction=var337, r0=var3788, java.io.PrintStream=var1127, r17=var1324, $r1=var1567, $z0=var3688, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource=var3711, $r2=var2084}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SQLExec$Transaction;	r17 := @parameter0: java.io.PrintStream;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SQLExec$Transaction: java.lang.String tSqlCommand>;	$z0 = virtualinvoke $r1.<java.lang.String: boolean isEmpty()>();	if $z0 != 0 goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SQLExec$Transaction: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource tSrcResource>;	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SQLExec$Transaction: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource tSrcResource>;	if $r2 == null goto return;	return
;block_num 3