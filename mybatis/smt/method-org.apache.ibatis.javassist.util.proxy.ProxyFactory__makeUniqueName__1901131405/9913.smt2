(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2167 0)
(declare-sort var3671 0)
(declare-sort var215 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3671_iterator/-912451715 (var3671) Iterator)
(declare-fun var215_makeUniqueName0/-733266458 (String Iterator) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const null-var3671 var3671)
(declare-const var2413 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2413 null-String)))
(declare-const var1180 var3671) ; Statement: r1 := @parameter1: java.util.List 
(assert (not (= var1180 null-var3671)))
(define-const var483 Iterator (var3671_iterator/-912451715 var1180)) ; Statement: $r2 = interfaceinvoke r1.<java.util.List: java.util.Iterator iterator()>() 
(define-const var521 Bool (var215_makeUniqueName0/-733266458 var2413 var483)) ; Statement: $z0 = staticinvoke <org.apache.ibatis.javassist.util.proxy.ProxyFactory: boolean makeUniqueName0(java.lang.String,java.util.Iterator)>(r0, $r2) 
 ; Statement: if $z0 == 0 goto i0 = 100 
(assert (= (ite var521 1 0) 0)) ; Cond: $z0 == 0 
(define-const var801 Int 100) ; Statement: i0 = 100 
(assert true) ; Non Conditional
 ; Statement: if i0 >= 999 goto $r3 = new java.lang.RuntimeException 
(assert (not (>= var801 999))) ; Negate: Cond: i0 >= 999  
(define-const var1118 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1118)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1118!1 String)
(assert (= var1118!1 ""))
(assert true)
(define-const var3444 String (append/672562846 var1118!1 var2413)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var1118!2 String)
(assert (= var1118!2 (str.++ var1118!1 var2413)))
(assert true)
(define-const var810 String (append/-1001720160 var3444 var801)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3444!1 String)
(assert (str.prefixof var3444 var3444!1))
(assert true)
(define-const var977 String (toString/-2075883882 var810)) ; Statement: r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var335 Iterator (var3671_iterator/-912451715 var1180)) ; Statement: $r8 = interfaceinvoke r1.<java.util.List: java.util.Iterator iterator()>() 
(define-const var243 Bool (var215_makeUniqueName0/-733266458 var977 var335)) ; Statement: $z1 = staticinvoke <org.apache.ibatis.javassist.util.proxy.ProxyFactory: boolean makeUniqueName0(java.lang.String,java.util.Iterator)>(r7, $r8) 
 ; Statement: if $z1 == 0 goto i0 = i0 + 1 
(assert (= (ite var243 1 0) 0)) ; Cond: $z1 == 0 
(define-const var801!1 Int (+ var801 1)) ; Statement: i0 = i0 + 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i0 >= 999 goto $r3 = new java.lang.RuntimeException 
(assert (not (>= var801!1 999))) ; Negate: Cond: i0 >= 999  
(define-const var1118!3 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1118!3)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1118!4 String)
(assert (= var1118!4 ""))
(assert true)
(define-const var3444!2 String (append/672562846 var1118!4 var2413)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var1118!5 String)
(assert (= var1118!5 (str.++ var1118!4 var2413)))
(assert true)
(define-const var810!1 String (append/-1001720160 var3444!2 var801!1)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3444!3 String)
(assert (str.prefixof var3444!2 var3444!3))
(assert true)
(define-const var977!1 String (toString/-2075883882 var810!1)) ; Statement: r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var335!1 Iterator (var3671_iterator/-912451715 var1180)) ; Statement: $r8 = interfaceinvoke r1.<java.util.List: java.util.Iterator iterator()>() 
(define-const var243!1 Bool (var215_makeUniqueName0/-733266458 var977!1 var335!1)) ; Statement: $z1 = staticinvoke <org.apache.ibatis.javassist.util.proxy.ProxyFactory: boolean makeUniqueName0(java.lang.String,java.util.Iterator)>(r7, $r8) 
 ; Statement: if $z1 == 0 goto i0 = i0 + 1 
