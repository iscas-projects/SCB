(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2693 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun line/1852262270 (var2693) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var2693 var2693)
(declare-const var2259 var2693) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner$BufferLine 
(assert (not (= var2259 null-var2693)))
(define-const var2448 String (line/1852262270 var2259)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner$BufferLine: java.lang.String line> 
(assert true)
(define-const var3038 Int (length/-134980193 var2448)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int length()>() 
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {line/1852262270=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner$BufferLine], java.lang.String), length/-134980193=([java.lang.String], int)}
; {var2693=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner$BufferLine, var2259=r0, var2448=$r1, var3038=$i0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner$BufferLine=var2693, r0=var2259, $r1=var2448, $i0=var3038}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner$BufferLine;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner$BufferLine: java.lang.String line>;	$i0 = virtualinvoke $r1.<java.lang.String: int length()>();	return $i0
;block_num 1