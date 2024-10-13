(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2545 0)
(declare-sort var2160 0)
(declare-sort var2358 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun var2358_quote/811834350 (String) String)
(declare-const null-var2545 var2545)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var2082 var2545) ; Statement: r3 := @this: cn.hutool.core.text.AntPathMatcher$AntPathStringMatcher 
(assert (not (= var2082 null-var2545)))
(declare-const var909 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var909 null-String)))
(declare-const var3812 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3812 null-Int)))
(declare-const var1026 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var1026 null-Int)))
 ; Statement: if i0 != i1 goto $r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(i0, i1) 
(assert (not (= var3812 var1026))) ; Cond: i0 != i1 
(assert (and true (and (>= var3812 0) (>= (str.len var909) var1026) (>= var1026 var3812))))
(define-const var3526 String (substring/-1240304868 var909 var3812 var1026)) ; Statement: $r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(i0, i1) 
(define-const var632 String (var2358_quote/811834350 var3526)) ; Statement: $r2 = staticinvoke <java.util.regex.Pattern: java.lang.String quote(java.lang.String)>($r1) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {substring/-1240304868=([java.lang.String, int, int], java.lang.String), var2358_quote/811834350=([java.lang.String], java.lang.String)}
; {var2545=cn.hutool.core.text.AntPathMatcher$AntPathStringMatcher, var2082=r3, var909=r0, var2160=null_type, var3812=i0, var1026=i1, var3526=$r1, var2358=java.util.regex.Pattern, var632=$r2}
; {cn.hutool.core.text.AntPathMatcher$AntPathStringMatcher=var2545, r3=var2082, r0=var909, null_type=var2160, i0=var3812, i1=var1026, $r1=var3526, java.util.regex.Pattern=var2358, $r2=var632}
;seq <java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r3 := @this: cn.hutool.core.text.AntPathMatcher$AntPathStringMatcher;	r0 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i1 := @parameter2: int;	if i0 != i1 goto $r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(i0, i1);	$r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(i0, i1);	$r2 = staticinvoke <java.util.regex.Pattern: java.lang.String quote(java.lang.String)>($r1);	return $r2
;block_num 2