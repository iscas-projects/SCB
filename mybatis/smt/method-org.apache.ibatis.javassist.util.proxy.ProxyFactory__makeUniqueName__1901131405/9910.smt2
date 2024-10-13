(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1179 0)
(declare-sort var2766 0)
(declare-sort var2912 0)
(declare-sort var2845 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2766_iterator/-912451715 (var2766) Iterator)
(declare-fun var2912_makeUniqueName0/-733266458 (String Iterator) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2845-init () var2845)
(declare-fun <init>/-1084991535 (var2845 String) void)
(declare-const null-String String)
(declare-const null-var2766 var2766)
(declare-const var904 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var904 null-String)))
(declare-const var1679 var2766) ; Statement: r1 := @parameter1: java.util.List 
(assert (not (= var1679 null-var2766)))
(define-const var780 Iterator (var2766_iterator/-912451715 var1679)) ; Statement: $r2 = interfaceinvoke r1.<java.util.List: java.util.Iterator iterator()>() 
(define-const var2377 Bool (var2912_makeUniqueName0/-733266458 var904 var780)) ; Statement: $z0 = staticinvoke <org.apache.ibatis.javassist.util.proxy.ProxyFactory: boolean makeUniqueName0(java.lang.String,java.util.Iterator)>(r0, $r2) 
 ; Statement: if $z0 == 0 goto i0 = 100 
(assert (= (ite var2377 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2313 Int 100) ; Statement: i0 = 100 
(assert true) ; Non Conditional
 ; Statement: if i0 >= 999 goto $r3 = new java.lang.RuntimeException 
(assert (not (>= var2313 999))) ; Negate: Cond: i0 >= 999  
(define-const var2754 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2754)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2754!1 String)
(assert (= var2754!1 ""))
(assert true)
(define-const var285 String (append/672562846 var2754!1 var904)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var2754!2 String)
(assert (= var2754!2 (str.++ var2754!1 var904)))
(assert true)
(define-const var3176 String (append/-1001720160 var285 var2313)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var285!1 String)
(assert (str.prefixof var285 var285!1))
(assert true)
(define-const var1378 String (toString/-2075883882 var3176)) ; Statement: r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1371 Iterator (var2766_iterator/-912451715 var1679)) ; Statement: $r8 = interfaceinvoke r1.<java.util.List: java.util.Iterator iterator()>() 
(define-const var972 Bool (var2912_makeUniqueName0/-733266458 var1378 var1371)) ; Statement: $z1 = staticinvoke <org.apache.ibatis.javassist.util.proxy.ProxyFactory: boolean makeUniqueName0(java.lang.String,java.util.Iterator)>(r7, $r8) 
 ; Statement: if $z1 == 0 goto i0 = i0 + 1 
(assert (= (ite var972 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2313!1 Int (+ var2313 1)) ; Statement: i0 = i0 + 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i0 >= 999 goto $r3 = new java.lang.RuntimeException 
(assert (not (>= var2313!1 999))) ; Negate: Cond: i0 >= 999  
(define-const var2754!3 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2754!3)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2754!4 String)
(assert (= var2754!4 ""))
(assert true)
(define-const var285!2 String (append/672562846 var2754!4 var904)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var2754!5 String)
(assert (= var2754!5 (str.++ var2754!4 var904)))
(assert true)
(define-const var3176!1 String (append/-1001720160 var285!2 var2313!1)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var285!3 String)
(assert (str.prefixof var285!2 var285!3))
(assert true)
(define-const var1378!1 String (toString/-2075883882 var3176!1)) ; Statement: r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1371!1 Iterator (var2766_iterator/-912451715 var1679)) ; Statement: $r8 = interfaceinvoke r1.<java.util.List: java.util.Iterator iterator()>() 
(define-const var972!1 Bool (var2912_makeUniqueName0/-733266458 var1378!1 var1371!1)) ; Statement: $z1 = staticinvoke <org.apache.ibatis.javassist.util.proxy.ProxyFactory: boolean makeUniqueName0(java.lang.String,java.util.Iterator)>(r7, $r8) 
 ; Statement: if $z1 == 0 goto i0 = i0 + 1 
