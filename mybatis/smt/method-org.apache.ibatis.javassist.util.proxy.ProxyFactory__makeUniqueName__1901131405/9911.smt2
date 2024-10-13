(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var619 0)
(declare-sort var771 0)
(declare-sort var98 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var771_iterator/-912451715 (var771) Iterator)
(declare-fun var98_makeUniqueName0/-733266458 (String Iterator) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const null-var771 var771)
(declare-const var3766 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3766 null-String)))
(declare-const var877 var771) ; Statement: r1 := @parameter1: java.util.List 
(assert (not (= var877 null-var771)))
(define-const var3744 Iterator (var771_iterator/-912451715 var877)) ; Statement: $r2 = interfaceinvoke r1.<java.util.List: java.util.Iterator iterator()>() 
(define-const var905 Bool (var98_makeUniqueName0/-733266458 var3766 var3744)) ; Statement: $z0 = staticinvoke <org.apache.ibatis.javassist.util.proxy.ProxyFactory: boolean makeUniqueName0(java.lang.String,java.util.Iterator)>(r0, $r2) 
 ; Statement: if $z0 == 0 goto i0 = 100 
(assert (= (ite var905 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2156 Int 100) ; Statement: i0 = 100 
(assert true) ; Non Conditional
 ; Statement: if i0 >= 999 goto $r3 = new java.lang.RuntimeException 
(assert (not (>= var2156 999))) ; Negate: Cond: i0 >= 999  
(define-const var708 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var708)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var708!1 String)
(assert (= var708!1 ""))
(assert true)
(define-const var3897 String (append/672562846 var708!1 var3766)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var708!2 String)
(assert (= var708!2 (str.++ var708!1 var3766)))
(assert true)
(define-const var1213 String (append/-1001720160 var3897 var2156)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3897!1 String)
(assert (str.prefixof var3897 var3897!1))
(assert true)
(define-const var2364 String (toString/-2075883882 var1213)) ; Statement: r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var124 Iterator (var771_iterator/-912451715 var877)) ; Statement: $r8 = interfaceinvoke r1.<java.util.List: java.util.Iterator iterator()>() 
(define-const var10 Bool (var98_makeUniqueName0/-733266458 var2364 var124)) ; Statement: $z1 = staticinvoke <org.apache.ibatis.javassist.util.proxy.ProxyFactory: boolean makeUniqueName0(java.lang.String,java.util.Iterator)>(r7, $r8) 
 ; Statement: if $z1 == 0 goto i0 = i0 + 1 
(assert (= (ite var10 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2156!1 Int (+ var2156 1)) ; Statement: i0 = i0 + 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i0 >= 999 goto $r3 = new java.lang.RuntimeException 
(assert (not (>= var2156!1 999))) ; Negate: Cond: i0 >= 999  
(define-const var708!3 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var708!3)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var708!4 String)
(assert (= var708!4 ""))
(assert true)
(define-const var3897!2 String (append/672562846 var708!4 var3766)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var708!5 String)
(assert (= var708!5 (str.++ var708!4 var3766)))
(assert true)
(define-const var1213!1 String (append/-1001720160 var3897!2 var2156!1)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3897!3 String)
(assert (str.prefixof var3897!2 var3897!3))
(assert true)
(define-const var2364!1 String (toString/-2075883882 var1213!1)) ; Statement: r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var124!1 Iterator (var771_iterator/-912451715 var877)) ; Statement: $r8 = interfaceinvoke r1.<java.util.List: java.util.Iterator iterator()>() 
(define-const var10!1 Bool (var98_makeUniqueName0/-733266458 var2364!1 var124!1)) ; Statement: $z1 = staticinvoke <org.apache.ibatis.javassist.util.proxy.ProxyFactory: boolean makeUniqueName0(java.lang.String,java.util.Iterator)>(r7, $r8) 
 ; Statement: if $z1 == 0 goto i0 = i0 + 1 
(assert (= (ite var10!1 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2156!2 Int (+ var2156!1 1)) ; Statement: i0 = i0 + 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i0 >= 999 goto $r3 = new java.lang.RuntimeException 
(assert (not (>= var2156!2 999))) ; Negate: Cond: i0 >= 999  
(define-const var708!6 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var708!6)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var708!7 String)
(assert (= var708!7 ""))
(assert true)
(define-const var3897!4 String (append/672562846 var708!7 var3766)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var708!8 String)
(assert (= var708!8 (str.++ var708!7 var3766)))
(assert true)
(define-const var1213!2 String (append/-1001720160 var3897!4 var2156!2)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3897!5 String)
(assert (str.prefixof var3897!4 var3897!5))
(assert true)
(define-const var2364!2 String (toString/-2075883882 var1213!2)) ; Statement: r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var124!2 Iterator (var771_iterator/-912451715 var877)) ; Statement: $r8 = interfaceinvoke r1.<java.util.List: java.util.Iterator iterator()>() 
(define-const var10!2 Bool (var98_makeUniqueName0/-733266458 var2364!2 var124!2)) ; Statement: $z1 = staticinvoke <org.apache.ibatis.javassist.util.proxy.ProxyFactory: boolean makeUniqueName0(java.lang.String,java.util.Iterator)>(r7, $r8) 
 ; Statement: if $z1 == 0 goto i0 = i0 + 1 
