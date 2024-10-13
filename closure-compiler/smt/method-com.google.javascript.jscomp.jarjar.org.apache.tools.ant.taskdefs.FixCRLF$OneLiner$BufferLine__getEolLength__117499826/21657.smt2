(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var466 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun eolStr/1852262270 (var466) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var466 var466)
(declare-const var2469 var466) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner$BufferLine 
(assert (not (= var2469 null-var466)))
(define-const var2188 String (eolStr/1852262270 var2469)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner$BufferLine: java.lang.String eolStr> 
(assert true)
(define-const var3292 Int (length/-134980193 var2188)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int length()>() 
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {eolStr/1852262270=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner$BufferLine], java.lang.String), length/-134980193=([java.lang.String], int)}
; {var466=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner$BufferLine, var2469=r0, var2188=$r1, var3292=$i0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner$BufferLine=var466, r0=var2469, $r1=var2188, $i0=var3292}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner$BufferLine;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner$BufferLine: java.lang.String eolStr>;	$i0 = virtualinvoke $r1.<java.lang.String: int length()>();	return $i0
;block_num 1