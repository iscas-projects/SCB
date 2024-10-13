(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var178 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var178-init () var178)
(declare-fun String_valueOf/-371898945 (Int) String)
(declare-fun <init>/386276406 (var178 String) void)
(declare-const null-Int Int)
(declare-const var1014 Int) ; Statement: c0 := @parameter0: char 
(assert (not (= var1014 null-Int)))
(define-const var1800 var178 var178-init) ; Statement: $r0 = new com.google.javascript.jscomp.jarjar.com.google.common.base.Joiner 
(define-const var1728 String (String_valueOf/-371898945 var1014)) ; Statement: $r1 = staticinvoke <java.lang.String: java.lang.String valueOf(char)>(c0) 
(assert true)
;(assert (<init>/386276406 var1800 var1728)) ; Statement: specialinvoke $r0.<com.google.javascript.jscomp.jarjar.com.google.common.base.Joiner: void <init>(java.lang.String)>($r1) 

(declare-const var1800!1 var178)
(declare-const var1728!1 String)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var178-init=([], com.google.javascript.jscomp.jarjar.com.google.common.base.Joiner), String_valueOf/-371898945=([char], java.lang.String), <init>/386276406=([com.google.javascript.jscomp.jarjar.com.google.common.base.Joiner, java.lang.String], void)}
; {var1014=c0, var178=com.google.javascript.jscomp.jarjar.com.google.common.base.Joiner, var1800=$r0, var1728=$r1}
; {c0=var1014, com.google.javascript.jscomp.jarjar.com.google.common.base.Joiner=var178, $r0=var1800, $r1=var1728}
;seq <java.lang.String: java.lang.String valueOf(char)>
;cnt {"<java.lang.String: java.lang.String valueOf(char)>": 1}
;stmts c0 := @parameter0: char;	$r0 = new com.google.javascript.jscomp.jarjar.com.google.common.base.Joiner;	$r1 = staticinvoke <java.lang.String: java.lang.String valueOf(char)>(c0);	specialinvoke $r0.<com.google.javascript.jscomp.jarjar.com.google.common.base.Joiner: void <init>(java.lang.String)>($r1);	return $r0
;block_num 1