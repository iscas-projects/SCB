(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1611 0)
(declare-sort var967 0)
(declare-sort var1830 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var967-init () (Array Int var967))
(declare-fun var1830_notBlank/-161903167 (String String (Array Int var967)) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-const null-String String)
(declare-const var2891 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2891 null-String)))
(define-const var2040 (Array Int var967) arr-var967-init) ; Statement: $r1 = newarray (java.lang.Object)[0] 
;(assert (var1830_notBlank/-161903167 (cast-from-String-to-String var2891) "Algorithm must be not blank!" var2040)) ; Statement: staticinvoke <cn.hutool.core.lang.Assert: java.lang.CharSequence notBlank(java.lang.CharSequence,java.lang.String,java.lang.Object[])>(r0, "Algorithm must be not blank!", $r1) 

(declare-const var2891!1 String)
(declare-const var2501 String)
(declare-const var2040!1 (Array Int var967))
(assert true)
(define-const var2300 Int (indexOf/-1037706067 var2891!1 47)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(47) 
 ; Statement: if i0 <= 0 goto return r0 
(assert (not (<= var2300 0))) ; Negate: Cond: i0 <= 0  
(assert (and true (and (>= 0 0) (>= (str.len var2891!1) var2300) (>= var2300 0))))
(define-const var3732 String (substring/-1240304868 var2891!1 0 var2300)) ; Statement: $r2 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var967-init=([], java.lang.Object[]), var1830_notBlank/-161903167=([java.lang.CharSequence, java.lang.String, java.lang.Object[]], java.lang.CharSequence), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), indexOf/-1037706067=([java.lang.String, int], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String)}
; {var2891=r0, var1611=null_type, var967=java.lang.Object, var2040=$r1, var1830=cn.hutool.core.lang.Assert, var2501="Algorithm must be not blank!", var2300=i0, var3732=$r2}
; {r0=var2891, null_type=var1611, java.lang.Object=var967, $r1=var2040, cn.hutool.core.lang.Assert=var1830, "Algorithm must be not blank!"=var2501, i0=var2300, $r2=var3732}
;seq <java.lang.String: int indexOf(int)>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r1 = newarray (java.lang.Object)[0];	staticinvoke <cn.hutool.core.lang.Assert: java.lang.CharSequence notBlank(java.lang.CharSequence,java.lang.String,java.lang.Object[])>(r0, "Algorithm must be not blank!", $r1);	i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(47);	if i0 <= 0 goto return r0;	$r2 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0);	return $r2
;block_num 2