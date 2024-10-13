(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3724 0)
(declare-sort var2134 0)
(declare-sort var3862 0)
(declare-sort var493 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2134_iterator/-912451715 (var2134) Iterator)
(declare-fun var3862_makeUniqueName0/-733266458 (String Iterator) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var493-init () var493)
(declare-fun <init>/-1084991535 (var493 String) void)
(declare-const null-String String)
(declare-const null-var2134 var2134)
(declare-const var5 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var5 null-String)))
(declare-const var2046 var2134) ; Statement: r1 := @parameter1: java.util.List 
(assert (not (= var2046 null-var2134)))
(define-const var3032 Iterator (var2134_iterator/-912451715 var2046)) ; Statement: $r2 = interfaceinvoke r1.<java.util.List: java.util.Iterator iterator()>() 
(define-const var1860 Bool (var3862_makeUniqueName0/-733266458 var5 var3032)) ; Statement: $z0 = staticinvoke <org.apache.ibatis.javassist.util.proxy.ProxyFactory: boolean makeUniqueName0(java.lang.String,java.util.Iterator)>(r0, $r2) 
 ; Statement: if $z0 == 0 goto i0 = 100 
(assert (= (ite var1860 1 0) 0)) ; Cond: $z0 == 0 
(define-const var4 Int 100) ; Statement: i0 = 100 
(assert true) ; Non Conditional
 ; Statement: if i0 >= 999 goto $r3 = new java.lang.RuntimeException 
(assert (not (>= var4 999))) ; Negate: Cond: i0 >= 999  
(define-const var2408 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2408)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2408!1 String)
(assert (= var2408!1 ""))
(assert true)
(define-const var2261 String (append/672562846 var2408!1 var5)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var2408!2 String)
(assert (= var2408!2 (str.++ var2408!1 var5)))
(assert true)
(define-const var1242 String (append/-1001720160 var2261 var4)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var2261!1 String)
(assert (str.prefixof var2261 var2261!1))
(assert true)
(define-const var3912 String (toString/-2075883882 var1242)) ; Statement: r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1380 Iterator (var2134_iterator/-912451715 var2046)) ; Statement: $r8 = interfaceinvoke r1.<java.util.List: java.util.Iterator iterator()>() 
(define-const var139 Bool (var3862_makeUniqueName0/-733266458 var3912 var1380)) ; Statement: $z1 = staticinvoke <org.apache.ibatis.javassist.util.proxy.ProxyFactory: boolean makeUniqueName0(java.lang.String,java.util.Iterator)>(r7, $r8) 
 ; Statement: if $z1 == 0 goto i0 = i0 + 1 
(assert (= (ite var139 1 0) 0)) ; Cond: $z1 == 0 
(define-const var4!1 Int (+ var4 1)) ; Statement: i0 = i0 + 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i0 >= 999 goto $r3 = new java.lang.RuntimeException 
(assert (>= var4!1 999)) ; Cond: i0 >= 999 
(define-const var3732 var493 var493-init) ; Statement: $r3 = new java.lang.RuntimeException 
(assert true)
;(assert (<init>/-1084991535 var3732 "cannot make a unique method name")) ; Statement: specialinvoke $r3.<java.lang.RuntimeException: void <init>(java.lang.String)>("cannot make a unique method name") 

(declare-const var3732!1 var493)
(declare-const var242 String)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var2134_iterator/-912451715=([java.util.List], java.util.Iterator), var3862_makeUniqueName0/-733266458=([java.lang.String, java.util.Iterator], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var493-init=([], java.lang.RuntimeException), <init>/-1084991535=([java.lang.RuntimeException, java.lang.String], void)}
; {var5=r0, var3724=null_type, var2134=java.util.List, var2046=r1, var3032=$r2, var3862=org.apache.ibatis.javassist.util.proxy.ProxyFactory, var1860=$z0, var4=i0, var2408=$r4, var2261=$r5, var1242=$r6, var3912=r7, var1380=$r8, var139=$z1, var493=java.lang.RuntimeException, var3732=$r3, var242="cannot make a unique method name"}
; {r0=var5, null_type=var3724, java.util.List=var2134, r1=var2046, $r2=var3032, org.apache.ibatis.javassist.util.proxy.ProxyFactory=var3862, $z0=var1860, i0=var4, $r4=var2408, $r5=var2261, $r6=var1242, r7=var3912, $r8=var1380, $z1=var139, java.lang.RuntimeException=var493, $r3=var3732, "cannot make a unique method name"=var242}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.util.List;	$r2 = interfaceinvoke r1.<java.util.List: java.util.Iterator iterator()>();	$z0 = staticinvoke <org.apache.ibatis.javassist.util.proxy.ProxyFactory: boolean makeUniqueName0(java.lang.String,java.util.Iterator)>(r0, $r2);	if $z0 == 0 goto i0 = 100;	i0 = 100;	if i0 >= 999 goto $r3 = new java.lang.RuntimeException;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = interfaceinvoke r1.<java.util.List: java.util.Iterator iterator()>();	$z1 = staticinvoke <org.apache.ibatis.javassist.util.proxy.ProxyFactory: boolean makeUniqueName0(java.lang.String,java.util.Iterator)>(r7, $r8);	if $z1 == 0 goto i0 = i0 + 1;	i0 = i0 + 1;	goto [?= (branch)];	if i0 >= 999 goto $r3 = new java.lang.RuntimeException;	$r3 = new java.lang.RuntimeException;	specialinvoke $r3.<java.lang.RuntimeException: void <init>(java.lang.String)>("cannot make a unique method name");	throw $r3
;block_num 7