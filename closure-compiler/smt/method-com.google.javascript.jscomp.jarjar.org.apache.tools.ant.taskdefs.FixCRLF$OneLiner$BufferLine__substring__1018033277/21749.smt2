(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3601 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun line/1852262270 (var3601) String)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-const null-var3601 var3601)
(declare-const null-Int Int)
(declare-const var3515 var3601) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner$BufferLine 
(assert (not (= var3515 null-var3601)))
(declare-const var3670 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3670 null-Int)))
(declare-const var2411 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var2411 null-Int)))
(define-const var3143 String (line/1852262270 var3515)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner$BufferLine: java.lang.String line> 
(assert (and true (and (>= var3670 0) (>= (str.len var3143) var2411) (>= var2411 var3670))))
(define-const var3940 String (substring/-1240304868 var3143 var3670 var2411)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.String: java.lang.String substring(int,int)>(i0, i1) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {line/1852262270=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner$BufferLine], java.lang.String), substring/-1240304868=([java.lang.String, int, int], java.lang.String)}
; {var3601=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner$BufferLine, var3515=r0, var3670=i0, var2411=i1, var3143=$r1, var3940=$r2}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner$BufferLine=var3601, r0=var3515, i0=var3670, i1=var2411, $r1=var3143, $r2=var3940}
;seq <java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner$BufferLine;	i0 := @parameter0: int;	i1 := @parameter1: int;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner$BufferLine: java.lang.String line>;	$r2 = virtualinvoke $r1.<java.lang.String: java.lang.String substring(int,int)>(i0, i1);	return $r2
;block_num 1