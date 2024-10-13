(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3205 0)
(declare-sort var2253 0)
(declare-sort var1436 0)
(declare-sort var1826 0)
(declare-sort var3738 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1826_getValue/902856528 (String var1436) var1436)
(declare-fun cast-from-var1436-to-var3738 (var1436) var3738)
(declare-const null-var3205 var3205)
(declare-const null-String String)
(declare-const null-var1436 var1436)
(declare-const null-Bool Bool)
(declare-const var3055 var3205) ; Statement: r23 := @this: org.apache.ibatis.scripting.xmltags.ExpressionEvaluator 
(assert (not (= var3055 null-var3205)))
(declare-const var3282 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3282 null-String)))
(declare-const var3585 var1436) ; Statement: r1 := @parameter1: java.lang.Object 
(assert (not (= var3585 null-var1436)))
(declare-const var1750 Bool) ; Statement: z3 := @parameter2: boolean 
(assert (not (= var1750 null-Bool)))
(define-const var294 var1436 (var1826_getValue/902856528 var3282 var3585)) ; Statement: r2 = staticinvoke <org.apache.ibatis.scripting.xmltags.OgnlCache: java.lang.Object getValue(java.lang.String,java.lang.Object)>(r0, r1) 
 ; Statement: if r2 != null goto $z0 = r2 instanceof java.lang.Iterable 
(assert (not (= var294 null-var1436))) ; Cond: r2 != null 
(define-const var1781 Bool false) ; Statement: $z0 = r2 instanceof java.lang.Iterable 
 ; Statement: if $z0 == 0 goto $r3 = virtualinvoke r2.<java.lang.Object: java.lang.Class getClass()>() 
(assert (not (= (ite var1781 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var585 var3738 (cast-from-var1436-to-var3738 var294)) ; Statement: $r16 = (java.lang.Iterable) r2 
 ; Statement: return $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {var1826_getValue/902856528=([java.lang.String, java.lang.Object], java.lang.Object), cast-from-var1436-to-var3738=([java.lang.Object], java.lang.Iterable)}
; {var3205=org.apache.ibatis.scripting.xmltags.ExpressionEvaluator, var3055=r23, var3282=r0, var2253=null_type, var1436=java.lang.Object, var3585=r1, var1750=z3, var1826=org.apache.ibatis.scripting.xmltags.OgnlCache, var294=r2, var1781=$z0, var3738=java.lang.Iterable, var585=$r16}
; {org.apache.ibatis.scripting.xmltags.ExpressionEvaluator=var3205, r23=var3055, r0=var3282, null_type=var2253, java.lang.Object=var1436, r1=var3585, z3=var1750, org.apache.ibatis.scripting.xmltags.OgnlCache=var1826, r2=var294, $z0=var1781, java.lang.Iterable=var3738, $r16=var585}
;seq 
;cnt {}
;stmts r23 := @this: org.apache.ibatis.scripting.xmltags.ExpressionEvaluator;	r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.Object;	z3 := @parameter2: boolean;	r2 = staticinvoke <org.apache.ibatis.scripting.xmltags.OgnlCache: java.lang.Object getValue(java.lang.String,java.lang.Object)>(r0, r1);	if r2 != null goto $z0 = r2 instanceof java.lang.Iterable;	$z0 = r2 instanceof java.lang.Iterable;	if $z0 == 0 goto $r3 = virtualinvoke r2.<java.lang.Object: java.lang.Class getClass()>();	$r16 = (java.lang.Iterable) r2;	return $r16
;block_num 3