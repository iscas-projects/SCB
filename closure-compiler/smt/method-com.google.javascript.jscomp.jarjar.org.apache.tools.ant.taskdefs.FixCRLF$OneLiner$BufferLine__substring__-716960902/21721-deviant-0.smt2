(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2416 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun line/1852262270 (var2416) String)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-const null-var2416 var2416)
(declare-const null-Int Int)
(declare-const var2284 var2416) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner$BufferLine 
(assert (not (= var2284 null-var2416)))
(declare-const var1758 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1758 null-Int)))
(define-const var3995 String (line/1852262270 var2284)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner$BufferLine: java.lang.String line> 
(assert (not (and true (and (>= var1758 0) (>= (str.len var3995) var1758)))))
(check-sat)
(get-model)
(get-unsat-core)
; {line/1852262270=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner$BufferLine], java.lang.String), substring/850833817=([java.lang.String, int], java.lang.String)}
; {var2416=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner$BufferLine, var2284=r0, var1758=i0, var3995=$r1, var3127=$r2}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner$BufferLine=var2416, r0=var2284, i0=var1758, $r1=var3995, $r2=var3127}
;seq <java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner$BufferLine;	i0 := @parameter0: int;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner$BufferLine: java.lang.String line>;	$r2 = virtualinvoke $r1.<java.lang.String: java.lang.String substring(int)>(i0);	return $r2
;block_num 1