(assert (= (ite var10!2 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2156!3 Int (+ var2156!2 1)) ; Statement: i0 = i0 + 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i0 >= 999 goto $r3 = new java.lang.RuntimeException 
(assert (not (>= var2156!3 999))) ; Negate: Cond: i0 >= 999  
(define-const var708!9 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var708!9)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var708!10 String)
(assert (= var708!10 ""))
(assert true)
(define-const var3897!6 String (append/672562846 var708!10 var3766)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var708!11 String)
(assert (= var708!11 (str.++ var708!10 var3766)))
(assert true)
(define-const var1213!3 String (append/-1001720160 var3897!6 var2156!3)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3897!7 String)
(assert (str.prefixof var3897!6 var3897!7))
(assert true)
(define-const var2364!3 String (toString/-2075883882 var1213!3)) ; Statement: r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var124!3 Iterator (var771_iterator/-912451715 var877)) ; Statement: $r8 = interfaceinvoke r1.<java.util.List: java.util.Iterator iterator()>() 
(define-const var10!3 Bool (var98_makeUniqueName0/-733266458 var2364!3 var124!3)) ; Statement: $z1 = staticinvoke <org.apache.ibatis.javassist.util.proxy.ProxyFactory: boolean makeUniqueName0(java.lang.String,java.util.Iterator)>(r7, $r8) 
 ; Statement: if $z1 == 0 goto i0 = i0 + 1 
(assert (not (= (ite var10!3 1 0) 0))) ; Negate: Cond: $z1 == 0  
 ; Statement: return r7 
(check-sat)
(get-model)
(get-unsat-core)
; {var771_iterator/-912451715=([java.util.List], java.util.Iterator), var98_makeUniqueName0/-733266458=([java.lang.String, java.util.Iterator], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3766=r0, var619=null_type, var771=java.util.List, var877=r1, var3744=$r2, var98=org.apache.ibatis.javassist.util.proxy.ProxyFactory, var905=$z0, var2156=i0, var708=$r4, var3897=$r5, var1213=$r6, var2364=r7, var124=$r8, var10=$z1}
; {r0=var3766, null_type=var619, java.util.List=var771, r1=var877, $r2=var3744, org.apache.ibatis.javassist.util.proxy.ProxyFactory=var98, $z0=var905, i0=var2156, $r4=var708, $r5=var3897, $r6=var1213, r7=var2364, $r8=var124, $z1=var10}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 4}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.util.List;	$r2 = interfaceinvoke r1.<java.util.List: java.util.Iterator iterator()>();	$z0 = staticinvoke <org.apache.ibatis.javassist.util.proxy.ProxyFactory: boolean makeUniqueName0(java.lang.String,java.util.Iterator)>(r0, $r2);	if $z0 == 0 goto i0 = 100;	i0 = 100;	if i0 >= 999 goto $r3 = new java.lang.RuntimeException;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = interfaceinvoke r1.<java.util.List: java.util.Iterator iterator()>();	$z1 = staticinvoke <org.apache.ibatis.javassist.util.proxy.ProxyFactory: boolean makeUniqueName0(java.lang.String,java.util.Iterator)>(r7, $r8);	if $z1 == 0 goto i0 = i0 + 1;	i0 = i0 + 1;	goto [?= (branch)];	if i0 >= 999 goto $r3 = new java.lang.RuntimeException;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = interfaceinvoke r1.<java.util.List: java.util.Iterator iterator()>();	$z1 = staticinvoke <org.apache.ibatis.javassist.util.proxy.ProxyFactory: boolean makeUniqueName0(java.lang.String,java.util.Iterator)>(r7, $r8);	if $z1 == 0 goto i0 = i0 + 1;	i0 = i0 + 1;	goto [?= (branch)];	if i0 >= 999 goto $r3 = new java.lang.RuntimeException;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = interfaceinvoke r1.<java.util.List: java.util.Iterator iterator()>();	$z1 = staticinvoke <org.apache.ibatis.javassist.util.proxy.ProxyFactory: boolean makeUniqueName0(java.lang.String,java.util.Iterator)>(r7, $r8);	if $z1 == 0 goto i0 = i0 + 1;	i0 = i0 + 1;	goto [?= (branch)];	if i0 >= 999 goto $r3 = new java.lang.RuntimeException;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = interfaceinvoke r1.<java.util.List: java.util.Iterator iterator()>();	$z1 = staticinvoke <org.apache.ibatis.javassist.util.proxy.ProxyFactory: boolean makeUniqueName0(java.lang.String,java.util.Iterator)>(r7, $r8);	if $z1 == 0 goto i0 = i0 + 1;	return r7
;block_num 14