(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1725 0)
(declare-sort var153 0)
(declare-sort var1576 0)
(declare-sort var2744 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2744!class ClassObject)
(declare-const var1576!class ClassObject)
(declare-fun setCurrentAccessor/563071030 (var153 ClassObject) void)
(declare-fun setCurrentType/-350497431 (var153 ClassObject) void)
(declare-fun toString/-522406933 (var1576) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1725 var1725)
(declare-const null-var153 var153)
(declare-const null-var1576 var1576)
(declare-const var610 var1725) ; Statement: r8 := @this: org.apache.ibatis.ognl.MapPropertyAccessor 
(assert (not (= var610 null-var1725)))
(declare-const var1050 var153) ; Statement: r0 := @parameter0: org.apache.ibatis.ognl.OgnlContext 
(assert (not (= var1050 null-var153)))
(declare-const var247 var1576) ; Statement: r9 := @parameter1: java.lang.Object 
(assert (not (= var247 null-var1576)))
(declare-const var3370 var1576) ; Statement: r1 := @parameter2: java.lang.Object 
(assert (not (= var3370 null-var1576)))
(assert true)
;(assert (setCurrentAccessor/563071030 var1050 var2744!class)) ; Statement: virtualinvoke r0.<org.apache.ibatis.ognl.OgnlContext: void setCurrentAccessor(java.lang.Class)>(class "Ljava/util/Map;") 

(declare-const var1050!1 var153)
(declare-const var1570 ClassObject)
(assert true)
;(assert (setCurrentType/-350497431 var1050!1 var1576!class)) ; Statement: virtualinvoke r0.<org.apache.ibatis.ognl.OgnlContext: void setCurrentType(java.lang.Class)>(class "Ljava/lang/Object;") 

(declare-const var1050!2 var153)
(declare-const var2060 ClassObject)
(assert true)
(define-const var1499 String (toString/-522406933 var3370)) ; Statement: r2 = virtualinvoke r1.<java.lang.Object: java.lang.String toString()>() 
(define-const var617 Bool false) ; Statement: $z0 = r1 instanceof java.lang.String 
 ; Statement: if $z0 == 0 goto $r3 = new java.lang.StringBuilder 
(assert (= (ite var617 1 0) 0)) ; Cond: $z0 == 0 
(define-const var71 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var71)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var71!1 String)
(assert (= var71!1 ""))
(assert true)
(define-const var729 String (append/672562846 var71!1 ".put(")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".put(") 
(declare-const var71!2 String)
(assert (= var71!2 (str.++ var71!1 ".put(")))
(assert true)
(define-const var889 String (append/672562846 var729 var1499)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var729!1 String)
(assert (= var729!1 (str.++ var729 var1499)))
(assert true)
(define-const var1845 String (append/672562846 var889 ", $3)")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", $3)") 
(declare-const var889!1 String)
(assert (= var889!1 (str.++ var889 ", $3)")))
(assert true)
(define-const var2345 String (toString/-2075883882 var1845)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {setCurrentAccessor/563071030=([org.apache.ibatis.ognl.OgnlContext, java.lang.Class], void), setCurrentType/-350497431=([org.apache.ibatis.ognl.OgnlContext, java.lang.Class], void), toString/-522406933=([java.lang.Object], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1725=org.apache.ibatis.ognl.MapPropertyAccessor, var610=r8, var153=org.apache.ibatis.ognl.OgnlContext, var1050=r0, var1576=java.lang.Object, var247=r9, var3370=r1, var2744=java.util.Map, var1570=class "Ljava/util/Map;", var2060=class "Ljava/lang/Object;", var1499=r2, var617=$z0, var71=$r3, var729=$r4, var889=$r5, var1845=$r6, var2345=$r7}
; {org.apache.ibatis.ognl.MapPropertyAccessor=var1725, r8=var610, org.apache.ibatis.ognl.OgnlContext=var153, r0=var1050, java.lang.Object=var1576, r9=var247, r1=var3370, java.util.Map=var2744, class "Ljava/util/Map;"=var1570, class "Ljava/lang/Object;"=var2060, r2=var1499, $z0=var617, $r3=var71, $r4=var729, $r5=var889, $r6=var1845, $r7=var2345}
;seq <java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r8 := @this: org.apache.ibatis.ognl.MapPropertyAccessor;	r0 := @parameter0: org.apache.ibatis.ognl.OgnlContext;	r9 := @parameter1: java.lang.Object;	r1 := @parameter2: java.lang.Object;	virtualinvoke r0.<org.apache.ibatis.ognl.OgnlContext: void setCurrentAccessor(java.lang.Class)>(class "Ljava/util/Map;");	virtualinvoke r0.<org.apache.ibatis.ognl.OgnlContext: void setCurrentType(java.lang.Class)>(class "Ljava/lang/Object;");	r2 = virtualinvoke r1.<java.lang.Object: java.lang.String toString()>();	$z0 = r1 instanceof java.lang.String;	if $z0 == 0 goto $r3 = new java.lang.StringBuilder;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".put(");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", $3)");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 2