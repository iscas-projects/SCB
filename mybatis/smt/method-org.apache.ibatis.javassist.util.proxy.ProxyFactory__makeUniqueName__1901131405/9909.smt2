(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1671 0)
(declare-sort var2559 0)
(declare-sort var1606 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2559_iterator/-912451715 (var2559) Iterator)
(declare-fun var1606_makeUniqueName0/-733266458 (String Iterator) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const null-var2559 var2559)
(declare-const var2438 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2438 null-String)))
(declare-const var1897 var2559) ; Statement: r1 := @parameter1: java.util.List 
(assert (not (= var1897 null-var2559)))
(define-const var652 Iterator (var2559_iterator/-912451715 var1897)) ; Statement: $r2 = interfaceinvoke r1.<java.util.List: java.util.Iterator iterator()>() 
(define-const var2916 Bool (var1606_makeUniqueName0/-733266458 var2438 var652)) ; Statement: $z0 = staticinvoke <org.apache.ibatis.javassist.util.proxy.ProxyFactory: boolean makeUniqueName0(java.lang.String,java.util.Iterator)>(r0, $r2) 
 ; Statement: if $z0 == 0 goto i0 = 100 
(assert (= (ite var2916 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2023 Int 100) ; Statement: i0 = 100 
(assert true) ; Non Conditional
 ; Statement: if i0 >= 999 goto $r3 = new java.lang.RuntimeException 
(assert (not (>= var2023 999))) ; Negate: Cond: i0 >= 999  
(define-const var2347 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2347)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2347!1 String)
(assert (= var2347!1 ""))
(assert true)
(define-const var879 String (append/672562846 var2347!1 var2438)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var2347!2 String)
(assert (= var2347!2 (str.++ var2347!1 var2438)))
(assert true)
(define-const var407 String (append/-1001720160 var879 var2023)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var879!1 String)
(assert (str.prefixof var879 var879!1))
(assert true)
(define-const var2368 String (toString/-2075883882 var407)) ; Statement: r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var965 Iterator (var2559_iterator/-912451715 var1897)) ; Statement: $r8 = interfaceinvoke r1.<java.util.List: java.util.Iterator iterator()>() 
(define-const var1007 Bool (var1606_makeUniqueName0/-733266458 var2368 var965)) ; Statement: $z1 = staticinvoke <org.apache.ibatis.javassist.util.proxy.ProxyFactory: boolean makeUniqueName0(java.lang.String,java.util.Iterator)>(r7, $r8) 
 ; Statement: if $z1 == 0 goto i0 = i0 + 1 
(assert (= (ite var1007 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2023!1 Int (+ var2023 1)) ; Statement: i0 = i0 + 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i0 >= 999 goto $r3 = new java.lang.RuntimeException 
(assert (not (>= var2023!1 999))) ; Negate: Cond: i0 >= 999  
(define-const var2347!3 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2347!3)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2347!4 String)
(assert (= var2347!4 ""))
(assert true)
(define-const var879!2 String (append/672562846 var2347!4 var2438)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var2347!5 String)
(assert (= var2347!5 (str.++ var2347!4 var2438)))
(assert true)
(define-const var407!1 String (append/-1001720160 var879!2 var2023!1)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var879!3 String)
(assert (str.prefixof var879!2 var879!3))
(assert true)
(define-const var2368!1 String (toString/-2075883882 var407!1)) ; Statement: r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var965!1 Iterator (var2559_iterator/-912451715 var1897)) ; Statement: $r8 = interfaceinvoke r1.<java.util.List: java.util.Iterator iterator()>() 
(define-const var1007!1 Bool (var1606_makeUniqueName0/-733266458 var2368!1 var965!1)) ; Statement: $z1 = staticinvoke <org.apache.ibatis.javassist.util.proxy.ProxyFactory: boolean makeUniqueName0(java.lang.String,java.util.Iterator)>(r7, $r8) 
 ; Statement: if $z1 == 0 goto i0 = i0 + 1 
