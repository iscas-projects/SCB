(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3678 0)
(declare-sort var2861 0)
(declare-sort var2811 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(declare-const null-var3678 var3678)
(declare-const null-var2861 var2861)
(declare-const null-String String)
(declare-const var3678-LOWER_UNDERSCORE var2861)
(declare-const var345 var3678) ; Statement: r3 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat$1 
(assert (not (= var345 null-var3678)))
(declare-const var2753 var2861) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat 
(assert (not (= var2753 null-var2861)))
(declare-const var2235 String) ; Statement: r4 := @parameter1: java.lang.String 
(assert (not (= var2235 null-String)))
(define-const var983 var2861 var3678-LOWER_UNDERSCORE) ; Statement: $r1 = <com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat$1: com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat LOWER_UNDERSCORE> 
 ; Statement: if r0 != $r1 goto $r2 = <com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat$1: com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat UPPER_UNDERSCORE> 
(assert (not (not (= var2753 var983)))) ; Negate: Cond: r0 != $r1  
(assert true)
(define-const var50 String (replace/1524665721 var2235 45 95)) ; Statement: $r8 = virtualinvoke r4.<java.lang.String: java.lang.String replace(char,char)>(45, 95) 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {replace/1524665721=([java.lang.String, char, char], java.lang.String)}
; {var3678=com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat$1, var345=r3, var2861=com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat, var2753=r0, var2235=r4, var2811=null_type, var983=$r1, var50=$r8}
; {com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat$1=var3678, r3=var345, com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat=var2861, r0=var2753, r4=var2235, null_type=var2811, $r1=var983, $r8=var50}
;seq <java.lang.String: java.lang.String replace(char,char)>
;cnt {"<java.lang.String: java.lang.String replace(char,char)>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat$1;	r0 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat;	r4 := @parameter1: java.lang.String;	$r1 = <com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat$1: com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat LOWER_UNDERSCORE>;	if r0 != $r1 goto $r2 = <com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat$1: com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat UPPER_UNDERSCORE>;	$r8 = virtualinvoke r4.<java.lang.String: java.lang.String replace(char,char)>(45, 95);	return $r8
;block_num 2