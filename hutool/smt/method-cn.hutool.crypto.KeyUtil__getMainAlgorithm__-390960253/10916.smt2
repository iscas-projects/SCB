(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1047 0)
(declare-sort var24 0)
(declare-sort var1490 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var24-init () (Array Int var24))
(declare-fun var1490_notBlank/-161903167 (String String (Array Int var24)) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(declare-const null-String String)
(declare-const var2312 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2312 null-String)))
(define-const var3620 (Array Int var24) arr-var24-init) ; Statement: $r1 = newarray (java.lang.Object)[0] 
;(assert (var1490_notBlank/-161903167 (cast-from-String-to-String var2312) "Algorithm must be not blank!" var3620)) ; Statement: staticinvoke <cn.hutool.core.lang.Assert: java.lang.CharSequence notBlank(java.lang.CharSequence,java.lang.String,java.lang.Object[])>(r0, "Algorithm must be not blank!", $r1) 

(declare-const var2312!1 String)
(declare-const var3554 String)
(declare-const var3620!1 (Array Int var24))
(assert true)
(define-const var182 Int (indexOf/-1037706067 var2312!1 47)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(47) 
 ; Statement: if i0 <= 0 goto return r0 
(assert (<= var182 0)) ; Cond: i0 <= 0 
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var24-init=([], java.lang.Object[]), var1490_notBlank/-161903167=([java.lang.CharSequence, java.lang.String, java.lang.Object[]], java.lang.CharSequence), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), indexOf/-1037706067=([java.lang.String, int], int)}
; {var2312=r0, var1047=null_type, var24=java.lang.Object, var3620=$r1, var1490=cn.hutool.core.lang.Assert, var3554="Algorithm must be not blank!", var182=i0}
; {r0=var2312, null_type=var1047, java.lang.Object=var24, $r1=var3620, cn.hutool.core.lang.Assert=var1490, "Algorithm must be not blank!"=var3554, i0=var182}
;seq <java.lang.String: int indexOf(int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r1 = newarray (java.lang.Object)[0];	staticinvoke <cn.hutool.core.lang.Assert: java.lang.CharSequence notBlank(java.lang.CharSequence,java.lang.String,java.lang.Object[])>(r0, "Algorithm must be not blank!", $r1);	i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(47);	if i0 <= 0 goto return r0;	return r0
;block_num 2