(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var430 0)
(declare-sort var3830 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun exists/1072868559 (var3830) Bool)
(declare-fun manifestFile/1631861567 (var430) var3830)
(declare-const null-var430 var430)
(declare-const null-var3830 var3830)
(declare-const var2737 var430) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar 
(assert (not (= var2737 null-var430)))
(declare-const var1317 var3830) ; Statement: r0 := @parameter0: java.io.File 
(assert (not (= var1317 null-var3830)))
(assert true)
(define-const var2035 Bool (exists/1072868559 var1317)) ; Statement: $z0 = virtualinvoke r0.<java.io.File: boolean exists()>() 
 ; Statement: if $z0 != 0 goto r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar: java.io.File manifestFile> = r0 
(assert (not (= (ite var2035 1 0) 0))) ; Cond: $z0 != 0 
(declare-const var2737!1 var430)
(assert (not (= var2737!1 null-var430)))
(assert (= (manifestFile/1631861567 var2737!1) var1317)) ; Statement: r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar: java.io.File manifestFile> = r0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {exists/1072868559=([java.io.File], boolean), manifestFile/1631861567=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar], java.io.File)}
; {var430=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar, var2737=r1, var3830=java.io.File, var1317=r0, var2035=$z0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar=var430, r1=var2737, java.io.File=var3830, r0=var1317, $z0=var2035}
;seq 
;cnt {}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar;	r0 := @parameter0: java.io.File;	$z0 = virtualinvoke r0.<java.io.File: boolean exists()>();	if $z0 != 0 goto r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar: java.io.File manifestFile> = r0;	r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar: java.io.File manifestFile> = r0;	return
;block_num 2