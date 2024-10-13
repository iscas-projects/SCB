(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var303 0)
(declare-sort var1371 0)
(declare-sort var2001 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(declare-const null-var303 var303)
(declare-const null-var1371 var1371)
(declare-const null-String String)
(declare-const var303-LOWER_HYPHEN var1371)
(declare-const var437 var303) ; Statement: r3 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat$2 
(assert (not (= var437 null-var303)))
(declare-const var175 var1371) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat 
(assert (not (= var175 null-var1371)))
(declare-const var1647 String) ; Statement: r4 := @parameter1: java.lang.String 
(assert (not (= var1647 null-String)))
(define-const var541 var1371 var303-LOWER_HYPHEN) ; Statement: $r1 = <com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat$2: com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat LOWER_HYPHEN> 
 ; Statement: if r0 != $r1 goto $r2 = <com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat$2: com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat UPPER_UNDERSCORE> 
(assert (not (not (= var175 var541)))) ; Negate: Cond: r0 != $r1  
(assert true)
(define-const var2324 String (replace/1524665721 var1647 95 45)) ; Statement: $r7 = virtualinvoke r4.<java.lang.String: java.lang.String replace(char,char)>(95, 45) 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {replace/1524665721=([java.lang.String, char, char], java.lang.String)}
; {var303=com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat$2, var437=r3, var1371=com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat, var175=r0, var1647=r4, var2001=null_type, var541=$r1, var2324=$r7}
; {com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat$2=var303, r3=var437, com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat=var1371, r0=var175, r4=var1647, null_type=var2001, $r1=var541, $r7=var2324}
;seq <java.lang.String: java.lang.String replace(char,char)>
;cnt {"<java.lang.String: java.lang.String replace(char,char)>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat$2;	r0 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat;	r4 := @parameter1: java.lang.String;	$r1 = <com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat$2: com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat LOWER_HYPHEN>;	if r0 != $r1 goto $r2 = <com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat$2: com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat UPPER_UNDERSCORE>;	$r7 = virtualinvoke r4.<java.lang.String: java.lang.String replace(char,char)>(95, 45);	return $r7
;block_num 2