(assert (= (ite var1007!1 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2023!2 Int (+ var2023!1 1)) ; Statement: i0 = i0 + 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i0 >= 999 goto $r3 = new java.lang.RuntimeException 
(assert (not (>= var2023!2 999))) ; Negate: Cond: i0 >= 999  
(define-const var2347!6 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2347!6)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2347!7 String)
(assert (= var2347!7 ""))
(assert true)
(define-const var879!4 String (append/672562846 var2347!7 var2438)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var2347!8 String)
(assert (= var2347!8 (str.++ var2347!7 var2438)))
(assert true)
(define-const var407!2 String (append/-1001720160 var879!4 var2023!2)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var879!5 String)
(assert (str.prefixof var879!4 var879!5))
(assert true)
(define-const var2368!2 String (toString/-2075883882 var407!2)) ; Statement: r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var965!2 Iterator (var2559_iterator/-912451715 var1897)) ; Statement: $r8 = interfaceinvoke r1.<java.util.List: java.util.Iterator iterator()>() 
(define-const var1007!2 Bool (var1606_makeUniqueName0/-733266458 var2368!2 var965!2)) ; Statement: $z1 = staticinvoke <org.apache.ibatis.javassist.util.proxy.ProxyFactory: boolean makeUniqueName0(java.lang.String,java.util.Iterator)>(r7, $r8) 
 ; Statement: if $z1 == 0 goto i0 = i0 + 1 
(assert (not (= (ite var1007!2 1 0) 0))) ; Negate: Cond: $z1 == 0  
 ; Statement: return r7 
(check-sat)
(get-model)
(get-unsat-core)
; {var2559_iterator/-912451715=([java.util.List], java.util.Iterator), var1606_makeUniqueName0/-733266458=([java.lang.String, java.util.Iterator], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2438=r0, var1671=null_type, var2559=java.util.List, var1897=r1, var652=$r2, var1606=org.apache.ibatis.javassist.util.proxy.ProxyFactory, var2916=$z0, var2023=i0, var2347=$r4, var879=$r5, var407=$r6, var2368=r7, var965=$r8, var1007=$z1}
; {r0=var2438, null_type=var1671, java.util.List=var2559, r1=var1897, $r2=var652, org.apache.ibatis.javassist.util.proxy.ProxyFactory=var1606, $z0=var2916, i0=var2023, $r4=var2347, $r5=var879, $r6=var407, r7=var2368, $r8=var965, $z1=var1007}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 3}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.util.List;	$r2 = interfaceinvoke r1.<java.util.List: java.util.Iterator iterator()>();	$z0 = staticinvoke <org.apache.ibatis.javassist.util.proxy.ProxyFactory: boolean makeUniqueName0(java.lang.String,java.util.Iterator)>(r0, $r2);	if $z0 == 0 goto i0 = 100;	i0 = 100;	if i0 >= 999 goto $r3 = new java.lang.RuntimeException;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = interfaceinvoke r1.<java.util.List: java.util.Iterator iterator()>();	$z1 = staticinvoke <org.apache.ibatis.javassist.util.proxy.ProxyFactory: boolean makeUniqueName0(java.lang.String,java.util.Iterator)>(r7, $r8);	if $z1 == 0 goto i0 = i0 + 1;	i0 = i0 + 1;	goto [?= (branch)];	if i0 >= 999 goto $r3 = new java.lang.RuntimeException;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = interfaceinvoke r1.<java.util.List: java.util.Iterator iterator()>();	$z1 = staticinvoke <org.apache.ibatis.javassist.util.proxy.ProxyFactory: boolean makeUniqueName0(java.lang.String,java.util.Iterator)>(r7, $r8);	if $z1 == 0 goto i0 = i0 + 1;	i0 = i0 + 1;	goto [?= (branch)];	if i0 >= 999 goto $r3 = new java.lang.RuntimeException;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = interfaceinvoke r1.<java.util.List: java.util.Iterator iterator()>();	$z1 = staticinvoke <org.apache.ibatis.javassist.util.proxy.ProxyFactory: boolean makeUniqueName0(java.lang.String,java.util.Iterator)>(r7, $r8);	if $z1 == 0 goto i0 = i0 + 1;	return r7
;block_num 11