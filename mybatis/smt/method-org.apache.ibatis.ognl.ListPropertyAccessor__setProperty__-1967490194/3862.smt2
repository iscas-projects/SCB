(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2470 0)
(declare-sort var1812 0)
(declare-sort var1154 0)
(declare-sort var1255 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var1154-to-String (var1154) String)
(define-fun contains/1009244746 ((s String) (subs String)) Bool (str.contains s subs))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun setProperty/691440719 (var1255 var1812 var1154 var1154 var1154) void)
(declare-fun cast-from-var2470-to-var1255 (var2470) var1255)
(declare-const null-var2470 var2470)
(declare-const null-var1812 var1812)
(declare-const null-var1154 var1154)
(declare-const var194 var2470) ; Statement: r10 := @this: org.apache.ibatis.ognl.ListPropertyAccessor 
(assert (not (= var194 null-var2470)))
(declare-const var3294 var1812) ; Statement: r11 := @parameter0: org.apache.ibatis.ognl.OgnlContext 
(assert (not (= var3294 null-var1812)))
(declare-const var948 var1154) ; Statement: r1 := @parameter1: java.lang.Object 
(assert (not (= var948 null-var1154)))
(declare-const var1875 var1154) ; Statement: r0 := @parameter2: java.lang.Object 
(assert (not (= var1875 null-var1154)))
(declare-const var3483 var1154) ; Statement: r4 := @parameter3: java.lang.Object 
(assert (not (= var3483 null-var1154)))
(define-const var702 Bool false) ; Statement: $z0 = r0 instanceof java.lang.String 
 ; Statement: if $z0 == 0 goto $r9 = (java.util.List) r1 
(assert (not (= (ite var702 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3754 String (cast-from-var1154-to-String var1875)) ; Statement: $r8 = (java.lang.String) r0 
(assert true)
(define-const var2743 Bool (contains/1009244746 var3754 (cast-from-String-to-String "$"))) ; Statement: $z4 = virtualinvoke $r8.<java.lang.String: boolean contains(java.lang.CharSequence)>("$") 
 ; Statement: if $z4 != 0 goto $r9 = (java.util.List) r1 
(assert (not (not (= (ite var2743 1 0) 0)))) ; Negate: Cond: $z4 != 0  
(assert true)
;(assert (setProperty/691440719 (cast-from-var2470-to-var1255 var194) var3294 var948 var1875 var3483)) ; Statement: specialinvoke r10.<org.apache.ibatis.ognl.ObjectPropertyAccessor: void setProperty(org.apache.ibatis.ognl.OgnlContext,java.lang.Object,java.lang.Object,java.lang.Object)>(r11, r1, r0, r4) 

(declare-const var194!1 var2470)
(declare-const var3294!1 var1812)
(declare-const var948!1 var1154)
(declare-const var1875!1 var1154)
(declare-const var3483!1 var1154)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var1154-to-String=([java.lang.Object], java.lang.String), contains/1009244746=([java.lang.String, java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), setProperty/691440719=([org.apache.ibatis.ognl.ObjectPropertyAccessor, org.apache.ibatis.ognl.OgnlContext, java.lang.Object, java.lang.Object, java.lang.Object], void), cast-from-var2470-to-var1255=([org.apache.ibatis.ognl.ListPropertyAccessor], org.apache.ibatis.ognl.ObjectPropertyAccessor)}
; {var2470=org.apache.ibatis.ognl.ListPropertyAccessor, var194=r10, var1812=org.apache.ibatis.ognl.OgnlContext, var3294=r11, var1154=java.lang.Object, var948=r1, var1875=r0, var3483=r4, var702=$z0, var3754=$r8, var2743=$z4, var1255=org.apache.ibatis.ognl.ObjectPropertyAccessor}
; {org.apache.ibatis.ognl.ListPropertyAccessor=var2470, r10=var194, org.apache.ibatis.ognl.OgnlContext=var1812, r11=var3294, java.lang.Object=var1154, r1=var948, r0=var1875, r4=var3483, $z0=var702, $r8=var3754, $z4=var2743, org.apache.ibatis.ognl.ObjectPropertyAccessor=var1255}
;seq <java.lang.String: boolean contains(java.lang.CharSequence)>
;cnt {"<java.lang.String: boolean contains(java.lang.CharSequence)>": 1}
;stmts r10 := @this: org.apache.ibatis.ognl.ListPropertyAccessor;	r11 := @parameter0: org.apache.ibatis.ognl.OgnlContext;	r1 := @parameter1: java.lang.Object;	r0 := @parameter2: java.lang.Object;	r4 := @parameter3: java.lang.Object;	$z0 = r0 instanceof java.lang.String;	if $z0 == 0 goto $r9 = (java.util.List) r1;	$r8 = (java.lang.String) r0;	$z4 = virtualinvoke $r8.<java.lang.String: boolean contains(java.lang.CharSequence)>("$");	if $z4 != 0 goto $r9 = (java.util.List) r1;	specialinvoke r10.<org.apache.ibatis.ognl.ObjectPropertyAccessor: void setProperty(org.apache.ibatis.ognl.OgnlContext,java.lang.Object,java.lang.Object,java.lang.Object)>(r11, r1, r0, r4);	return
;block_num 3