(assert (= (ite var243!1 1 0) 0)) ; Cond: $z1 == 0 
(define-const var801!2 Int (+ var801!1 1)) ; Statement: i0 = i0 + 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i0 >= 999 goto $r3 = new java.lang.RuntimeException 
(assert (not (>= var801!2 999))) ; Negate: Cond: i0 >= 999  
(define-const var1118!6 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1118!6)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1118!7 String)
(assert (= var1118!7 ""))
(assert true)
(define-const var3444!4 String (append/672562846 var1118!7 var2413)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var1118!8 String)
(assert (= var1118!8 (str.++ var1118!7 var2413)))
(assert true)
(define-const var810!2 String (append/-1001720160 var3444!4 var801!2)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3444!5 String)
(assert (str.prefixof var3444!4 var3444!5))
(assert true)
(define-const var977!2 String (toString/-2075883882 var810!2)) ; Statement: r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var335!2 Iterator (var3671_iterator/-912451715 var1180)) ; Statement: $r8 = interfaceinvoke r1.<java.util.List: java.util.Iterator iterator()>() 
(define-const var243!2 Bool (var215_makeUniqueName0/-733266458 var977!2 var335!2)) ; Statement: $z1 = staticinvoke <org.apache.ibatis.javassist.util.proxy.ProxyFactory: boolean makeUniqueName0(java.lang.String,java.util.Iterator)>(r7, $r8) 
 ; Statement: if $z1 == 0 goto i0 = i0 + 1 
(assert (= (ite var243!2 1 0) 0)) ; Cond: $z1 == 0 
(define-const var801!3 Int (+ var801!2 1)) ; Statement: i0 = i0 + 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i0 >= 999 goto $r3 = new java.lang.RuntimeException 
(assert (not (>= var801!3 999))) ; Negate: Cond: i0 >= 999  
(define-const var1118!9 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1118!9)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1118!10 String)
(assert (= var1118!10 ""))
(assert true)
(define-const var3444!6 String (append/672562846 var1118!10 var2413)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var1118!11 String)
(assert (= var1118!11 (str.++ var1118!10 var2413)))
(assert true)
(define-const var810!3 String (append/-1001720160 var3444!6 var801!3)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3444!7 String)
(assert (str.prefixof var3444!6 var3444!7))
(assert true)
(define-const var977!3 String (toString/-2075883882 var810!3)) ; Statement: r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var335!3 Iterator (var3671_iterator/-912451715 var1180)) ; Statement: $r8 = interfaceinvoke r1.<java.util.List: java.util.Iterator iterator()>() 
(define-const var243!3 Bool (var215_makeUniqueName0/-733266458 var977!3 var335!3)) ; Statement: $z1 = staticinvoke <org.apache.ibatis.javassist.util.proxy.ProxyFactory: boolean makeUniqueName0(java.lang.String,java.util.Iterator)>(r7, $r8) 
 ; Statement: if $z1 == 0 goto i0 = i0 + 1 
(assert (= (ite var243!3 1 0) 0)) ; Cond: $z1 == 0 
(define-const var801!4 Int (+ var801!3 1)) ; Statement: i0 = i0 + 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i0 >= 999 goto $r3 = new java.lang.RuntimeException 
(assert (not (>= var801!4 999))) ; Negate: Cond: i0 >= 999  
(define-const var1118!12 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1118!12)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1118!13 String)
(assert (= var1118!13 ""))
(assert true)
(define-const var3444!8 String (append/672562846 var1118!13 var2413)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var1118!14 String)
(assert (= var1118!14 (str.++ var1118!13 var2413)))
(assert true)
(define-const var810!4 String (append/-1001720160 var3444!8 var801!4)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3444!9 String)
(assert (str.prefixof var3444!8 var3444!9))
(assert true)
(define-const var977!4 String (toString/-2075883882 var810!4)) ; Statement: r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var335!4 Iterator (var3671_iterator/-912451715 var1180)) ; Statement: $r8 = interfaceinvoke r1.<java.util.List: java.util.Iterator iterator()>() 
(define-const var243!4 Bool (var215_makeUniqueName0/-733266458 var977!4 var335!4)) ; Statement: $z1 = staticinvoke <org.apache.ibatis.javassist.util.proxy.ProxyFactory: boolean makeUniqueName0(java.lang.String,java.util.Iterator)>(r7, $r8) 
 ; Statement: if $z1 == 0 goto i0 = i0 + 1 
