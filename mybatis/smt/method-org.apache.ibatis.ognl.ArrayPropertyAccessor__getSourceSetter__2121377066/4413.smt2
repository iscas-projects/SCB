(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var542 0)
(declare-sort var1005 0)
(declare-sort var3466 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toString/-522406933 (var3466) String)
(declare-fun getCurrentType/-1397948801 (var1005) ClassObject)
(declare-fun getCurrentObject/-1995641357 (var1005) var3466)
(declare-fun getClass/1258963082 (var3466) ClassObject)
(declare-fun isArray/1369458484 (ClassObject) Bool)
(declare-fun getComponentType/1960034130 (ClassObject) ClassObject)
(declare-fun setCurrentAccessor/563071030 (var1005 ClassObject) void)
(declare-fun setCurrentType/-350497431 (var1005 ClassObject) void)
(declare-fun isPrimitive/-473230874 (ClassObject) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var542 var542)
(declare-const null-var1005 var1005)
(declare-const null-var3466 var3466)
(declare-const null-ClassObject ClassObject)
(declare-const var2405 var542) ; Statement: r44 := @this: org.apache.ibatis.ognl.ArrayPropertyAccessor 
(assert (not (= var2405 null-var542)))
(declare-const var267 var1005) ; Statement: r1 := @parameter0: org.apache.ibatis.ognl.OgnlContext 
(assert (not (= var267 null-var1005)))
(declare-const var1035 var3466) ; Statement: r3 := @parameter1: java.lang.Object 
(assert (not (= var1035 null-var3466)))
(declare-const var203 var3466) ; Statement: r0 := @parameter2: java.lang.Object 
(assert (not (= var203 null-var3466)))
(assert true)
(define-const var1359 String (toString/-522406933 var203)) ; Statement: r45 = virtualinvoke r0.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var1679 ClassObject (getCurrentType/-1397948801 var267)) ; Statement: $r2 = virtualinvoke r1.<org.apache.ibatis.ognl.OgnlContext: java.lang.Class getCurrentType()>() 
 ; Statement: if $r2 == null goto $r46 = virtualinvoke r1.<org.apache.ibatis.ognl.OgnlContext: java.lang.Object getCurrentObject()>() 
(assert (= var1679 null-ClassObject)) ; Cond: $r2 == null 
(assert true)
(define-const var3903 var3466 (getCurrentObject/-1995641357 var267)) ; Statement: $r46 = virtualinvoke r1.<org.apache.ibatis.ognl.OgnlContext: java.lang.Object getCurrentObject()>() 
 ; Statement: if $r46 == null goto $r53 = virtualinvoke r3.<java.lang.Object: java.lang.Class getClass()>() 
(assert (= var3903 null-var3466)) ; Cond: $r46 == null 
(assert true)
(define-const var3765 ClassObject (getClass/1258963082 var1035)) ; Statement: $r53 = virtualinvoke r3.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var684 Bool (isArray/1369458484 var3765)) ; Statement: $z6 = virtualinvoke $r53.<java.lang.Class: boolean isArray()>() 
 ; Statement: if $z6 == 0 goto $r54 = virtualinvoke r3.<java.lang.Object: java.lang.Class getClass()>() 
(assert (not (= (ite var684 1 0) 0))) ; Negate: Cond: $z6 == 0  
(assert true)
(define-const var3721 ClassObject (getClass/1258963082 var1035)) ; Statement: $r29 = virtualinvoke r3.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var391 ClassObject (getComponentType/1960034130 var3721)) ; Statement: $r54 = virtualinvoke $r29.<java.lang.Class: java.lang.Class getComponentType()>() 
 ; Statement: goto [?= $r4 = virtualinvoke r3.<java.lang.Object: java.lang.Class getClass()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var3397 ClassObject (getClass/1258963082 var1035)) ; Statement: $r4 = virtualinvoke r3.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
;(assert (setCurrentAccessor/563071030 var267 var3397)) ; Statement: virtualinvoke r1.<org.apache.ibatis.ognl.OgnlContext: void setCurrentAccessor(java.lang.Class)>($r4) 

(declare-const var267!1 var1005)
(declare-const var3397!1 ClassObject)
(assert true)
(define-const var1367 ClassObject (getClass/1258963082 var1035)) ; Statement: $r5 = virtualinvoke r3.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var1733 ClassObject (getComponentType/1960034130 var1367)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.Class: java.lang.Class getComponentType()>() 
(assert true)
;(assert (setCurrentType/-350497431 var267!1 var1733)) ; Statement: virtualinvoke r1.<org.apache.ibatis.ognl.OgnlContext: void setCurrentType(java.lang.Class)>($r6) 

(declare-const var267!2 var1005)
(declare-const var1733!1 ClassObject)
(assert true)
(define-const var2781 Bool (isPrimitive/-473230874 var391)) ; Statement: $z0 = virtualinvoke $r54.<java.lang.Class: boolean isPrimitive()>() 
 ; Statement: if $z0 == 0 goto $r7 = new java.lang.StringBuilder 
