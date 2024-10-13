(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var692 0)
(declare-sort var0 0)
(declare-sort var2750 0)
(declare-sort var1592 0)
(declare-sort var2426 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun val$request/-171360921 (var692) var2750)
(declare-fun var2750_getParameterValues/1435641857 (var2750 String) (Array Int String))
(declare-fun var1592_isEmpty/916532361 ((Array Int var2426)) Bool)
(declare-fun cast-from-__Array__Int__String__-to-__Array__Int__var2426__ ((Array Int String)) (Array Int var2426))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun val$beanName/-171360921 (var692) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var692 var692)
(declare-const null-String String)
(declare-const null-ClassObject ClassObject)
(declare-const var1702 var692) ; Statement: r0 := @this: cn.hutool.extra.servlet.ServletUtil$1 
(assert (not (= var1702 null-var692)))
(declare-const var386 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var386 null-String)))
(declare-const var1019 ClassObject) ; Statement: r11 := @parameter1: java.lang.reflect.Type 
(assert (not (= var1019 null-ClassObject)))
(define-const var2882 var2750 (val$request/-171360921 var1702)) ; Statement: $r2 = r0.<cn.hutool.extra.servlet.ServletUtil$1: javax.servlet.ServletRequest val$request> 
(define-const var67 (Array Int String) (var2750_getParameterValues/1435641857 var2882 var386)) ; Statement: r12 = interfaceinvoke $r2.<javax.servlet.ServletRequest: java.lang.String[] getParameterValues(java.lang.String)>(r1) 
(define-const var2460 Bool (var1592_isEmpty/916532361 (cast-from-__Array__Int__String__-to-__Array__Int__var2426__ var67))) ; Statement: $z0 = staticinvoke <cn.hutool.core.util.ArrayUtil: boolean isEmpty(java.lang.Object[])>(r12) 
 ; Statement: if $z0 == 0 goto $i0 = lengthof r12 
(assert (not (= (ite var2460 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2846 var2750 (val$request/-171360921 var1702)) ; Statement: $r5 = r0.<cn.hutool.extra.servlet.ServletUtil$1: javax.servlet.ServletRequest val$request> 
(define-const var2713 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2713)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2713!1 String)
(assert (= var2713!1 ""))
(define-const var566 String (val$beanName/-171360921 var1702)) ; Statement: $r6 = r0.<cn.hutool.extra.servlet.ServletUtil$1: java.lang.String val$beanName> 
(assert true)
(define-const var1837 String (append/672562846 var2713!1 var566)) ; Statement: $r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var2713!2 String)
(assert (= var2713!2 (str.++ var2713!1 var566)))
(assert true)
(define-const var3788 String (append/672562846 var1837 ".")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".") 
(declare-const var1837!1 String)
(assert (= var1837!1 (str.++ var1837 ".")))
(assert true)
(define-const var351 String (append/672562846 var3788 var386)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3788!1 String)
(assert (= var3788!1 (str.++ var3788 var386)))
(assert true)
(define-const var982 String (toString/-2075883882 var351)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var67!1 (Array Int String) (var2750_getParameterValues/1435641857 var2846 var982)) ; Statement: r12 = interfaceinvoke $r5.<javax.servlet.ServletRequest: java.lang.String[] getParameterValues(java.lang.String)>($r10) 
(define-const var1165 Bool (var1592_isEmpty/916532361 (cast-from-__Array__Int__String__-to-__Array__Int__var2426__ var67!1))) ; Statement: $z1 = staticinvoke <cn.hutool.core.util.ArrayUtil: boolean isEmpty(java.lang.Object[])>(r12) 
 ; Statement: if $z1 == 0 goto $i0 = lengthof r12 
(assert (not (= (ite var1165 1 0) 0))) ; Negate: Cond: $z1 == 0  
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {val$request/-171360921=([cn.hutool.extra.servlet.ServletUtil$1], javax.servlet.ServletRequest), var2750_getParameterValues/1435641857=([javax.servlet.ServletRequest, java.lang.String], java.lang.String[]), var1592_isEmpty/916532361=([java.lang.Object[]], boolean), cast-from-__Array__Int__String__-to-__Array__Int__var2426__=([java.lang.String[]], java.lang.Object[]), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), val$beanName/-171360921=([cn.hutool.extra.servlet.ServletUtil$1], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var692=cn.hutool.extra.servlet.ServletUtil$1, var1702=r0, var386=r1, var0=null_type, var1019=r11, var2750=javax.servlet.ServletRequest, var2882=$r2, var67=r12, var1592=cn.hutool.core.util.ArrayUtil, var2426=java.lang.Object, var2460=$z0, var2846=$r5, var2713=$r4, var566=$r6, var1837=$r7, var3788=$r8, var351=$r9, var982=$r10, var1165=$z1}
; {cn.hutool.extra.servlet.ServletUtil$1=var692, r0=var1702, r1=var386, null_type=var0, r11=var1019, javax.servlet.ServletRequest=var2750, $r2=var2882, r12=var67, cn.hutool.core.util.ArrayUtil=var1592, java.lang.Object=var2426, $z0=var2460, $r5=var2846, $r4=var2713, $r6=var566, $r7=var1837, $r8=var3788, $r9=var351, $r10=var982, $z1=var1165}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: cn.hutool.extra.servlet.ServletUtil$1;	r1 := @parameter0: java.lang.String;	r11 := @parameter1: java.lang.reflect.Type;	$r2 = r0.<cn.hutool.extra.servlet.ServletUtil$1: javax.servlet.ServletRequest val$request>;	r12 = interfaceinvoke $r2.<javax.servlet.ServletRequest: java.lang.String[] getParameterValues(java.lang.String)>(r1);	$z0 = staticinvoke <cn.hutool.core.util.ArrayUtil: boolean isEmpty(java.lang.Object[])>(r12);	if $z0 == 0 goto $i0 = lengthof r12;	$r5 = r0.<cn.hutool.extra.servlet.ServletUtil$1: javax.servlet.ServletRequest val$request>;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r6 = r0.<cn.hutool.extra.servlet.ServletUtil$1: java.lang.String val$beanName>;	$r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	r12 = interfaceinvoke $r5.<javax.servlet.ServletRequest: java.lang.String[] getParameterValues(java.lang.String)>($r10);	$z1 = staticinvoke <cn.hutool.core.util.ArrayUtil: boolean isEmpty(java.lang.Object[])>(r12);	if $z1 == 0 goto $i0 = lengthof r12;	return null
;block_num 3