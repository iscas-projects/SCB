(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1235 0)
(declare-sort var1808 0)
(declare-sort var1314 0)
(declare-sort var78 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1808_iterator/-912451715 (var1808) Iterator)
(declare-fun var1314_makeUniqueName0/-733266458 (String Iterator) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var78-init () var78)
(declare-fun <init>/-1084991535 (var78 String) void)
(declare-const null-String String)
(declare-const null-var1808 var1808)
(declare-const var549 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var549 null-String)))
(declare-const var3196 var1808) ; Statement: r1 := @parameter1: java.util.List 
(assert (not (= var3196 null-var1808)))
(define-const var3078 Iterator (var1808_iterator/-912451715 var3196)) ; Statement: $r2 = interfaceinvoke r1.<java.util.List: java.util.Iterator iterator()>() 
(define-const var3835 Bool (var1314_makeUniqueName0/-733266458 var549 var3078)) ; Statement: $z0 = staticinvoke <org.apache.ibatis.javassist.util.proxy.ProxyFactory: boolean makeUniqueName0(java.lang.String,java.util.Iterator)>(r0, $r2) 
 ; Statement: if $z0 == 0 goto i0 = 100 
(assert (= (ite var3835 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3909 Int 100) ; Statement: i0 = 100 
(assert true) ; Non Conditional
 ; Statement: if i0 >= 999 goto $r3 = new java.lang.RuntimeException 
(assert (not (>= var3909 999))) ; Negate: Cond: i0 >= 999  
(define-const var2147 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2147)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2147!1 String)
(assert (= var2147!1 ""))
(assert true)
(define-const var2925 String (append/672562846 var2147!1 var549)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var2147!2 String)
(assert (= var2147!2 (str.++ var2147!1 var549)))
(assert true)
(define-const var2628 String (append/-1001720160 var2925 var3909)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var2925!1 String)
(assert (str.prefixof var2925 var2925!1))
(assert true)
(define-const var3269 String (toString/-2075883882 var2628)) ; Statement: r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var306 Iterator (var1808_iterator/-912451715 var3196)) ; Statement: $r8 = interfaceinvoke r1.<java.util.List: java.util.Iterator iterator()>() 
(define-const var3068 Bool (var1314_makeUniqueName0/-733266458 var3269 var306)) ; Statement: $z1 = staticinvoke <org.apache.ibatis.javassist.util.proxy.ProxyFactory: boolean makeUniqueName0(java.lang.String,java.util.Iterator)>(r7, $r8) 
 ; Statement: if $z1 == 0 goto i0 = i0 + 1 
(assert (= (ite var3068 1 0) 0)) ; Cond: $z1 == 0 
(define-const var3909!1 Int (+ var3909 1)) ; Statement: i0 = i0 + 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i0 >= 999 goto $r3 = new java.lang.RuntimeException 
(assert (not (>= var3909!1 999))) ; Negate: Cond: i0 >= 999  
(define-const var2147!3 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2147!3)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2147!4 String)
(assert (= var2147!4 ""))
(assert true)
(define-const var2925!2 String (append/672562846 var2147!4 var549)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var2147!5 String)
(assert (= var2147!5 (str.++ var2147!4 var549)))
(assert true)
(define-const var2628!1 String (append/-1001720160 var2925!2 var3909!1)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var2925!3 String)
(assert (str.prefixof var2925!2 var2925!3))
(assert true)
(define-const var3269!1 String (toString/-2075883882 var2628!1)) ; Statement: r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var306!1 Iterator (var1808_iterator/-912451715 var3196)) ; Statement: $r8 = interfaceinvoke r1.<java.util.List: java.util.Iterator iterator()>() 
(define-const var3068!1 Bool (var1314_makeUniqueName0/-733266458 var3269!1 var306!1)) ; Statement: $z1 = staticinvoke <org.apache.ibatis.javassist.util.proxy.ProxyFactory: boolean makeUniqueName0(java.lang.String,java.util.Iterator)>(r7, $r8) 
 ; Statement: if $z1 == 0 goto i0 = i0 + 1 
(assert (= (ite var3068!1 1 0) 0)) ; Cond: $z1 == 0 
(define-const var3909!2 Int (+ var3909!1 1)) ; Statement: i0 = i0 + 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i0 >= 999 goto $r3 = new java.lang.RuntimeException 
(assert (>= var3909!2 999)) ; Cond: i0 >= 999 
(define-const var3829 var78 var78-init) ; Statement: $r3 = new java.lang.RuntimeException 
(assert true)
;(assert (<init>/-1084991535 var3829 "cannot make a unique method name")) ; Statement: specialinvoke $r3.<java.lang.RuntimeException: void <init>(java.lang.String)>("cannot make a unique method name") 

(declare-const var3829!1 var78)
(declare-const var2206 String)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var1808_iterator/-912451715=([java.util.List], java.util.Iterator), var1314_makeUniqueName0/-733266458=([java.lang.String, java.util.Iterator], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var78-init=([], java.lang.RuntimeException), <init>/-1084991535=([java.lang.RuntimeException, java.lang.String], void)}
; {var549=r0, var1235=null_type, var1808=java.util.List, var3196=r1, var3078=$r2, var1314=org.apache.ibatis.javassist.util.proxy.ProxyFactory, var3835=$z0, var3909=i0, var2147=$r4, var2925=$r5, var2628=$r6, var3269=r7, var306=$r8, var3068=$z1, var78=java.lang.RuntimeException, var3829=$r3, var2206="cannot make a unique method name"}
; {r0=var549, null_type=var1235, java.util.List=var1808, r1=var3196, $r2=var3078, org.apache.ibatis.javassist.util.proxy.ProxyFactory=var1314, $z0=var3835, i0=var3909, $r4=var2147, $r5=var2925, $r6=var2628, r7=var3269, $r8=var306, $z1=var3068, java.lang.RuntimeException=var78, $r3=var3829, "cannot make a unique method name"=var2206}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.util.List;	$r2 = interfaceinvoke r1.<java.util.List: java.util.Iterator iterator()>();	$z0 = staticinvoke <org.apache.ibatis.javassist.util.proxy.ProxyFactory: boolean makeUniqueName0(java.lang.String,java.util.Iterator)>(r0, $r2);	if $z0 == 0 goto i0 = 100;	i0 = 100;	if i0 >= 999 goto $r3 = new java.lang.RuntimeException;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = interfaceinvoke r1.<java.util.List: java.util.Iterator iterator()>();	$z1 = staticinvoke <org.apache.ibatis.javassist.util.proxy.ProxyFactory: boolean makeUniqueName0(java.lang.String,java.util.Iterator)>(r7, $r8);	if $z1 == 0 goto i0 = i0 + 1;	i0 = i0 + 1;	goto [?= (branch)];	if i0 >= 999 goto $r3 = new java.lang.RuntimeException;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = interfaceinvoke r1.<java.util.List: java.util.Iterator iterator()>();	$z1 = staticinvoke <org.apache.ibatis.javassist.util.proxy.ProxyFactory: boolean makeUniqueName0(java.lang.String,java.util.Iterator)>(r7, $r8);	if $z1 == 0 goto i0 = i0 + 1;	i0 = i0 + 1;	goto [?= (branch)];	if i0 >= 999 goto $r3 = new java.lang.RuntimeException;	$r3 = new java.lang.RuntimeException;	specialinvoke $r3.<java.lang.RuntimeException: void <init>(java.lang.String)>("cannot make a unique method name");	throw $r3
;block_num 10