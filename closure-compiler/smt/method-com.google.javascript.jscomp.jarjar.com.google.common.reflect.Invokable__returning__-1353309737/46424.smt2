(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1852 0)
(declare-sort var2784 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getReturnType/2026181807 (var1852) var2784)
(declare-fun isSupertypeOf/1215961613 (var2784 var2784) Bool)
(declare-const null-var1852 var1852)
(declare-const null-var2784 var2784)
(declare-const var1122 var1852) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Invokable 
(assert (not (= var1122 null-var1852)))
(declare-const var3403 var2784) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken 
(assert (not (= var3403 null-var2784)))
(assert true)
(define-const var2107 var2784 (getReturnType/2026181807 var1122)) ; Statement: $r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Invokable: com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken getReturnType()>() 
(assert true)
(define-const var3580 Bool (isSupertypeOf/1215961613 var3403 var2107)) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken: boolean isSupertypeOf(com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken)>($r2) 
 ; Statement: if $z0 != 0 goto return r1 
(assert (not (= (ite var3580 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return r1 
(check-sat)
(get-model)
(get-unsat-core)
; {getReturnType/2026181807=([com.google.javascript.jscomp.jarjar.com.google.common.reflect.Invokable], com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken), isSupertypeOf/1215961613=([com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken, com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken], boolean)}
; {var1852=com.google.javascript.jscomp.jarjar.com.google.common.reflect.Invokable, var1122=r1, var2784=com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken, var3403=r0, var2107=$r2, var3580=$z0}
; {com.google.javascript.jscomp.jarjar.com.google.common.reflect.Invokable=var1852, r1=var1122, com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken=var2784, r0=var3403, $r2=var2107, $z0=var3580}
;seq 
;cnt {}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Invokable;	r0 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken;	$r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Invokable: com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken getReturnType()>();	$z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken: boolean isSupertypeOf(com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken)>($r2);	if $z0 != 0 goto return r1;	return r1
;block_num 2