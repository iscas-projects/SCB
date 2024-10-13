(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1501 0)
(declare-sort var3563 0)
(declare-sort var277 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun rawType/-1306227197 (var1501) ClassObject)
(declare-fun append/-1031950772 (String var3563) String)
(declare-fun cast-from-ClassObject-to-var3563 (ClassObject) var3563)
(declare-fun ownerType/-1306227197 (var1501) ClassObject)
(declare-fun actualTypeArguments/-1306227197 (var1501) (Array Int ClassObject))
(declare-fun var277_toString/-575966009 ((Array Int var3563)) String)
(declare-fun cast-from-__Array__Int__ClassObject__-to-__Array__Int__var3563__ ((Array Int ClassObject)) (Array Int var3563))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1501 var1501)
(declare-const var571 var1501) ; Statement: r1 := @this: org.apache.ibatis.reflection.TypeParameterResolver$ParameterizedTypeImpl 
(assert (not (= var571 null-var1501)))
(define-const var1365 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1365)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1365!1 String)
(assert (= var1365!1 ""))
(assert true)
(define-const var1653 String (append/672562846 var1365!1 "ParameterizedTypeImpl [rawType=")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ParameterizedTypeImpl [rawType=") 
(declare-const var1365!2 String)
(assert (= var1365!2 (str.++ var1365!1 "ParameterizedTypeImpl [rawType=")))
(define-const var3180 ClassObject (rawType/-1306227197 var571)) ; Statement: $r2 = r1.<org.apache.ibatis.reflection.TypeParameterResolver$ParameterizedTypeImpl: java.lang.Class rawType> 
(assert true)
(define-const var1174 String (append/-1031950772 var1653 (cast-from-ClassObject-to-var3563 var3180))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var1653!1 String)
(assert (str.prefixof var1653 var1653!1))
(assert true)
(define-const var3716 String (append/672562846 var1174 ", ownerType=")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ownerType=") 
(declare-const var1174!1 String)
(assert (= var1174!1 (str.++ var1174 ", ownerType=")))
(define-const var2147 ClassObject (ownerType/-1306227197 var571)) ; Statement: $r5 = r1.<org.apache.ibatis.reflection.TypeParameterResolver$ParameterizedTypeImpl: java.lang.reflect.Type ownerType> 
(assert true)
(define-const var3169 String (append/-1031950772 var3716 (cast-from-ClassObject-to-var3563 var2147))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5) 
(declare-const var3716!1 String)
(assert (str.prefixof var3716 var3716!1))
(assert true)
(define-const var3772 String (append/672562846 var3169 ", actualTypeArguments=")) ; Statement: $r10 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", actualTypeArguments=") 
(declare-const var3169!1 String)
(assert (= var3169!1 (str.++ var3169 ", actualTypeArguments=")))
(define-const var3328 (Array Int ClassObject) (actualTypeArguments/-1306227197 var571)) ; Statement: $r8 = r1.<org.apache.ibatis.reflection.TypeParameterResolver$ParameterizedTypeImpl: java.lang.reflect.Type[] actualTypeArguments> 
(define-const var1498 String (var277_toString/-575966009 (cast-from-__Array__Int__ClassObject__-to-__Array__Int__var3563__ var3328))) ; Statement: $r9 = staticinvoke <java.util.Arrays: java.lang.String toString(java.lang.Object[])>($r8) 
(assert true)
(define-const var1152 String (append/672562846 var3772 var1498)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var3772!1 String)
(assert (= var3772!1 (str.++ var3772 var1498)))
(assert true)
(define-const var2794 String (append/672562846 var1152 "]")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var1152!1 String)
(assert (= var1152!1 (str.++ var1152 "]")))
(assert true)
(define-const var804 String (toString/-2075883882 var2794)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), rawType/-1306227197=([org.apache.ibatis.reflection.TypeParameterResolver$ParameterizedTypeImpl], java.lang.Class), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var3563=([java.lang.Class], java.lang.Object), ownerType/-1306227197=([org.apache.ibatis.reflection.TypeParameterResolver$ParameterizedTypeImpl], java.lang.reflect.Type), actualTypeArguments/-1306227197=([org.apache.ibatis.reflection.TypeParameterResolver$ParameterizedTypeImpl], java.lang.reflect.Type[]), var277_toString/-575966009=([java.lang.Object[]], java.lang.String), cast-from-__Array__Int__ClassObject__-to-__Array__Int__var3563__=([java.lang.reflect.Type[]], java.lang.Object[]), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1501=org.apache.ibatis.reflection.TypeParameterResolver$ParameterizedTypeImpl, var571=r1, var1365=$r0, var1653=$r3, var3180=$r2, var3563=java.lang.Object, var1174=$r4, var3716=$r6, var2147=$r5, var3169=$r7, var3772=$r10, var3328=$r8, var277=java.util.Arrays, var1498=$r9, var1152=$r11, var2794=$r12, var804=$r13}
; {org.apache.ibatis.reflection.TypeParameterResolver$ParameterizedTypeImpl=var1501, r1=var571, $r0=var1365, $r3=var1653, $r2=var3180, java.lang.Object=var3563, $r4=var1174, $r6=var3716, $r5=var2147, $r7=var3169, $r10=var3772, $r8=var3328, java.util.Arrays=var277, $r9=var1498, $r11=var1152, $r12=var2794, $r13=var804}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.util.Arrays: java.lang.String toString(java.lang.Object[])>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.reflection.TypeParameterResolver$ParameterizedTypeImpl;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ParameterizedTypeImpl [rawType=");	$r2 = r1.<org.apache.ibatis.reflection.TypeParameterResolver$ParameterizedTypeImpl: java.lang.Class rawType>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ownerType=");	$r5 = r1.<org.apache.ibatis.reflection.TypeParameterResolver$ParameterizedTypeImpl: java.lang.reflect.Type ownerType>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5);	$r10 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", actualTypeArguments=");	$r8 = r1.<org.apache.ibatis.reflection.TypeParameterResolver$ParameterizedTypeImpl: java.lang.reflect.Type[] actualTypeArguments>;	$r9 = staticinvoke <java.util.Arrays: java.lang.String toString(java.lang.Object[])>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	return $r13
;block_num 1