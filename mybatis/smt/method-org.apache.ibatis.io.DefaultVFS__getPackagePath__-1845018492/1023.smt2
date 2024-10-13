(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var348 0)
(declare-sort var2353 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(declare-const null-var348 var348)
(declare-const null-String String)
(declare-const var2829 var348) ; Statement: r1 := @this: org.apache.ibatis.io.DefaultVFS 
(assert (not (= var2829 null-var348)))
(declare-const var3002 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3002 null-String)))
 ; Statement: if r0 != null goto $r2 = virtualinvoke r0.<java.lang.String: java.lang.String replace(char,char)>(46, 47) 
(assert (not (= var3002 null-String))) ; Cond: r0 != null 
(assert true)
(define-const var2023 String (replace/1524665721 var3002 46 47)) ; Statement: $r2 = virtualinvoke r0.<java.lang.String: java.lang.String replace(char,char)>(46, 47) 
(assert true) ; Non Conditional
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {replace/1524665721=([java.lang.String, char, char], java.lang.String)}
; {var348=org.apache.ibatis.io.DefaultVFS, var2829=r1, var3002=r0, var2353=null_type, var2023=$r2}
; {org.apache.ibatis.io.DefaultVFS=var348, r1=var2829, r0=var3002, null_type=var2353, $r2=var2023}
;seq <java.lang.String: java.lang.String replace(char,char)>
;cnt {"<java.lang.String: java.lang.String replace(char,char)>": 1}
;stmts r1 := @this: org.apache.ibatis.io.DefaultVFS;	r0 := @parameter0: java.lang.String;	if r0 != null goto $r2 = virtualinvoke r0.<java.lang.String: java.lang.String replace(char,char)>(46, 47);	$r2 = virtualinvoke r0.<java.lang.String: java.lang.String replace(char,char)>(46, 47);	return $r2
;block_num 3