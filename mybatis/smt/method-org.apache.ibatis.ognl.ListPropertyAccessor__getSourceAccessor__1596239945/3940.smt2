(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1942 0)
(declare-sort var900 0)
(declare-sort var1871 0)
(declare-sort var2590 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2590!class ClassObject)
(declare-fun toString/-522406933 (var1871) String)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(declare-fun setCurrentAccessor/563071030 (var900 ClassObject) void)
(declare-fun setCurrentType/-350497431 (var900 ClassObject) void)
(declare-const null-var1942 var1942)
(declare-const null-var900 var900)
(declare-const null-var1871 var1871)
(declare-const Int-TYPE ClassObject)
(declare-const var1635 var1942) ; Statement: r20 := @this: org.apache.ibatis.ognl.ListPropertyAccessor 
(assert (not (= var1635 null-var1942)))
(declare-const var1534 var900) ; Statement: r1 := @parameter0: org.apache.ibatis.ognl.OgnlContext 
(assert (not (= var1534 null-var900)))
(declare-const var3440 var1871) ; Statement: r18 := @parameter1: java.lang.Object 
(assert (not (= var3440 null-var1871)))
(declare-const var2751 var1871) ; Statement: r0 := @parameter2: java.lang.Object 
(assert (not (= var2751 null-var1871)))
(assert true)
(define-const var3775 String (toString/-522406933 var2751)) ; Statement: r26 = virtualinvoke r0.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var1573 Int (indexOf/-1037706067 var3775 34)) ; Statement: $i0 = virtualinvoke r26.<java.lang.String: int indexOf(int)>(34) 
 ; Statement: if $i0 < 0 goto $z0 = r0 instanceof java.lang.String 
(assert (< var1573 0)) ; Cond: $i0 < 0 
(define-const var1456 Bool false) ; Statement: $z0 = r0 instanceof java.lang.String 
 ; Statement: if $z0 == 0 goto $r2 = virtualinvoke r1.<org.apache.ibatis.ognl.OgnlContext: java.lang.Object getCurrentObject()>() 
(assert (not (= (ite var1456 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var2568 Bool (= var3775 "size")) ; Statement: $z6 = virtualinvoke r26.<java.lang.String: boolean equals(java.lang.Object)>("size") 
 ; Statement: if $z6 == 0 goto $z7 = virtualinvoke r26.<java.lang.String: boolean equals(java.lang.Object)>("iterator") 
(assert (not (= (ite var2568 1 0) 0))) ; Negate: Cond: $z6 == 0  
(assert true)
;(assert (setCurrentAccessor/563071030 var1534 var2590!class)) ; Statement: virtualinvoke r1.<org.apache.ibatis.ognl.OgnlContext: void setCurrentAccessor(java.lang.Class)>(class "Ljava/util/List;") 

(declare-const var1534!1 var900)
(declare-const var2654 ClassObject)
(define-const var3210 ClassObject Int-TYPE) ; Statement: $r23 = <java.lang.Integer: java.lang.Class TYPE> 
(assert true)
;(assert (setCurrentType/-350497431 var1534!1 var3210)) ; Statement: virtualinvoke r1.<org.apache.ibatis.ognl.OgnlContext: void setCurrentType(java.lang.Class)>($r23) 

(declare-const var1534!2 var900)
(declare-const var3210!1 ClassObject)
 ; Statement: return ".size()" 
(check-sat)
(get-model)
(get-unsat-core)
; {toString/-522406933=([java.lang.Object], java.lang.String), indexOf/-1037706067=([java.lang.String, int], int), setCurrentAccessor/563071030=([org.apache.ibatis.ognl.OgnlContext, java.lang.Class], void), setCurrentType/-350497431=([org.apache.ibatis.ognl.OgnlContext, java.lang.Class], void)}
; {var1942=org.apache.ibatis.ognl.ListPropertyAccessor, var1635=r20, var900=org.apache.ibatis.ognl.OgnlContext, var1534=r1, var1871=java.lang.Object, var3440=r18, var2751=r0, var3775=r26, var1573=$i0, var1456=$z0, var2568=$z6, var2590=java.util.List, var2654=class "Ljava/util/List;", var3210=$r23}
; {org.apache.ibatis.ognl.ListPropertyAccessor=var1942, r20=var1635, org.apache.ibatis.ognl.OgnlContext=var900, r1=var1534, java.lang.Object=var1871, r18=var3440, r0=var2751, r26=var3775, $i0=var1573, $z0=var1456, $z6=var2568, java.util.List=var2590, class "Ljava/util/List;"=var2654, $r23=var3210}
;seq <java.lang.Object: java.lang.String toString()>;	<java.lang.String: int indexOf(int)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: int indexOf(int)>": 1,"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r20 := @this: org.apache.ibatis.ognl.ListPropertyAccessor;	r1 := @parameter0: org.apache.ibatis.ognl.OgnlContext;	r18 := @parameter1: java.lang.Object;	r0 := @parameter2: java.lang.Object;	r26 = virtualinvoke r0.<java.lang.Object: java.lang.String toString()>();	$i0 = virtualinvoke r26.<java.lang.String: int indexOf(int)>(34);	if $i0 < 0 goto $z0 = r0 instanceof java.lang.String;	$z0 = r0 instanceof java.lang.String;	if $z0 == 0 goto $r2 = virtualinvoke r1.<org.apache.ibatis.ognl.OgnlContext: java.lang.Object getCurrentObject()>();	$z6 = virtualinvoke r26.<java.lang.String: boolean equals(java.lang.Object)>("size");	if $z6 == 0 goto $z7 = virtualinvoke r26.<java.lang.String: boolean equals(java.lang.Object)>("iterator");	virtualinvoke r1.<org.apache.ibatis.ognl.OgnlContext: void setCurrentAccessor(java.lang.Class)>(class "Ljava/util/List;");	$r23 = <java.lang.Integer: java.lang.Class TYPE>;	virtualinvoke r1.<org.apache.ibatis.ognl.OgnlContext: void setCurrentType(java.lang.Class)>($r23);	return ".size()"
;block_num 4