(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2197 0)
(declare-sort var2733 0)
(declare-sort var1736 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var2733-init () (Array Int var2733))
(declare-fun var1736_notBlank/-161903167 (String String (Array Int var2733)) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const var981 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var981 null-String)))
(define-const var1391 (Array Int var2733) arr-var2733-init) ; Statement: $r0 = newarray (java.lang.Object)[0] 
;(assert (var1736_notBlank/-161903167 (cast-from-String-to-String var981) "id card must be not blank!" var1391)) ; Statement: staticinvoke <cn.hutool.core.lang.Assert: java.lang.CharSequence notBlank(java.lang.CharSequence,java.lang.String,java.lang.Object[])>(r4, "id card must be not blank!", $r0) 

(declare-const var981!1 String)
(declare-const var2062 String)
(declare-const var1391!1 (Array Int var2733))
(assert true)
(define-const var3208 Int (length/-134980193 var981!1)) ; Statement: i0 = virtualinvoke r4.<java.lang.String: int length()>() 
 ; Statement: if i0 >= 15 goto (branch) 
(assert (not (>= var3208 15))) ; Negate: Cond: i0 >= 15  
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var2733-init=([], java.lang.Object[]), var1736_notBlank/-161903167=([java.lang.CharSequence, java.lang.String, java.lang.Object[]], java.lang.CharSequence), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), length/-134980193=([java.lang.String], int)}
; {var981=r4, var2197=null_type, var2733=java.lang.Object, var1391=$r0, var1736=cn.hutool.core.lang.Assert, var2062="id card must be not blank!", var3208=i0}
; {r4=var981, null_type=var2197, java.lang.Object=var2733, $r0=var1391, cn.hutool.core.lang.Assert=var1736, "id card must be not blank!"=var2062, i0=var3208}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r4 := @parameter0: java.lang.String;	$r0 = newarray (java.lang.Object)[0];	staticinvoke <cn.hutool.core.lang.Assert: java.lang.CharSequence notBlank(java.lang.CharSequence,java.lang.String,java.lang.Object[])>(r4, "id card must be not blank!", $r0);	i0 = virtualinvoke r4.<java.lang.String: int length()>();	if i0 >= 15 goto (branch);	return null
;block_num 2