(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var152 0)
(declare-sort var269 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun value/-1425246013 (var152) String)
(declare-fun toString/-522406933 (var269) String)
(declare-const null-var152 var152)
(declare-const null-var269 var269)
(declare-const var3546 var152) ; Statement: r1 := @this: com.alibaba.fastjson2.JSONPathFunction$IndexString 
(assert (not (= var3546 null-var152)))
(declare-const var3220 var269) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var3220 null-var269)))
 ; Statement: if r0 != null goto $r2 = r1.<com.alibaba.fastjson2.JSONPathFunction$IndexString: java.lang.String value> 
(assert (not (= var3220 null-var269))) ; Cond: r0 != null 
(define-const var1316 String (value/-1425246013 var3546)) ; Statement: $r2 = r1.<com.alibaba.fastjson2.JSONPathFunction$IndexString: java.lang.String value> 
(assert true)
(define-const var2660 String (toString/-522406933 var3220)) ; Statement: $r3 = virtualinvoke r0.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var612 Bool (= var1316 var2660)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r3) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {value/-1425246013=([com.alibaba.fastjson2.JSONPathFunction$IndexString], java.lang.String), toString/-522406933=([java.lang.Object], java.lang.String)}
; {var152=com.alibaba.fastjson2.JSONPathFunction$IndexString, var3546=r1, var269=java.lang.Object, var3220=r0, var1316=$r2, var2660=$r3, var612=$z0}
; {com.alibaba.fastjson2.JSONPathFunction$IndexString=var152, r1=var3546, java.lang.Object=var269, r0=var3220, $r2=var1316, $r3=var2660, $z0=var612}
;seq <java.lang.Object: java.lang.String toString()>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @this: com.alibaba.fastjson2.JSONPathFunction$IndexString;	r0 := @parameter0: java.lang.Object;	if r0 != null goto $r2 = r1.<com.alibaba.fastjson2.JSONPathFunction$IndexString: java.lang.String value>;	$r2 = r1.<com.alibaba.fastjson2.JSONPathFunction$IndexString: java.lang.String value>;	$r3 = virtualinvoke r0.<java.lang.Object: java.lang.String toString()>();	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r3);	return $z0
;block_num 2