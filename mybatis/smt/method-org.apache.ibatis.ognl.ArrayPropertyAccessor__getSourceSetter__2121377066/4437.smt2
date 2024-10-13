(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1149 0)
(declare-sort var2735 0)
(declare-sort var2363 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toString/-522406933 (var2363) String)
(declare-fun getCurrentType/-1397948801 (var2735) ClassObject)
(declare-fun getCurrentObject/-1995641357 (var2735) var2363)
(declare-fun getClass/1258963082 (var2363) ClassObject)
(declare-fun isArray/1369458484 (ClassObject) Bool)
(declare-fun setCurrentAccessor/563071030 (var2735 ClassObject) void)
(declare-fun getComponentType/1960034130 (ClassObject) ClassObject)
(declare-fun setCurrentType/-350497431 (var2735 ClassObject) void)
(declare-fun isPrimitive/-473230874 (ClassObject) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1149 var1149)
(declare-const null-var2735 var2735)
(declare-const null-var2363 var2363)
(declare-const null-ClassObject ClassObject)
(declare-const var2136 var1149) ; Statement: r44 := @this: org.apache.ibatis.ognl.ArrayPropertyAccessor 
(assert (not (= var2136 null-var1149)))
(declare-const var246 var2735) ; Statement: r1 := @parameter0: org.apache.ibatis.ognl.OgnlContext 
(assert (not (= var246 null-var2735)))
(declare-const var3454 var2363) ; Statement: r3 := @parameter1: java.lang.Object 
(assert (not (= var3454 null-var2363)))
(declare-const var3262 var2363) ; Statement: r0 := @parameter2: java.lang.Object 
(assert (not (= var3262 null-var2363)))
(assert true)
(define-const var2359 String (toString/-522406933 var3262)) ; Statement: r45 = virtualinvoke r0.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var1905 ClassObject (getCurrentType/-1397948801 var246)) ; Statement: $r2 = virtualinvoke r1.<org.apache.ibatis.ognl.OgnlContext: java.lang.Class getCurrentType()>() 
 ; Statement: if $r2 == null goto $r46 = virtualinvoke r1.<org.apache.ibatis.ognl.OgnlContext: java.lang.Object getCurrentObject()>() 
(assert (= var1905 null-ClassObject)) ; Cond: $r2 == null 
(assert true)
(define-const var218 var2363 (getCurrentObject/-1995641357 var246)) ; Statement: $r46 = virtualinvoke r1.<org.apache.ibatis.ognl.OgnlContext: java.lang.Object getCurrentObject()>() 
 ; Statement: if $r46 == null goto $r53 = virtualinvoke r3.<java.lang.Object: java.lang.Class getClass()>() 
(assert (= var218 null-var2363)) ; Cond: $r46 == null 
(assert true)
(define-const var94 ClassObject (getClass/1258963082 var3454)) ; Statement: $r53 = virtualinvoke r3.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var3940 Bool (isArray/1369458484 var94)) ; Statement: $z6 = virtualinvoke $r53.<java.lang.Class: boolean isArray()>() 
 ; Statement: if $z6 == 0 goto $r54 = virtualinvoke r3.<java.lang.Object: java.lang.Class getClass()>() 
(assert (= (ite var3940 1 0) 0)) ; Cond: $z6 == 0 
(assert true)
(define-const var1245 ClassObject (getClass/1258963082 var3454)) ; Statement: $r54 = virtualinvoke r3.<java.lang.Object: java.lang.Class getClass()>() 
(assert true) ; Non Conditional
(assert true)
(define-const var481 ClassObject (getClass/1258963082 var3454)) ; Statement: $r4 = virtualinvoke r3.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
;(assert (setCurrentAccessor/563071030 var246 var481)) ; Statement: virtualinvoke r1.<org.apache.ibatis.ognl.OgnlContext: void setCurrentAccessor(java.lang.Class)>($r4) 

(declare-const var246!1 var2735)
(declare-const var481!1 ClassObject)
(assert true)
(define-const var0 ClassObject (getClass/1258963082 var3454)) ; Statement: $r5 = virtualinvoke r3.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var1098 ClassObject (getComponentType/1960034130 var0)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.Class: java.lang.Class getComponentType()>() 
(assert true)
;(assert (setCurrentType/-350497431 var246!1 var1098)) ; Statement: virtualinvoke r1.<org.apache.ibatis.ognl.OgnlContext: void setCurrentType(java.lang.Class)>($r6) 

(declare-const var246!2 var2735)
(declare-const var1098!1 ClassObject)
(assert true)
(define-const var154 Bool (isPrimitive/-473230874 var1245)) ; Statement: $z0 = virtualinvoke $r54.<java.lang.Class: boolean isPrimitive()>() 
 ; Statement: if $z0 == 0 goto $r7 = new java.lang.StringBuilder 