(assert (= (ite var972!1 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2313!2 Int (+ var2313!1 1)) ; Statement: i0 = i0 + 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i0 >= 999 goto $r3 = new java.lang.RuntimeException 
(assert (not (>= var2313!2 999))) ; Negate: Cond: i0 >= 999  
(define-const var2754!6 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2754!6)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2754!7 String)
(assert (= var2754!7 ""))
(assert true)
(define-const var285!4 String (append/672562846 var2754!7 var904)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var2754!8 String)
(assert (= var2754!8 (str.++ var2754!7 var904)))
(assert true)
(define-const var3176!2 String (append/-1001720160 var285!4 var2313!2)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var285!5 String)
(assert (str.prefixof var285!4 var285!5))
(assert true)
(define-const var1378!2 String (toString/-2075883882 var3176!2)) ; Statement: r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1371!2 Iterator (var2766_iterator/-912451715 var1679)) ; Statement: $r8 = interfaceinvoke r1.<java.util.List: java.util.Iterator iterator()>() 
(define-const var972!2 Bool (var2912_makeUniqueName0/-733266458 var1378!2 var1371!2)) ; Statement: $z1 = staticinvoke <org.apache.ibatis.javassist.util.proxy.ProxyFactory: boolean makeUniqueName0(java.lang.String,java.util.Iterator)>(r7, $r8) 
 ; Statement: if $z1 == 0 goto i0 = i0 + 1 
(assert (= (ite var972!2 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2313!3 Int (+ var2313!2 1)) ; Statement: i0 = i0 + 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i0 >= 999 goto $r3 = new java.lang.RuntimeException 
(assert (>= var2313!3 999)) ; Cond: i0 >= 999 
(define-const var3285 var2845 var2845-init) ; Statement: $r3 = new java.lang.RuntimeException 
(assert true)
;(assert (<init>/-1084991535 var3285 "cannot make a unique method name")) ; Statement: specialinvoke $r3.<java.lang.RuntimeException: void <init>(java.lang.String)>("cannot make a unique method name") 

(declare-const var3285!1 var2845)
(declare-const var3178 String)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var2766_iterator/-912451715=([java.util.List], java.util.Iterator), var2912_makeUniqueName0/-733266458=([java.lang.String, java.util.Iterator], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2845-init=([], java.lang.RuntimeException), <init>/-1084991535=([java.lang.RuntimeException, java.lang.String], void)}
; {var904=r0, var1179=null_type, var2766=java.util.List, var1679=r1, var780=$r2, var2912=org.apache.ibatis.javassist.util.proxy.ProxyFactory, var2377=$z0, var2313=i0, var2754=$r4, var285=$r5, var3176=$r6, var1378=r7, var1371=$r8, var972=$z1, var2845=java.lang.RuntimeException, var3285=$r3, var3178="cannot make a unique method name"}
; {r0=var904, null_type=var1179, java.util.List=var2766, r1=var1679, $r2=var780, org.apache.ibatis.javassist.util.proxy.ProxyFactory=var2912, $z0=var2377, i0=var2313, $r4=var2754, $r5=var285, $r6=var3176, r7=var1378, $r8=var1371, $z1=var972, java.lang.RuntimeException=var2845, $r3=var3285, "cannot make a unique method name"=var3178}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 3}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.util.List;	$r2 = interfaceinvoke r1.<java.util.List: java.util.Iterator iterator()>();	$z0 = staticinvoke <org.apache.ibatis.javassist.util.proxy.ProxyFactory: boolean makeUniqueName0(java.lang.String,java.util.Iterator)>(r0, $r2);	if $z0 == 0 goto i0 = 100;	i0 = 100;	if i0 >= 999 goto $r3 = new java.lang.RuntimeException;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = interfaceinvoke r1.<java.util.List: java.util.Iterator iterator()>();	$z1 = staticinvoke <org.apache.ibatis.javassist.util.proxy.ProxyFactory: boolean makeUniqueName0(java.lang.String,java.util.Iterator)>(r7, $r8);	if $z1 == 0 goto i0 = i0 + 1;	i0 = i0 + 1;	goto [?= (branch)];	if i0 >= 999 goto $r3 = new java.lang.RuntimeException;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = interfaceinvoke r1.<java.util.List: java.util.Iterator iterator()>();	$z1 = staticinvoke <org.apache.ibatis.javassist.util.proxy.ProxyFactory: boolean makeUniqueName0(java.lang.String,java.util.Iterator)>(r7, $r8);	if $z1 == 0 goto i0 = i0 + 1;	i0 = i0 + 1;	goto [?= (branch)];	if i0 >= 999 goto $r3 = new java.lang.RuntimeException;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = interfaceinvoke r1.<java.util.List: java.util.Iterator iterator()>();	$z1 = staticinvoke <org.apache.ibatis.javassist.util.proxy.ProxyFactory: boolean makeUniqueName0(java.lang.String,java.util.Iterator)>(r7, $r8);	if $z1 == 0 goto i0 = i0 + 1;	i0 = i0 + 1;	goto [?= (branch)];	if i0 >= 999 goto $r3 = new java.lang.RuntimeException;	$r3 = new java.lang.RuntimeException;	specialinvoke $r3.<java.lang.RuntimeException: void <init>(java.lang.String)>("cannot make a unique method name");	throw $r3
;block_num 13