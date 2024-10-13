(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var607 0)
(declare-sort var688 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_valueOf/-371898945 (Int) String)
(declare-fun withKeyValueSeparator/831376688 (var607 String) var688)
(declare-const null-var607 var607)
(declare-const null-Int Int)
(declare-const var2405 var607) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.Joiner 
(assert (not (= var2405 null-var607)))
(declare-const var40 Int) ; Statement: c0 := @parameter0: char 
(assert (not (= var40 null-Int)))
(define-const var2353 String (String_valueOf/-371898945 var40)) ; Statement: $r1 = staticinvoke <java.lang.String: java.lang.String valueOf(char)>(c0) 
(assert true)
(define-const var1145 var688 (withKeyValueSeparator/831376688 var2405 var2353)) ; Statement: $r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.base.Joiner: com.google.javascript.jscomp.jarjar.com.google.common.base.Joiner$MapJoiner withKeyValueSeparator(java.lang.String)>($r1) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String_valueOf/-371898945=([char], java.lang.String), withKeyValueSeparator/831376688=([com.google.javascript.jscomp.jarjar.com.google.common.base.Joiner, java.lang.String], com.google.javascript.jscomp.jarjar.com.google.common.base.Joiner$MapJoiner)}
; {var607=com.google.javascript.jscomp.jarjar.com.google.common.base.Joiner, var2405=r0, var40=c0, var2353=$r1, var688=com.google.javascript.jscomp.jarjar.com.google.common.base.Joiner$MapJoiner, var1145=$r2}
; {com.google.javascript.jscomp.jarjar.com.google.common.base.Joiner=var607, r0=var2405, c0=var40, $r1=var2353, com.google.javascript.jscomp.jarjar.com.google.common.base.Joiner$MapJoiner=var688, $r2=var1145}
;seq <java.lang.String: java.lang.String valueOf(char)>
;cnt {"<java.lang.String: java.lang.String valueOf(char)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.Joiner;	c0 := @parameter0: char;	$r1 = staticinvoke <java.lang.String: java.lang.String valueOf(char)>(c0);	$r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.base.Joiner: com.google.javascript.jscomp.jarjar.com.google.common.base.Joiner$MapJoiner withKeyValueSeparator(java.lang.String)>($r1);	return $r2
;block_num 1