(assert (not (= (ite var243!4 1 0) 0))) ; Negate: Cond: $z1 == 0  
 ; Statement: return r7 
(check-sat)
(get-model)
(get-unsat-core)
; {var3671_iterator/-912451715=([java.util.List], java.util.Iterator), var215_makeUniqueName0/-733266458=([java.lang.String, java.util.Iterator], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2413=r0, var2167=null_type, var3671=java.util.List, var1180=r1, var483=$r2, var215=org.apache.ibatis.javassist.util.proxy.ProxyFactory, var521=$z0, var801=i0, var1118=$r4, var3444=$r5, var810=$r6, var977=r7, var335=$r8, var243=$z1}
; {r0=var2413, null_type=var2167, java.util.List=var3671, r1=var1180, $r2=var483, org.apache.ibatis.javassist.util.proxy.ProxyFactory=var215, $z0=var521, i0=var801, $r4=var1118, $r5=var3444, $r6=var810, r7=var977, $r8=var335, $z1=var243}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 5}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.util.List;	$r2 = interfaceinvoke r1.<java.util.List: java.util.Iterator iterator()>();	$z0 = staticinvoke <org.apache.ibatis.javassist.util.proxy.ProxyFactory: boolean makeUniqueName0(java.lang.String,java.util.Iterator)>(r0, $r2);	if $z0 == 0 goto i0 = 100;	i0 = 100;	if i0 >= 999 goto $r3 = new java.lang.RuntimeException;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = interfaceinvoke r1.<java.util.List: java.util.Iterator iterator()>();	$z1 = staticinvoke <org.apache.ibatis.javassist.util.proxy.ProxyFactory: boolean makeUniqueName0(java.lang.String,java.util.Iterator)>(r7, $r8);	if $z1 == 0 goto i0 = i0 + 1;	i0 = i0 + 1;	goto [?= (branch)];	if i0 >= 999 goto $r3 = new java.lang.RuntimeException;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = interfaceinvoke r1.<java.util.List: java.util.Iterator iterator()>();	$z1 = staticinvoke <org.apache.ibatis.javassist.util.proxy.ProxyFactory: boolean makeUniqueName0(java.lang.String,java.util.Iterator)>(r7, $r8);	if $z1 == 0 goto i0 = i0 + 1;	i0 = i0 + 1;	goto [?= (branch)];	if i0 >= 999 goto $r3 = new java.lang.RuntimeException;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = interfaceinvoke r1.<java.util.List: java.util.Iterator iterator()>();	$z1 = staticinvoke <org.apache.ibatis.javassist.util.proxy.ProxyFactory: boolean makeUniqueName0(java.lang.String,java.util.Iterator)>(r7, $r8);	if $z1 == 0 goto i0 = i0 + 1;	i0 = i0 + 1;	goto [?= (branch)];	if i0 >= 999 goto $r3 = new java.lang.RuntimeException;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = interfaceinvoke r1.<java.util.List: java.util.Iterator iterator()>();	$z1 = staticinvoke <org.apache.ibatis.javassist.util.proxy.ProxyFactory: boolean makeUniqueName0(java.lang.String,java.util.Iterator)>(r7, $r8);	if $z1 == 0 goto i0 = i0 + 1;	i0 = i0 + 1;	goto [?= (branch)];	if i0 >= 999 goto $r3 = new java.lang.RuntimeException;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = interfaceinvoke r1.<java.util.List: java.util.Iterator iterator()>();	$z1 = staticinvoke <org.apache.ibatis.javassist.util.proxy.ProxyFactory: boolean makeUniqueName0(java.lang.String,java.util.Iterator)>(r7, $r8);	if $z1 == 0 goto i0 = i0 + 1;	return r7
;block_num 17