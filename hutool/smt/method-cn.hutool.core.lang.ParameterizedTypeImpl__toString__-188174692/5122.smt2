(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var322 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun ownerType/1979131132 (var322) ClassObject)
(declare-fun rawType/1979131132 (var322) ClassObject)
(define-fun cast-from-ClassObject-to-ClassObject ((arg ClassObject)) ClassObject arg)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun actualTypeArguments/1979131132 (var322) (Array Int ClassObject))
(declare-fun var322_appendAllTo/-1624331727 (String String (Array Int ClassObject)) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var322 var322)
(declare-const null-ClassObject ClassObject)
(declare-const var3717 var322) ; Statement: r1 := @this: cn.hutool.core.lang.ParameterizedTypeImpl 
(assert (not (= var3717 null-var322)))
(define-const var1728 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1728)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1728!1 String)
(assert (= var1728!1 ""))
(define-const var2386 ClassObject (ownerType/1979131132 var3717)) ; Statement: r2 = r1.<cn.hutool.core.lang.ParameterizedTypeImpl: java.lang.reflect.Type ownerType> 
(define-const var5 ClassObject (rawType/1979131132 var3717)) ; Statement: $r3 = r1.<cn.hutool.core.lang.ParameterizedTypeImpl: java.lang.reflect.Type rawType> 
(define-const var3623 ClassObject (cast-from-ClassObject-to-ClassObject var5)) ; Statement: r4 = (java.lang.Class) $r3 
 ; Statement: if r2 != null goto $z0 = r2 instanceof java.lang.Class 
(assert (not (not (= var2386 null-ClassObject)))) ; Negate: Cond: r2 != null  
(assert true)
(define-const var3702 String (getName/-1958580599 var3623)) ; Statement: $r10 = virtualinvoke r4.<java.lang.Class: java.lang.String getName()>() 
(assert true)
;(assert (append/672562846 var1728!1 var3702)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var1728!2 String)
(assert (= var1728!2 (str.++ var1728!1 var3702)))
 ; Statement: goto [?= $r11 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(60)] 
(assert true) ; Non Conditional
(assert true)
(define-const var2083 String (append/-1166366385 var1728!2 60)) ; Statement: $r11 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(60) 
(declare-const var1728!3 String)
(assert (str.prefixof var1728!2 var1728!3))
(define-const var2516 (Array Int ClassObject) (actualTypeArguments/1979131132 var3717)) ; Statement: $r12 = r1.<cn.hutool.core.lang.ParameterizedTypeImpl: java.lang.reflect.Type[] actualTypeArguments> 
(define-const var3327 String (var322_appendAllTo/-1624331727 var2083 ", " var2516)) ; Statement: $r13 = staticinvoke <cn.hutool.core.lang.ParameterizedTypeImpl: java.lang.StringBuilder appendAllTo(java.lang.StringBuilder,java.lang.String,java.lang.reflect.Type[])>($r11, ", ", $r12) 
(assert true)
;(assert (append/-1166366385 var3327 62)) ; Statement: virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(62) 
(declare-const var3327!1 String)
(assert (str.prefixof var3327 var3327!1))
(assert true)
(define-const var3881 String (toString/-2075883882 var1728!3)) ; Statement: $r14 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), ownerType/1979131132=([cn.hutool.core.lang.ParameterizedTypeImpl], java.lang.reflect.Type), rawType/1979131132=([cn.hutool.core.lang.ParameterizedTypeImpl], java.lang.reflect.Type), cast-from-ClassObject-to-ClassObject=([java.lang.reflect.Type], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), actualTypeArguments/1979131132=([cn.hutool.core.lang.ParameterizedTypeImpl], java.lang.reflect.Type[]), var322_appendAllTo/-1624331727=([java.lang.StringBuilder, java.lang.String, java.lang.reflect.Type[]], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var322=cn.hutool.core.lang.ParameterizedTypeImpl, var3717=r1, var1728=$r0, var2386=r2, var5=$r3, var3623=r4, var3702=$r10, var2083=$r11, var2516=$r12, var3327=$r13, var3881=$r14}
; {cn.hutool.core.lang.ParameterizedTypeImpl=var322, r1=var3717, $r0=var1728, r2=var2386, $r3=var5, r4=var3623, $r10=var3702, $r11=var2083, $r12=var2516, $r13=var3327, $r14=var3881}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: cn.hutool.core.lang.ParameterizedTypeImpl;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	r2 = r1.<cn.hutool.core.lang.ParameterizedTypeImpl: java.lang.reflect.Type ownerType>;	$r3 = r1.<cn.hutool.core.lang.ParameterizedTypeImpl: java.lang.reflect.Type rawType>;	r4 = (java.lang.Class) $r3;	if r2 != null goto $z0 = r2 instanceof java.lang.Class;	$r10 = virtualinvoke r4.<java.lang.Class: java.lang.String getName()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	goto [?= $r11 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(60)];	$r11 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(60);	$r12 = r1.<cn.hutool.core.lang.ParameterizedTypeImpl: java.lang.reflect.Type[] actualTypeArguments>;	$r13 = staticinvoke <cn.hutool.core.lang.ParameterizedTypeImpl: java.lang.StringBuilder appendAllTo(java.lang.StringBuilder,java.lang.String,java.lang.reflect.Type[])>($r11, ", ", $r12);	virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(62);	$r14 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r14
;block_num 3