(assert (= (ite var154 1 0) 0)) ; Cond: $z0 == 0 
(define-const var419 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var419)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var419!1 String)
(assert (= var419!1 ""))
(assert true)
(define-const var2694 String (append/672562846 var419!1 "[")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[") 
(declare-const var419!2 String)
(assert (= var419!2 (str.++ var419!1 "[")))
(assert true)
(define-const var3943 String (append/672562846 var2694 var2359)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r45) 
(declare-const var2694!1 String)
(assert (= var2694!1 (str.++ var2694 var2359)))
(assert true)
(define-const var2110 String (append/672562846 var3943 "]=ognl.OgnlOps.convertValue($3,")) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]=ognl.OgnlOps.convertValue($3,") 
(declare-const var3943!1 String)
(assert (= var3943!1 (str.++ var3943 "]=ognl.OgnlOps.convertValue($3,")))
(assert true)
(define-const var86 String (getName/-1958580599 var1245)) ; Statement: $r10 = virtualinvoke $r54.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1208 String (append/672562846 var2110 var86)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var2110!1 String)
(assert (= var2110!1 (str.++ var2110 var86)))
(assert true)
(define-const var2120 String (append/672562846 var1208 ".class)")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".class)") 
(declare-const var1208!1 String)
(assert (= var1208!1 (str.++ var1208 ".class)")))
(assert true)
(define-const var1497 String (toString/-2075883882 var2120)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {toString/-522406933=([java.lang.Object], java.lang.String), getCurrentType/-1397948801=([org.apache.ibatis.ognl.OgnlContext], java.lang.Class), getCurrentObject/-1995641357=([org.apache.ibatis.ognl.OgnlContext], java.lang.Object), getClass/1258963082=([java.lang.Object], java.lang.Class), isArray/1369458484=([java.lang.Class], boolean), setCurrentAccessor/563071030=([org.apache.ibatis.ognl.OgnlContext, java.lang.Class], void), getComponentType/1960034130=([java.lang.Class], java.lang.Class), setCurrentType/-350497431=([org.apache.ibatis.ognl.OgnlContext, java.lang.Class], void), isPrimitive/-473230874=([java.lang.Class], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1149=org.apache.ibatis.ognl.ArrayPropertyAccessor, var2136=r44, var2735=org.apache.ibatis.ognl.OgnlContext, var246=r1, var2363=java.lang.Object, var3454=r3, var3262=r0, var2359=r45, var1905=$r2, var218=$r46, var94=$r53, var3940=$z6, var1245=$r54, var481=$r4, var0=$r5, var1098=$r6, var154=$z0, var419=$r7, var2694=$r8, var3943=$r9, var2110=$r11, var86=$r10, var1208=$r12, var2120=$r13, var1497=$r14}
; {org.apache.ibatis.ognl.ArrayPropertyAccessor=var1149, r44=var2136, org.apache.ibatis.ognl.OgnlContext=var2735, r1=var246, java.lang.Object=var2363, r3=var3454, r0=var3262, r45=var2359, $r2=var1905, $r46=var218, $r53=var94, $z6=var3940, $r54=var1245, $r4=var481, $r5=var0, $r6=var1098, $z0=var154, $r7=var419, $r8=var2694, $r9=var3943, $r11=var2110, $r10=var86, $r12=var1208, $r13=var2120, $r14=var1497}
;seq <java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r44 := @this: org.apache.ibatis.ognl.ArrayPropertyAccessor;	r1 := @parameter0: org.apache.ibatis.ognl.OgnlContext;	r3 := @parameter1: java.lang.Object;	r0 := @parameter2: java.lang.Object;	r45 = virtualinvoke r0.<java.lang.Object: java.lang.String toString()>();	$r2 = virtualinvoke r1.<org.apache.ibatis.ognl.OgnlContext: java.lang.Class getCurrentType()>();	if $r2 == null goto $r46 = virtualinvoke r1.<org.apache.ibatis.ognl.OgnlContext: java.lang.Object getCurrentObject()>();	$r46 = virtualinvoke r1.<org.apache.ibatis.ognl.OgnlContext: java.lang.Object getCurrentObject()>();	if $r46 == null goto $r53 = virtualinvoke r3.<java.lang.Object: java.lang.Class getClass()>();	$r53 = virtualinvoke r3.<java.lang.Object: java.lang.Class getClass()>();	$z6 = virtualinvoke $r53.<java.lang.Class: boolean isArray()>();	if $z6 == 0 goto $r54 = virtualinvoke r3.<java.lang.Object: java.lang.Class getClass()>();	$r54 = virtualinvoke r3.<java.lang.Object: java.lang.Class getClass()>();	$r4 = virtualinvoke r3.<java.lang.Object: java.lang.Class getClass()>();	virtualinvoke r1.<org.apache.ibatis.ognl.OgnlContext: void setCurrentAccessor(java.lang.Class)>($r4);	$r5 = virtualinvoke r3.<java.lang.Object: java.lang.Class getClass()>();	$r6 = virtualinvoke $r5.<java.lang.Class: java.lang.Class getComponentType()>();	virtualinvoke r1.<org.apache.ibatis.ognl.OgnlContext: void setCurrentType(java.lang.Class)>($r6);	$z0 = virtualinvoke $r54.<java.lang.Class: boolean isPrimitive()>();	if $z0 == 0 goto $r7 = new java.lang.StringBuilder;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r45);	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]=ognl.OgnlOps.convertValue($3,");	$r10 = virtualinvoke $r54.<java.lang.Class: java.lang.String getName()>();	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".class)");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	return $r14
;block_num 6