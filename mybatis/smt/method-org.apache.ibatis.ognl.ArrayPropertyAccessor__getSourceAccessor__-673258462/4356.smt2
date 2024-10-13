(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3130 0)
(declare-sort var336 0)
(declare-sort var1489 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toString/-522406933 (var1489) String)
(declare-fun getCurrentType/-1397948801 (var336) ClassObject)
(declare-fun getCurrentObject/-1995641357 (var336) var1489)
(declare-fun getClass/1258963082 (var1489) ClassObject)
(declare-fun setCurrentAccessor/563071030 (var336 ClassObject) void)
(declare-fun getComponentType/1960034130 (ClassObject) ClassObject)
(declare-fun setCurrentType/-350497431 (var336 ClassObject) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3130 var3130)
(declare-const null-var336 var336)
(declare-const null-var1489 var1489)
(declare-const null-ClassObject ClassObject)
(declare-const var1820 var3130) ; Statement: r18 := @this: org.apache.ibatis.ognl.ArrayPropertyAccessor 
(assert (not (= var1820 null-var3130)))
(declare-const var583 var336) ; Statement: r1 := @parameter0: org.apache.ibatis.ognl.OgnlContext 
(assert (not (= var583 null-var336)))
(declare-const var1029 var1489) ; Statement: r3 := @parameter1: java.lang.Object 
(assert (not (= var1029 null-var1489)))
(declare-const var323 var1489) ; Statement: r0 := @parameter2: java.lang.Object 
(assert (not (= var323 null-var1489)))
(assert true)
(define-const var1924 String (toString/-522406933 var323)) ; Statement: r19 = virtualinvoke r0.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var2364 ClassObject (getCurrentType/-1397948801 var583)) ; Statement: $r2 = virtualinvoke r1.<org.apache.ibatis.ognl.OgnlContext: java.lang.Class getCurrentType()>() 
 ; Statement: if $r2 == null goto $r20 = virtualinvoke r1.<org.apache.ibatis.ognl.OgnlContext: java.lang.Object getCurrentObject()>() 
(assert (= var2364 null-ClassObject)) ; Cond: $r2 == null 
(assert true)
(define-const var2676 var1489 (getCurrentObject/-1995641357 var583)) ; Statement: $r20 = virtualinvoke r1.<org.apache.ibatis.ognl.OgnlContext: java.lang.Object getCurrentObject()>() 
 ; Statement: if $r20 == null goto $r27 = virtualinvoke r3.<java.lang.Object: java.lang.Class getClass()>() 
(assert (= var2676 null-var1489)) ; Cond: $r20 == null 
(assert true)
(define-const var3417 ClassObject (getClass/1258963082 var1029)) ; Statement: $r27 = virtualinvoke r3.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
;(assert (setCurrentAccessor/563071030 var583 var3417)) ; Statement: virtualinvoke r1.<org.apache.ibatis.ognl.OgnlContext: void setCurrentAccessor(java.lang.Class)>($r27) 

(declare-const var583!1 var336)
(declare-const var3417!1 ClassObject)
(assert true)
(define-const var2545 ClassObject (getClass/1258963082 var1029)) ; Statement: $r28 = virtualinvoke r3.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var2354 ClassObject (getComponentType/1960034130 var2545)) ; Statement: $r29 = virtualinvoke $r28.<java.lang.Class: java.lang.Class getComponentType()>() 
(assert true)
;(assert (setCurrentType/-350497431 var583!1 var2354)) ; Statement: virtualinvoke r1.<org.apache.ibatis.ognl.OgnlContext: void setCurrentType(java.lang.Class)>($r29) 

