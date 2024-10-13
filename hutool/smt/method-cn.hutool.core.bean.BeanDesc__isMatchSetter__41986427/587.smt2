(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1508 0)
(declare-sort var1277 0)
(declare-sort var1943 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1943_upperFirst/-1469142958 (String) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-var1508 var1508)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var2716 var1508) ; Statement: r9 := @this: cn.hutool.core.bean.BeanDesc 
(assert (not (= var2716 null-var1508)))
(declare-const var3175 String) ; Statement: r10 := @parameter0: java.lang.String 
(assert (not (= var3175 null-String)))
(declare-const var2407 String) ; Statement: r11 := @parameter1: java.lang.String 
(assert (not (= var2407 null-String)))
(declare-const var2806 Bool) ; Statement: z2 := @parameter2: boolean 
(assert (not (= var2806 null-Bool)))
(declare-const var1935 Bool) ; Statement: z0 := @parameter3: boolean 
(assert (not (= var1935 null-Bool)))
 ; Statement: if z0 == 0 goto r12 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String upperFirst(java.lang.CharSequence)>(r11) 
(assert (= (ite var1935 1 0) 0)) ; Cond: z0 == 0 
(define-const var1160 String (var1943_upperFirst/-1469142958 (cast-from-String-to-String var2407))) ; Statement: r12 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String upperFirst(java.lang.CharSequence)>(r11) 
(assert true) ; Non Conditional
(assert true)
(define-const var3394 Bool (startsWith/-1785782452 var3175 "set")) ; Statement: $z1 = virtualinvoke r10.<java.lang.String: boolean startsWith(java.lang.String)>("set") 
 ; Statement: if 0 != $z1 goto (branch) 
(assert (not (not (= 0 (ite var3394 1 0))))) ; Negate: Cond: 0 != $z1  
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1943_upperFirst/-1469142958=([java.lang.CharSequence], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var1508=cn.hutool.core.bean.BeanDesc, var2716=r9, var3175=r10, var1277=null_type, var2407=r11, var2806=z2, var1935=z0, var1943=cn.hutool.core.text.CharSequenceUtil, var1160=r12, var3394=$z1}
; {cn.hutool.core.bean.BeanDesc=var1508, r9=var2716, r10=var3175, null_type=var1277, r11=var2407, z2=var2806, z0=var1935, cn.hutool.core.text.CharSequenceUtil=var1943, r12=var1160, $z1=var3394}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r9 := @this: cn.hutool.core.bean.BeanDesc;	r10 := @parameter0: java.lang.String;	r11 := @parameter1: java.lang.String;	z2 := @parameter2: boolean;	z0 := @parameter3: boolean;	if z0 == 0 goto r12 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String upperFirst(java.lang.CharSequence)>(r11);	r12 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String upperFirst(java.lang.CharSequence)>(r11);	$z1 = virtualinvoke r10.<java.lang.String: boolean startsWith(java.lang.String)>("set");	if 0 != $z1 goto (branch);	return 0
;block_num 4