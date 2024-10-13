(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2384 0)
(declare-sort var3772 0)
(declare-sort var3916 0)
(declare-sort var3323 0)
(declare-sort var1966 0)
(declare-sort var2339 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toString/-522406933 (var3916) String)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(declare-fun getCurrentObject/-1995641357 (var3772) var3916)
(declare-fun var2339_castToRuntime/315756906 (var3323) var1966)
(declare-const null-var2384 var2384)
(declare-const null-var3772 var3772)
(declare-const null-var3916 var3916)
(declare-const null-var3323 var3323)
(declare-const var2987 var2384) ; Statement: r20 := @this: org.apache.ibatis.ognl.ListPropertyAccessor 
(assert (not (= var2987 null-var2384)))
(declare-const var2359 var3772) ; Statement: r1 := @parameter0: org.apache.ibatis.ognl.OgnlContext 
(assert (not (= var2359 null-var3772)))
(declare-const var226 var3916) ; Statement: r18 := @parameter1: java.lang.Object 
(assert (not (= var226 null-var3916)))
(declare-const var1530 var3916) ; Statement: r0 := @parameter2: java.lang.Object 
(assert (not (= var1530 null-var3916)))
(assert true)
(define-const var992 String (toString/-522406933 var1530)) ; Statement: r25 = virtualinvoke r0.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var612 Int (indexOf/-1037706067 var992 34)) ; Statement: $i0 = virtualinvoke r25.<java.lang.String: int indexOf(int)>(34) 
 ; Statement: if $i0 < 0 goto $r2 = virtualinvoke r1.<org.apache.ibatis.ognl.OgnlContext: java.lang.Object getCurrentObject()>() 
(assert (< var612 0)) ; Cond: $i0 < 0 
(assert true)
(define-const var419 var3916 (getCurrentObject/-1995641357 var2359)) ; Statement: $r2 = virtualinvoke r1.<org.apache.ibatis.ognl.OgnlContext: java.lang.Object getCurrentObject()>() 
 ; Statement: if $r2 == null goto virtualinvoke r1.<org.apache.ibatis.ognl.OgnlContext: void setCurrentAccessor(java.lang.Class)>(class "Ljava/util/List;") 
(assert (not (= var419 null-var3916))) ; Negate: Cond: $r2 == null  
(assert true)
(define-const var965 var3916 (getCurrentObject/-1995641357 var2359)) ; Statement: $r17 = virtualinvoke r1.<org.apache.ibatis.ognl.OgnlContext: java.lang.Object getCurrentObject()>() 
(define-const var2249 Bool false) ; Statement: $z4 = $r17 instanceof java.lang.Number 
 ; Statement: if $z4 != 0 goto virtualinvoke r1.<org.apache.ibatis.ognl.OgnlContext: void setCurrentAccessor(java.lang.Class)>(class "Ljava/util/List;") 
(assert (not (not (= (ite var2249 1 0) 0)))) ; Negate: Cond: $z4 != 0  
(declare-const var1309 var3323) ; Statement: $r23 := @caughtexception 
(assert (not (= var1309 null-var3323)))
(define-const var6 var1966 (var2339_castToRuntime/315756906 var1309)) ; Statement: $r24 = staticinvoke <org.apache.ibatis.ognl.OgnlOps: java.lang.RuntimeException castToRuntime(java.lang.Throwable)>($r23) 
 ; Statement: throw $r24 
(check-sat)
(get-model)
(get-unsat-core)
; {toString/-522406933=([java.lang.Object], java.lang.String), indexOf/-1037706067=([java.lang.String, int], int), getCurrentObject/-1995641357=([org.apache.ibatis.ognl.OgnlContext], java.lang.Object), var2339_castToRuntime/315756906=([java.lang.Throwable], java.lang.RuntimeException)}
; {var2384=org.apache.ibatis.ognl.ListPropertyAccessor, var2987=r20, var3772=org.apache.ibatis.ognl.OgnlContext, var2359=r1, var3916=java.lang.Object, var226=r18, var1530=r0, var992=r25, var612=$i0, var419=$r2, var965=$r17, var2249=$z4, var3323=java.lang.Throwable, var1309=$r23, var1966=java.lang.RuntimeException, var2339=org.apache.ibatis.ognl.OgnlOps, var6=$r24}
; {org.apache.ibatis.ognl.ListPropertyAccessor=var2384, r20=var2987, org.apache.ibatis.ognl.OgnlContext=var3772, r1=var2359, java.lang.Object=var3916, r18=var226, r0=var1530, r25=var992, $i0=var612, $r2=var419, $r17=var965, $z4=var2249, java.lang.Throwable=var3323, $r23=var1309, java.lang.RuntimeException=var1966, org.apache.ibatis.ognl.OgnlOps=var2339, $r24=var6}
;seq <java.lang.Object: java.lang.String toString()>;	<java.lang.String: int indexOf(int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1}
;stmts r20 := @this: org.apache.ibatis.ognl.ListPropertyAccessor;	r1 := @parameter0: org.apache.ibatis.ognl.OgnlContext;	r18 := @parameter1: java.lang.Object;	r0 := @parameter2: java.lang.Object;	r25 = virtualinvoke r0.<java.lang.Object: java.lang.String toString()>();	$i0 = virtualinvoke r25.<java.lang.String: int indexOf(int)>(34);	if $i0 < 0 goto $r2 = virtualinvoke r1.<org.apache.ibatis.ognl.OgnlContext: java.lang.Object getCurrentObject()>();	$r2 = virtualinvoke r1.<org.apache.ibatis.ognl.OgnlContext: java.lang.Object getCurrentObject()>();	if $r2 == null goto virtualinvoke r1.<org.apache.ibatis.ognl.OgnlContext: void setCurrentAccessor(java.lang.Class)>(class "Ljava/util/List;");	$r17 = virtualinvoke r1.<org.apache.ibatis.ognl.OgnlContext: java.lang.Object getCurrentObject()>();	$z4 = $r17 instanceof java.lang.Number;	if $z4 != 0 goto virtualinvoke r1.<org.apache.ibatis.ognl.OgnlContext: void setCurrentAccessor(java.lang.Class)>(class "Ljava/util/List;");	$r23 := @caughtexception;	$r24 = staticinvoke <org.apache.ibatis.ognl.OgnlOps: java.lang.RuntimeException castToRuntime(java.lang.Throwable)>($r23);	throw $r24
;block_num 4