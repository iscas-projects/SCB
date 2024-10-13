(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1028 0)
(declare-sort var3953 0)
(declare-sort var601 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3953_iterator/-912451715 (var3953) Iterator)
(declare-fun var601_makeUniqueName0/-733266458 (String Iterator) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const null-var3953 var3953)
(declare-const var3381 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3381 null-String)))
(declare-const var2678 var3953) ; Statement: r1 := @parameter1: java.util.List 
(assert (not (= var2678 null-var3953)))
(define-const var1769 Iterator (var3953_iterator/-912451715 var2678)) ; Statement: $r2 = interfaceinvoke r1.<java.util.List: java.util.Iterator iterator()>() 
(define-const var2692 Bool (var601_makeUniqueName0/-733266458 var3381 var1769)) ; Statement: $z0 = staticinvoke <org.apache.ibatis.javassist.util.proxy.ProxyFactory: boolean makeUniqueName0(java.lang.String,java.util.Iterator)>(r0, $r2) 
 ; Statement: if $z0 == 0 goto i0 = 100 
(assert (= (ite var2692 1 0) 0)) ; Cond: $z0 == 0 
(define-const var240 Int 100) ; Statement: i0 = 100 
(assert true) ; Non Conditional
 ; Statement: if i0 >= 999 goto $r3 = new java.lang.RuntimeException 
(assert (not (>= var240 999))) ; Negate: Cond: i0 >= 999  
(define-const var2287 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2287)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2287!1 String)
(assert (= var2287!1 ""))
(assert true)
(define-const var3818 String (append/672562846 var2287!1 var3381)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var2287!2 String)
(assert (= var2287!2 (str.++ var2287!1 var3381)))
(assert true)
(define-const var3212 String (append/-1001720160 var3818 var240)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3818!1 String)
(assert (str.prefixof var3818 var3818!1))
(assert true)
(define-const var769 String (toString/-2075883882 var3212)) ; Statement: r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2904 Iterator (var3953_iterator/-912451715 var2678)) ; Statement: $r8 = interfaceinvoke r1.<java.util.List: java.util.Iterator iterator()>() 
(define-const var1753 Bool (var601_makeUniqueName0/-733266458 var769 var2904)) ; Statement: $z1 = staticinvoke <org.apache.ibatis.javassist.util.proxy.ProxyFactory: boolean makeUniqueName0(java.lang.String,java.util.Iterator)>(r7, $r8) 
 ; Statement: if $z1 == 0 goto i0 = i0 + 1 
(assert (= (ite var1753 1 0) 0)) ; Cond: $z1 == 0 
(define-const var240!1 Int (+ var240 1)) ; Statement: i0 = i0 + 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i0 >= 999 goto $r3 = new java.lang.RuntimeException 
(assert (not (>= var240!1 999))) ; Negate: Cond: i0 >= 999  
(define-const var2287!3 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2287!3)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2287!4 String)
(assert (= var2287!4 ""))
(assert true)
(define-const var3818!2 String (append/672562846 var2287!4 var3381)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var2287!5 String)
(assert (= var2287!5 (str.++ var2287!4 var3381)))
(assert true)
(define-const var3212!1 String (append/-1001720160 var3818!2 var240!1)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3818!3 String)
(assert (str.prefixof var3818!2 var3818!3))
(assert true)
(define-const var769!1 String (toString/-2075883882 var3212!1)) ; Statement: r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2904!1 Iterator (var3953_iterator/-912451715 var2678)) ; Statement: $r8 = interfaceinvoke r1.<java.util.List: java.util.Iterator iterator()>() 
(define-const var1753!1 Bool (var601_makeUniqueName0/-733266458 var769!1 var2904!1)) ; Statement: $z1 = staticinvoke <org.apache.ibatis.javassist.util.proxy.ProxyFactory: boolean makeUniqueName0(java.lang.String,java.util.Iterator)>(r7, $r8) 
 ; Statement: if $z1 == 0 goto i0 = i0 + 1 
(assert (not (= (ite var1753!1 1 0) 0))) ; Negate: Cond: $z1 == 0  
 ; Statement: return r7 
(check-sat)
(get-model)
(get-unsat-core)
; {var3953_iterator/-912451715=([java.util.List], java.util.Iterator), var601_makeUniqueName0/-733266458=([java.lang.String, java.util.Iterator], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3381=r0, var1028=null_type, var3953=java.util.List, var2678=r1, var1769=$r2, var601=org.apache.ibatis.javassist.util.proxy.ProxyFactory, var2692=$z0, var240=i0, var2287=$r4, var3818=$r5, var3212=$r6, var769=r7, var2904=$r8, var1753=$z1}
; {r0=var3381, null_type=var1028, java.util.List=var3953, r1=var2678, $r2=var1769, org.apache.ibatis.javassist.util.proxy.ProxyFactory=var601, $z0=var2692, i0=var240, $r4=var2287, $r5=var3818, $r6=var3212, r7=var769, $r8=var2904, $z1=var1753}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.util.List;	$r2 = interfaceinvoke r1.<java.util.List: java.util.Iterator iterator()>();	$z0 = staticinvoke <org.apache.ibatis.javassist.util.proxy.ProxyFactory: boolean makeUniqueName0(java.lang.String,java.util.Iterator)>(r0, $r2);	if $z0 == 0 goto i0 = 100;	i0 = 100;	if i0 >= 999 goto $r3 = new java.lang.RuntimeException;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = interfaceinvoke r1.<java.util.List: java.util.Iterator iterator()>();	$z1 = staticinvoke <org.apache.ibatis.javassist.util.proxy.ProxyFactory: boolean makeUniqueName0(java.lang.String,java.util.Iterator)>(r7, $r8);	if $z1 == 0 goto i0 = i0 + 1;	i0 = i0 + 1;	goto [?= (branch)];	if i0 >= 999 goto $r3 = new java.lang.RuntimeException;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = interfaceinvoke r1.<java.util.List: java.util.Iterator iterator()>();	$z1 = staticinvoke <org.apache.ibatis.javassist.util.proxy.ProxyFactory: boolean makeUniqueName0(java.lang.String,java.util.Iterator)>(r7, $r8);	if $z1 == 0 goto i0 = i0 + 1;	return r7
;block_num 8