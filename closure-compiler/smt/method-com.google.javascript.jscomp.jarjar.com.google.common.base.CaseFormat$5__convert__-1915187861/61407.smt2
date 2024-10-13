(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2084 0)
(declare-sort var322 0)
(declare-sort var2278 0)
(declare-sort var3080 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(declare-fun var3080_toLowerCase/1634554405 (String) String)
(declare-const null-var2084 var2084)
(declare-const null-var322 var322)
(declare-const null-String String)
(declare-const var2084-LOWER_HYPHEN var322)
(declare-const var3993 var2084) ; Statement: r3 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat$5 
(assert (not (= var3993 null-var2084)))
(declare-const var142 var322) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat 
(assert (not (= var142 null-var322)))
(declare-const var1238 String) ; Statement: r4 := @parameter1: java.lang.String 
(assert (not (= var1238 null-String)))
(define-const var1898 var322 var2084-LOWER_HYPHEN) ; Statement: $r1 = <com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat$5: com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat LOWER_HYPHEN> 
 ; Statement: if r0 != $r1 goto $r2 = <com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat$5: com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat LOWER_UNDERSCORE> 
(assert (not (not (= var142 var1898)))) ; Negate: Cond: r0 != $r1  
(assert true)
(define-const var2087 String (replace/1524665721 var1238 95 45)) ; Statement: $r7 = virtualinvoke r4.<java.lang.String: java.lang.String replace(char,char)>(95, 45) 
(define-const var2358 String (var3080_toLowerCase/1634554405 var2087)) ; Statement: $r8 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Ascii: java.lang.String toLowerCase(java.lang.String)>($r7) 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {replace/1524665721=([java.lang.String, char, char], java.lang.String), var3080_toLowerCase/1634554405=([java.lang.String], java.lang.String)}
; {var2084=com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat$5, var3993=r3, var322=com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat, var142=r0, var1238=r4, var2278=null_type, var1898=$r1, var2087=$r7, var3080=com.google.javascript.jscomp.jarjar.com.google.common.base.Ascii, var2358=$r8}
; {com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat$5=var2084, r3=var3993, com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat=var322, r0=var142, r4=var1238, null_type=var2278, $r1=var1898, $r7=var2087, com.google.javascript.jscomp.jarjar.com.google.common.base.Ascii=var3080, $r8=var2358}
;seq <java.lang.String: java.lang.String replace(char,char)>
;cnt {"<java.lang.String: java.lang.String replace(char,char)>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat$5;	r0 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat;	r4 := @parameter1: java.lang.String;	$r1 = <com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat$5: com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat LOWER_HYPHEN>;	if r0 != $r1 goto $r2 = <com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat$5: com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat LOWER_UNDERSCORE>;	$r7 = virtualinvoke r4.<java.lang.String: java.lang.String replace(char,char)>(95, 45);	$r8 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Ascii: java.lang.String toLowerCase(java.lang.String)>($r7);	return $r8
;block_num 2