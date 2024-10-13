(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var497 0)
(declare-sort var3815 0)
(declare-sort var3542 0)
(declare-sort var1397 0)
(declare-sort var3938 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var3542-to-var1397 (var3542) var1397)
(declare-fun cast-from-var3542-to-var3938 (var3542) var3938)
(declare-fun intValue/207705611 (var3938) Int)
(declare-fun var1397_set/-1241329960 (var1397 Int var3542) var3542)
(declare-const null-var497 var497)
(declare-const null-var3815 var3815)
(declare-const null-var3542 var3542)
(declare-const var1696 var497) ; Statement: r10 := @this: org.apache.ibatis.ognl.ListPropertyAccessor 
(assert (not (= var1696 null-var497)))
(declare-const var3067 var3815) ; Statement: r11 := @parameter0: org.apache.ibatis.ognl.OgnlContext 
(assert (not (= var3067 null-var3815)))
(declare-const var1804 var3542) ; Statement: r1 := @parameter1: java.lang.Object 
(assert (not (= var1804 null-var3542)))
(declare-const var2169 var3542) ; Statement: r0 := @parameter2: java.lang.Object 
(assert (not (= var2169 null-var3542)))
(declare-const var2095 var3542) ; Statement: r4 := @parameter3: java.lang.Object 
(assert (not (= var2095 null-var3542)))
(define-const var622 Bool false) ; Statement: $z0 = r0 instanceof java.lang.String 
 ; Statement: if $z0 == 0 goto $r9 = (java.util.List) r1 
(assert (= (ite var622 1 0) 0)) ; Cond: $z0 == 0 
(define-const var777 var1397 (cast-from-var3542-to-var1397 var1804)) ; Statement: $r9 = (java.util.List) r1 
(define-const var1245 Bool false) ; Statement: $z1 = r0 instanceof java.lang.Number 
 ; Statement: if $z1 == 0 goto $z2 = r0 instanceof org.apache.ibatis.ognl.DynamicSubscript 
(assert (not (= (ite var1245 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var315 var3938 (cast-from-var3542-to-var3938 var2169)) ; Statement: $r7 = (java.lang.Number) r0 
(assert true)
(define-const var2859 Int (intValue/207705611 var315)) ; Statement: $i4 = virtualinvoke $r7.<java.lang.Number: int intValue()>() 
;(assert (var1397_set/-1241329960 var777 var2859 var2095)) ; Statement: interfaceinvoke $r9.<java.util.List: java.lang.Object set(int,java.lang.Object)>($i4, r4) 

(declare-const var777!1 var1397)
(declare-const var2859!1 Int)
(declare-const var2095!1 var3542)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var3542-to-var1397=([java.lang.Object], java.util.List), cast-from-var3542-to-var3938=([java.lang.Object], java.lang.Number), intValue/207705611=([java.lang.Number], int), var1397_set/-1241329960=([java.util.List, int, java.lang.Object], java.lang.Object)}
; {var497=org.apache.ibatis.ognl.ListPropertyAccessor, var1696=r10, var3815=org.apache.ibatis.ognl.OgnlContext, var3067=r11, var3542=java.lang.Object, var1804=r1, var2169=r0, var2095=r4, var622=$z0, var1397=java.util.List, var777=$r9, var1245=$z1, var3938=java.lang.Number, var315=$r7, var2859=$i4}
; {org.apache.ibatis.ognl.ListPropertyAccessor=var497, r10=var1696, org.apache.ibatis.ognl.OgnlContext=var3815, r11=var3067, java.lang.Object=var3542, r1=var1804, r0=var2169, r4=var2095, $z0=var622, java.util.List=var1397, $r9=var777, $z1=var1245, java.lang.Number=var3938, $r7=var315, $i4=var2859}
;seq 
;cnt {}
;stmts r10 := @this: org.apache.ibatis.ognl.ListPropertyAccessor;	r11 := @parameter0: org.apache.ibatis.ognl.OgnlContext;	r1 := @parameter1: java.lang.Object;	r0 := @parameter2: java.lang.Object;	r4 := @parameter3: java.lang.Object;	$z0 = r0 instanceof java.lang.String;	if $z0 == 0 goto $r9 = (java.util.List) r1;	$r9 = (java.util.List) r1;	$z1 = r0 instanceof java.lang.Number;	if $z1 == 0 goto $z2 = r0 instanceof org.apache.ibatis.ognl.DynamicSubscript;	$r7 = (java.lang.Number) r0;	$i4 = virtualinvoke $r7.<java.lang.Number: int intValue()>();	interfaceinvoke $r9.<java.util.List: java.lang.Object set(int,java.lang.Object)>($i4, r4);	return
;block_num 3