(declare-const var583!2 var336)
(declare-const var2354!1 ClassObject)
(define-const var3181 String String-init) ; Statement: $r30 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3181)) ; Statement: specialinvoke $r30.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3181!1 String)
(assert (= var3181!1 ""))
(assert true)
(define-const var2465 String (append/672562846 var3181!1 "[")) ; Statement: $r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[") 
(declare-const var3181!2 String)
(assert (= var3181!2 (str.++ var3181!1 "[")))
(assert true)
(define-const var2271 String (append/672562846 var2465 var1924)) ; Statement: $r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r19) 
(declare-const var2465!1 String)
(assert (= var2465!1 (str.++ var2465 var1924)))
(assert true)
(define-const var3611 String (append/672562846 var2271 "]")) ; Statement: $r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var2271!1 String)
(assert (= var2271!1 (str.++ var2271 "]")))
(assert true)
(define-const var3209 String (toString/-2075883882 var3611)) ; Statement: $r34 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r34 
(check-sat)
(get-model)
(get-unsat-core)
; {toString/-522406933=([java.lang.Object], java.lang.String), getCurrentType/-1397948801=([org.apache.ibatis.ognl.OgnlContext], java.lang.Class), getCurrentObject/-1995641357=([org.apache.ibatis.ognl.OgnlContext], java.lang.Object), getClass/1258963082=([java.lang.Object], java.lang.Class), setCurrentAccessor/563071030=([org.apache.ibatis.ognl.OgnlContext, java.lang.Class], void), getComponentType/1960034130=([java.lang.Class], java.lang.Class), setCurrentType/-350497431=([org.apache.ibatis.ognl.OgnlContext, java.lang.Class], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3130=org.apache.ibatis.ognl.ArrayPropertyAccessor, var1820=r18, var336=org.apache.ibatis.ognl.OgnlContext, var583=r1, var1489=java.lang.Object, var1029=r3, var323=r0, var1924=r19, var2364=$r2, var2676=$r20, var3417=$r27, var2545=$r28, var2354=$r29, var3181=$r30, var2465=$r31, var2271=$r32, var3611=$r33, var3209=$r34}
; {org.apache.ibatis.ognl.ArrayPropertyAccessor=var3130, r18=var1820, org.apache.ibatis.ognl.OgnlContext=var336, r1=var583, java.lang.Object=var1489, r3=var1029, r0=var323, r19=var1924, $r2=var2364, $r20=var2676, $r27=var3417, $r28=var2545, $r29=var2354, $r30=var3181, $r31=var2465, $r32=var2271, $r33=var3611, $r34=var3209}
;seq <java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r18 := @this: org.apache.ibatis.ognl.ArrayPropertyAccessor;	r1 := @parameter0: org.apache.ibatis.ognl.OgnlContext;	r3 := @parameter1: java.lang.Object;	r0 := @parameter2: java.lang.Object;	r19 = virtualinvoke r0.<java.lang.Object: java.lang.String toString()>();	$r2 = virtualinvoke r1.<org.apache.ibatis.ognl.OgnlContext: java.lang.Class getCurrentType()>();	if $r2 == null goto $r20 = virtualinvoke r1.<org.apache.ibatis.ognl.OgnlContext: java.lang.Object getCurrentObject()>();	$r20 = virtualinvoke r1.<org.apache.ibatis.ognl.OgnlContext: java.lang.Object getCurrentObject()>();	if $r20 == null goto $r27 = virtualinvoke r3.<java.lang.Object: java.lang.Class getClass()>();	$r27 = virtualinvoke r3.<java.lang.Object: java.lang.Class getClass()>();	virtualinvoke r1.<org.apache.ibatis.ognl.OgnlContext: void setCurrentAccessor(java.lang.Class)>($r27);	$r28 = virtualinvoke r3.<java.lang.Object: java.lang.Class getClass()>();	$r29 = virtualinvoke $r28.<java.lang.Class: java.lang.Class getComponentType()>();	virtualinvoke r1.<org.apache.ibatis.ognl.OgnlContext: void setCurrentType(java.lang.Class)>($r29);	$r30 = new java.lang.StringBuilder;	specialinvoke $r30.<java.lang.StringBuilder: void <init>()>();	$r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[");	$r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r19);	$r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r34 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.String toString()>();	return $r34
;block_num 3