(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1201 0)
(declare-sort var2625 0)
(declare-sort var1864 0)
(declare-sort var1246 0)
(declare-sort var2800 0)
(declare-sort var886 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1864_builder/-311177978 () String)
(declare-fun var1246_isNotEmpty/-2034975830 (var1201) Bool)
(declare-fun var2800_isNotEmpty/1408540788 ((Array Int var886)) Bool)
(declare-fun cast-from-__Array__Int__String__-to-__Array__Int__var886__ ((Array Int String)) (Array Int var886))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1201 var1201)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var3084 var1201) ; Statement: r1 := @parameter0: java.util.Map 
(assert (not (= var3084 null-var1201)))
(declare-const var996 String) ; Statement: r7 := @parameter1: java.lang.String 
(assert (not (= var996 null-String)))
(declare-const var3520 String) ; Statement: r10 := @parameter2: java.lang.String 
(assert (not (= var3520 null-String)))
(declare-const var267 Bool) ; Statement: z3 := @parameter3: boolean 
(assert (not (= var267 null-Bool)))
(declare-const var325 (Array Int String)) ; Statement: r2 := @parameter4: java.lang.String[] 
(assert (not (= var325 null-__Array__Int__String__)))
(define-const var1759 String var1864_builder/-311177978) ; Statement: r0 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.StringBuilder builder()>() 
(define-const var1136 Bool (ite (= 1 1) true false)) ; Statement: z4 = 1 
(define-const var2071 Bool (var1246_isNotEmpty/-2034975830 var3084)) ; Statement: $z0 = staticinvoke <cn.hutool.core.map.MapUtil: boolean isNotEmpty(java.util.Map)>(r1) 
 ; Statement: if $z0 == 0 goto $z1 = staticinvoke <cn.hutool.core.util.ArrayUtil: boolean isNotEmpty(java.lang.Object[])>(r2) 
(assert (= (ite var2071 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3383 Bool (var2800_isNotEmpty/1408540788 (cast-from-__Array__Int__String__-to-__Array__Int__var886__ var325))) ; Statement: $z1 = staticinvoke <cn.hutool.core.util.ArrayUtil: boolean isNotEmpty(java.lang.Object[])>(r2) 
 ; Statement: if $z1 == 0 goto $r3 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var3383 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var1731 String (toString/-2075883882 var1759)) ; Statement: $r3 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var1864_builder/-311177978=([], java.lang.StringBuilder), var1246_isNotEmpty/-2034975830=([java.util.Map], boolean), var2800_isNotEmpty/1408540788=([java.lang.Object[]], boolean), cast-from-__Array__Int__String__-to-__Array__Int__var886__=([java.lang.String[]], java.lang.Object[]), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1201=java.util.Map, var3084=r1, var996=r7, var2625=null_type, var3520=r10, var267=z3, var325=r2, var1864=cn.hutool.core.util.StrUtil, var1759=r0, var1136=z4, var1246=cn.hutool.core.map.MapUtil, var2071=$z0, var2800=cn.hutool.core.util.ArrayUtil, var886=java.lang.Object, var3383=$z1, var1731=$r3}
; {java.util.Map=var1201, r1=var3084, r7=var996, null_type=var2625, r10=var3520, z3=var267, r2=var325, cn.hutool.core.util.StrUtil=var1864, r0=var1759, z4=var1136, cn.hutool.core.map.MapUtil=var1246, $z0=var2071, cn.hutool.core.util.ArrayUtil=var2800, java.lang.Object=var886, $z1=var3383, $r3=var1731}
;seq <java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.util.Map;	r7 := @parameter1: java.lang.String;	r10 := @parameter2: java.lang.String;	z3 := @parameter3: boolean;	r2 := @parameter4: java.lang.String[];	r0 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.StringBuilder builder()>();	z4 = 1;	$z0 = staticinvoke <cn.hutool.core.map.MapUtil: boolean isNotEmpty(java.util.Map)>(r1);	if $z0 == 0 goto $z1 = staticinvoke <cn.hutool.core.util.ArrayUtil: boolean isNotEmpty(java.lang.Object[])>(r2);	$z1 = staticinvoke <cn.hutool.core.util.ArrayUtil: boolean isNotEmpty(java.lang.Object[])>(r2);	if $z1 == 0 goto $r3 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r3 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 3