(assert (= (ite var2781 1 0) 0)) ; Cond: $z0 == 0 
(define-const var375 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var375)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var375!1 String)
(assert (= var375!1 ""))
(assert true)
(define-const var2301 String (append/672562846 var375!1 "[")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[") 
(declare-const var375!2 String)
(assert (= var375!2 (str.++ var375!1 "[")))
(assert true)
(define-const var157 String (append/672562846 var2301 var1359)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r45) 
(declare-const var2301!1 String)
(assert (= var2301!1 (str.++ var2301 var1359)))
(assert true)
(define-const var1150 String (append/672562846 var157 "]=ognl.OgnlOps.convertValue($3,")) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]=ognl.OgnlOps.convertValue($3,") 
(declare-const var157!1 String)
(assert (= var157!1 (str.++ var157 "]=ognl.OgnlOps.convertValue($3,")))
(assert true)
(define-const var43 String (getName/-1958580599 var391)) ; Statement: $r10 = virtualinvoke $r54.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2057 String (append/672562846 var1150 var43)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var1150!1 String)
(assert (= var1150!1 (str.++ var1150 var43)))
(assert true)
(define-const var1159 String (append/672562846 var2057 ".class)")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".class)") 
(declare-const var2057!1 String)
(assert (= var2057!1 (str.++ var2057 ".class)")))
(assert true)
(define-const var2239 String (toString/-2075883882 var1159)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {toString/-522406933=([java.lang.Object], java.lang.String), getCurrentType/-1397948801=([org.apache.ibatis.ognl.OgnlContext], java.lang.Class), getCurrentObject/-1995641357=([org.apache.ibatis.ognl.OgnlContext], java.lang.Object), getClass/1258963082=([java.lang.Object], java.lang.Class), isArray/1369458484=([java.lang.Class], boolean), getComponentType/1960034130=([java.lang.Class], java.lang.Class), setCurrentAccessor/563071030=([org.apache.ibatis.ognl.OgnlContext, java.lang.Class], void), setCurrentType/-350497431=([org.apache.ibatis.ognl.OgnlContext, java.lang.Class], void), isPrimitive/-473230874=([java.lang.Class], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var542=org.apache.ibatis.ognl.ArrayPropertyAccessor, var2405=r44, var1005=org.apache.ibatis.ognl.OgnlContext, var267=r1, var3466=java.lang.Object, var1035=r3, var203=r0, var1359=r45, var1679=$r2, var3903=$r46, var3765=$r53, var684=$z6, var3721=$r29, var391=$r54, var3397=$r4, var1367=$r5, var1733=$r6, var2781=$z0, var375=$r7, var2301=$r8, var157=$r9, var1150=$r11, var43=$r10, var2057=$r12, var1159=$r13, var2239=$r14}
; {org.apache.ibatis.ognl.ArrayPropertyAccessor=var542, r44=var2405, org.apache.ibatis.ognl.OgnlContext=var1005, r1=var267, java.lang.Object=var3466, r3=var1035, r0=var203, r45=var1359, $r2=var1679, $r46=var3903, $r53=var3765, $z6=var684, $r29=var3721, $r54=var391, $r4=var3397, $r5=var1367, $r6=var1733, $z0=var2781, $r7=var375, $r8=var2301, $r9=var157, $r11=var1150, $r10=var43, $r12=var2057, $r13=var1159, $r14=var2239}
;seq <java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r44 := @this: org.apache.ibatis.ognl.ArrayPropertyAccessor;	r1 := @parameter0: org.apache.ibatis.ognl.OgnlContext;	r3 := @parameter1: java.lang.Object;	r0 := @parameter2: java.lang.Object;	r45 = virtualinvoke r0.<java.lang.Object: java.lang.String toString()>();	$r2 = virtualinvoke r1.<org.apache.ibatis.ognl.OgnlContext: java.lang.Class getCurrentType()>();	if $r2 == null goto $r46 = virtualinvoke r1.<org.apache.ibatis.ognl.OgnlContext: java.lang.Object getCurrentObject()>();	$r46 = virtualinvoke r1.<org.apache.ibatis.ognl.OgnlContext: java.lang.Object getCurrentObject()>();	if $r46 == null goto $r53 = virtualinvoke r3.<java.lang.Object: java.lang.Class getClass()>();	$r53 = virtualinvoke r3.<java.lang.Object: java.lang.Class getClass()>();	$z6 = virtualinvoke $r53.<java.lang.Class: boolean isArray()>();	if $z6 == 0 goto $r54 = virtualinvoke r3.<java.lang.Object: java.lang.Class getClass()>();	$r29 = virtualinvoke r3.<java.lang.Object: java.lang.Class getClass()>();	$r54 = virtualinvoke $r29.<java.lang.Class: java.lang.Class getComponentType()>();	goto [?= $r4 = virtualinvoke r3.<java.lang.Object: java.lang.Class getClass()>()];	$r4 = virtualinvoke r3.<java.lang.Object: java.lang.Class getClass()>();	virtualinvoke r1.<org.apache.ibatis.ognl.OgnlContext: void setCurrentAccessor(java.lang.Class)>($r4);	$r5 = virtualinvoke r3.<java.lang.Object: java.lang.Class getClass()>();	$r6 = virtualinvoke $r5.<java.lang.Class: java.lang.Class getComponentType()>();	virtualinvoke r1.<org.apache.ibatis.ognl.OgnlContext: void setCurrentType(java.lang.Class)>($r6);	$z0 = virtualinvoke $r54.<java.lang.Class: boolean isPrimitive()>();	if $z0 == 0 goto $r7 = new java.lang.StringBuilder;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r45);	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]=ognl.OgnlOps.convertValue($3,");	$r10 = virtualinvoke $r54.<java.lang.Class: java.lang.String getName()>();	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".class)");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	return $r14
;block_num 6