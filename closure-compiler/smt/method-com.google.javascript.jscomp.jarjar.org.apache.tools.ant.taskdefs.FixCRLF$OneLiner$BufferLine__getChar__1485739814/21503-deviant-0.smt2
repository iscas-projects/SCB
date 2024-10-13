(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2393 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun line/1852262270 (var2393) String)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-const null-var2393 var2393)
(declare-const null-Int Int)
(declare-const var740 var2393) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner$BufferLine 
(assert (not (= var740 null-var2393)))
(declare-const var3172 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3172 null-Int)))
(define-const var1160 String (line/1852262270 var740)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner$BufferLine: java.lang.String line> 
(assert (not (and true (and (> (str.len var1160) var3172) (<= 0 var3172)))))
(check-sat)
(get-model)
(get-unsat-core)
; {line/1852262270=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner$BufferLine], java.lang.String), charAt/698050440=([java.lang.String, int], char)}
; {var2393=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner$BufferLine, var740=r0, var3172=i0, var1160=$r1, var2700=$c1}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner$BufferLine=var2393, r0=var740, i0=var3172, $r1=var1160, $c1=var2700}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner$BufferLine;	i0 := @parameter0: int;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner$BufferLine: java.lang.String line>;	$c1 = virtualinvoke $r1.<java.lang.String: char charAt(int)>(i0);	return $c1
;block_num 1