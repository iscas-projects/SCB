(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3894 0)
(declare-sort var2715 0)
(declare-sort var1777 0)
(declare-sort var157 0)
(declare-sort var917 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun val$request/1565802319 (var3894) var1777)
(declare-fun var1777_getParameterValues/142980261 (var1777 String) (Array Int String))
(declare-fun var157_isEmpty/916532361 ((Array Int var917)) Bool)
(declare-fun cast-from-__Array__Int__String__-to-__Array__Int__var917__ ((Array Int String)) (Array Int var917))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun val$beanName/1565802319 (var3894) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3894 var3894)
(declare-const null-String String)
(declare-const null-ClassObject ClassObject)
(declare-const var540 var3894) ; Statement: r0 := @this: cn.hutool.extra.servlet.JakartaServletUtil$1 
(assert (not (= var540 null-var3894)))
(declare-const var2015 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2015 null-String)))
(declare-const var3494 ClassObject) ; Statement: r11 := @parameter1: java.lang.reflect.Type 
(assert (not (= var3494 null-ClassObject)))
(define-const var2743 var1777 (val$request/1565802319 var540)) ; Statement: $r2 = r0.<cn.hutool.extra.servlet.JakartaServletUtil$1: jakarta.servlet.ServletRequest val$request> 
(define-const var933 (Array Int String) (var1777_getParameterValues/142980261 var2743 var2015)) ; Statement: r12 = interfaceinvoke $r2.<jakarta.servlet.ServletRequest: java.lang.String[] getParameterValues(java.lang.String)>(r1) 
(define-const var2650 Bool (var157_isEmpty/916532361 (cast-from-__Array__Int__String__-to-__Array__Int__var917__ var933))) ; Statement: $z0 = staticinvoke <cn.hutool.core.util.ArrayUtil: boolean isEmpty(java.lang.Object[])>(r12) 
 ; Statement: if $z0 == 0 goto $i0 = lengthof r12 
(assert (not (= (ite var2650 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1476 var1777 (val$request/1565802319 var540)) ; Statement: $r5 = r0.<cn.hutool.extra.servlet.JakartaServletUtil$1: jakarta.servlet.ServletRequest val$request> 
(define-const var3093 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3093)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3093!1 String)
(assert (= var3093!1 ""))
(define-const var3520 String (val$beanName/1565802319 var540)) ; Statement: $r6 = r0.<cn.hutool.extra.servlet.JakartaServletUtil$1: java.lang.String val$beanName> 
(assert true)
(define-const var3651 String (append/672562846 var3093!1 var3520)) ; Statement: $r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var3093!2 String)
(assert (= var3093!2 (str.++ var3093!1 var3520)))
(assert true)
(define-const var2541 String (append/672562846 var3651 ".")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".") 
(declare-const var3651!1 String)
(assert (= var3651!1 (str.++ var3651 ".")))
(assert true)
(define-const var1808 String (append/672562846 var2541 var2015)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2541!1 String)
(assert (= var2541!1 (str.++ var2541 var2015)))
(assert true)
(define-const var2245 String (toString/-2075883882 var1808)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var933!1 (Array Int String) (var1777_getParameterValues/142980261 var1476 var2245)) ; Statement: r12 = interfaceinvoke $r5.<jakarta.servlet.ServletRequest: java.lang.String[] getParameterValues(java.lang.String)>($r10) 
(define-const var1051 Bool (var157_isEmpty/916532361 (cast-from-__Array__Int__String__-to-__Array__Int__var917__ var933!1))) ; Statement: $z1 = staticinvoke <cn.hutool.core.util.ArrayUtil: boolean isEmpty(java.lang.Object[])>(r12) 
 ; Statement: if $z1 == 0 goto $i0 = lengthof r12 
(assert (not (= (ite var1051 1 0) 0))) ; Negate: Cond: $z1 == 0  
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {val$request/1565802319=([cn.hutool.extra.servlet.JakartaServletUtil$1], jakarta.servlet.ServletRequest), var1777_getParameterValues/142980261=([jakarta.servlet.ServletRequest, java.lang.String], java.lang.String[]), var157_isEmpty/916532361=([java.lang.Object[]], boolean), cast-from-__Array__Int__String__-to-__Array__Int__var917__=([java.lang.String[]], java.lang.Object[]), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), val$beanName/1565802319=([cn.hutool.extra.servlet.JakartaServletUtil$1], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3894=cn.hutool.extra.servlet.JakartaServletUtil$1, var540=r0, var2015=r1, var2715=null_type, var3494=r11, var1777=jakarta.servlet.ServletRequest, var2743=$r2, var933=r12, var157=cn.hutool.core.util.ArrayUtil, var917=java.lang.Object, var2650=$z0, var1476=$r5, var3093=$r4, var3520=$r6, var3651=$r7, var2541=$r8, var1808=$r9, var2245=$r10, var1051=$z1}
; {cn.hutool.extra.servlet.JakartaServletUtil$1=var3894, r0=var540, r1=var2015, null_type=var2715, r11=var3494, jakarta.servlet.ServletRequest=var1777, $r2=var2743, r12=var933, cn.hutool.core.util.ArrayUtil=var157, java.lang.Object=var917, $z0=var2650, $r5=var1476, $r4=var3093, $r6=var3520, $r7=var3651, $r8=var2541, $r9=var1808, $r10=var2245, $z1=var1051}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: cn.hutool.extra.servlet.JakartaServletUtil$1;	r1 := @parameter0: java.lang.String;	r11 := @parameter1: java.lang.reflect.Type;	$r2 = r0.<cn.hutool.extra.servlet.JakartaServletUtil$1: jakarta.servlet.ServletRequest val$request>;	r12 = interfaceinvoke $r2.<jakarta.servlet.ServletRequest: java.lang.String[] getParameterValues(java.lang.String)>(r1);	$z0 = staticinvoke <cn.hutool.core.util.ArrayUtil: boolean isEmpty(java.lang.Object[])>(r12);	if $z0 == 0 goto $i0 = lengthof r12;	$r5 = r0.<cn.hutool.extra.servlet.JakartaServletUtil$1: jakarta.servlet.ServletRequest val$request>;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r6 = r0.<cn.hutool.extra.servlet.JakartaServletUtil$1: java.lang.String val$beanName>;	$r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	r12 = interfaceinvoke $r5.<jakarta.servlet.ServletRequest: java.lang.String[] getParameterValues(java.lang.String)>($r10);	$z1 = staticinvoke <cn.hutool.core.util.ArrayUtil: boolean isEmpty(java.lang.Object[])>(r12);	if $z1 == 0 goto $i0 = lengthof r12;	return null
;block_num 3