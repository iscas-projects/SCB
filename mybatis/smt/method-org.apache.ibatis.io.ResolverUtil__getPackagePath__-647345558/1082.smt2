(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1652 0)
(declare-sort var2762 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(declare-const null-var1652 var1652)
(declare-const null-String String)
(declare-const var610 var1652) ; Statement: r1 := @this: org.apache.ibatis.io.ResolverUtil 
(assert (not (= var610 null-var1652)))
(declare-const var3835 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3835 null-String)))
 ; Statement: if r0 != null goto $r2 = virtualinvoke r0.<java.lang.String: java.lang.String replace(char,char)>(46, 47) 
(assert (not (= var3835 null-String))) ; Cond: r0 != null 
(assert true)
(define-const var1198 String (replace/1524665721 var3835 46 47)) ; Statement: $r2 = virtualinvoke r0.<java.lang.String: java.lang.String replace(char,char)>(46, 47) 
(assert true) ; Non Conditional
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {replace/1524665721=([java.lang.String, char, char], java.lang.String)}
; {var1652=org.apache.ibatis.io.ResolverUtil, var610=r1, var3835=r0, var2762=null_type, var1198=$r2}
; {org.apache.ibatis.io.ResolverUtil=var1652, r1=var610, r0=var3835, null_type=var2762, $r2=var1198}
;seq <java.lang.String: java.lang.String replace(char,char)>
;cnt {"<java.lang.String: java.lang.String replace(char,char)>": 1}
;stmts r1 := @this: org.apache.ibatis.io.ResolverUtil;	r0 := @parameter0: java.lang.String;	if r0 != null goto $r2 = virtualinvoke r0.<java.lang.String: java.lang.String replace(char,char)>(46, 47);	$r2 = virtualinvoke r0.<java.lang.String: java.lang.String replace(char,char)>(46, 47);	return $r2
;block_num 3