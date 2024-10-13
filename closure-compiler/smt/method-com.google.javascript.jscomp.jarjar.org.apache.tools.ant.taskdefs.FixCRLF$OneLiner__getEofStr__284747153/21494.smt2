(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var772 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun eofStr/1258177498 (var772) String)
(declare-fun substring/1996688697 (String Int) String)
(declare-const null-var772 var772)
(declare-const var2191 var772) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner 
(assert (not (= var2191 null-var772)))
(define-const var3501 String (eofStr/1258177498 var2191)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner: java.lang.StringBuffer eofStr> 
(assert true)
(define-const var848 String (substring/1996688697 var3501 0)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuffer: java.lang.String substring(int)>(0) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {eofStr/1258177498=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner], java.lang.StringBuffer), substring/1996688697=([java.lang.StringBuffer, int], java.lang.String)}
; {var772=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner, var2191=r0, var3501=$r1, var848=$r2}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner=var772, r0=var2191, $r1=var3501, $r2=var848}
;seq <java.lang.StringBuffer: java.lang.String substring(int)>
;cnt {"<java.lang.StringBuffer: java.lang.String substring(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.FixCRLF$OneLiner: java.lang.StringBuffer eofStr>;	$r2 = virtualinvoke $r1.<java.lang.StringBuffer: java.lang.String substring(int)>(0);	return $r2
;block_num 1