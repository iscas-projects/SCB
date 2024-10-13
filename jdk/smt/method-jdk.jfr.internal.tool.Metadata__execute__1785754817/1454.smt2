(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2056 0)
(declare-sort var3706 0)
(declare-sort var2558 0)
(declare-sort var1027 0)
(declare-sort var1404 0)
(declare-sort var1140 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getJFRInputFile/-1754817857 (var1027 var3706) var2558)
(declare-fun cast-from-var2056-to-var1027 (var2056) var1027)
(declare-fun var3706_size/-2055583999 (var3706) Int)
(declare-fun acceptOption/-442773346 (var1027 var3706 String) Bool)
(declare-fun var1404-init () var1404)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3706_peek/625256415 (var3706) var1140)
(declare-fun cast-from-var1140-to-String (var1140) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-732306635 (var1404 String) void)
(declare-const null-var2056 var2056)
(declare-const null-var3706 var3706)
(declare-const var3597 var2056) ; Statement: r0 := @this: jdk.jfr.internal.tool.Metadata 
(assert (not (= var3597 null-var2056)))
(declare-const var2118 var3706) ; Statement: r1 := @parameter0: java.util.Deque 
(assert (not (= var2118 null-var3706)))
(assert true)
(define-const var3519 var2558 (getJFRInputFile/-1754817857 (cast-from-var2056-to-var1027 var3597) var2118)) ; Statement: r2 = virtualinvoke r0.<jdk.jfr.internal.tool.Metadata: java.nio.file.Path getJFRInputFile(java.util.Deque)>(r1) 
(define-const var2138 Bool (ite (= 1 0) true false)) ; Statement: z2 = 0 
(define-const var3510 Int (var3706_size/-2055583999 var2118)) ; Statement: i1 = interfaceinvoke r1.<java.util.Deque: int size()>() 
(assert true) ; Non Conditional
 ; Statement: if i1 <= 0 goto $r3 = new java.io.PrintWriter 
(assert (not (<= var3510 0))) ; Negate: Cond: i1 <= 0  
(assert true)
(define-const var2623 Bool (acceptOption/-442773346 (cast-from-var2056-to-var1027 var3597) var2118 "--ids")) ; Statement: $z1 = virtualinvoke r0.<jdk.jfr.internal.tool.Metadata: boolean acceptOption(java.util.Deque,java.lang.String)>(r1, "--ids") 
 ; Statement: if $z1 == 0 goto $i0 = interfaceinvoke r1.<java.util.Deque: int size()>() 
(assert (= (ite var2623 1 0) 0)) ; Cond: $z1 == 0 
(define-const var130 Int (var3706_size/-2055583999 var2118)) ; Statement: $i0 = interfaceinvoke r1.<java.util.Deque: int size()>() 
 ; Statement: if i1 != $i0 goto i1 = interfaceinvoke r1.<java.util.Deque: int size()>() 
(assert (not (not (= var3510 var130)))) ; Negate: Cond: i1 != $i0  
(define-const var111 var1404 var1404-init) ; Statement: $r12 = new jdk.jfr.internal.tool.UserSyntaxException 
(define-const var206 String String-init) ; Statement: $r13 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var206)) ; Statement: specialinvoke $r13.<java.lang.StringBuilder: void <init>()>() 
(declare-const var206!1 String)
(assert (= var206!1 ""))
(assert true)
(define-const var578 String (append/672562846 var206!1 "unknown option ")) ; Statement: $r16 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("unknown option ") 
(declare-const var206!2 String)
(assert (= var206!2 (str.++ var206!1 "unknown option ")))
(define-const var3841 var1140 (var3706_peek/625256415 var2118)) ; Statement: $r14 = interfaceinvoke r1.<java.util.Deque: java.lang.Object peek()>() 
(define-const var3748 String (cast-from-var1140-to-String var3841)) ; Statement: $r15 = (java.lang.String) $r14 
(assert true)
(define-const var3242 String (append/672562846 var578 var3748)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15) 
(declare-const var578!1 String)
(assert (= var578!1 (str.++ var578 var3748)))
(assert true)
(define-const var3768 String (toString/-2075883882 var3242)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-732306635 var111 var3768)) ; Statement: specialinvoke $r12.<jdk.jfr.internal.tool.UserSyntaxException: void <init>(java.lang.String)>($r18) 

(declare-const var111!1 var1404)
(declare-const var3768!1 String)
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {getJFRInputFile/-1754817857=([jdk.jfr.internal.tool.Command, java.util.Deque], java.nio.file.Path), cast-from-var2056-to-var1027=([jdk.jfr.internal.tool.Metadata], jdk.jfr.internal.tool.Command), var3706_size/-2055583999=([java.util.Deque], int), acceptOption/-442773346=([jdk.jfr.internal.tool.Command, java.util.Deque, java.lang.String], boolean), var1404-init=([], jdk.jfr.internal.tool.UserSyntaxException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3706_peek/625256415=([java.util.Deque], java.lang.Object), cast-from-var1140-to-String=([java.lang.Object], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-732306635=([jdk.jfr.internal.tool.UserSyntaxException, java.lang.String], void)}
; {var2056=jdk.jfr.internal.tool.Metadata, var3597=r0, var3706=java.util.Deque, var2118=r1, var2558=java.nio.file.Path, var1027=jdk.jfr.internal.tool.Command, var3519=r2, var2138=z2, var3510=i1, var2623=$z1, var130=$i0, var1404=jdk.jfr.internal.tool.UserSyntaxException, var111=$r12, var206=$r13, var578=$r16, var1140=java.lang.Object, var3841=$r14, var3748=$r15, var3242=$r17, var3768=$r18}
; {jdk.jfr.internal.tool.Metadata=var2056, r0=var3597, java.util.Deque=var3706, r1=var2118, java.nio.file.Path=var2558, jdk.jfr.internal.tool.Command=var1027, r2=var3519, z2=var2138, i1=var3510, $z1=var2623, $i0=var130, jdk.jfr.internal.tool.UserSyntaxException=var1404, $r12=var111, $r13=var206, $r16=var578, java.lang.Object=var1140, $r14=var3841, $r15=var3748, $r17=var3242, $r18=var3768}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.jfr.internal.tool.Metadata;	r1 := @parameter0: java.util.Deque;	r2 = virtualinvoke r0.<jdk.jfr.internal.tool.Metadata: java.nio.file.Path getJFRInputFile(java.util.Deque)>(r1);	z2 = 0;	i1 = interfaceinvoke r1.<java.util.Deque: int size()>();	if i1 <= 0 goto $r3 = new java.io.PrintWriter;	$z1 = virtualinvoke r0.<jdk.jfr.internal.tool.Metadata: boolean acceptOption(java.util.Deque,java.lang.String)>(r1, "--ids");	if $z1 == 0 goto $i0 = interfaceinvoke r1.<java.util.Deque: int size()>();	$i0 = interfaceinvoke r1.<java.util.Deque: int size()>();	if i1 != $i0 goto i1 = interfaceinvoke r1.<java.util.Deque: int size()>();	$r12 = new jdk.jfr.internal.tool.UserSyntaxException;	$r13 = new java.lang.StringBuilder;	specialinvoke $r13.<java.lang.StringBuilder: void <init>()>();	$r16 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("unknown option ");	$r14 = interfaceinvoke r1.<java.util.Deque: java.lang.Object peek()>();	$r15 = (java.lang.String) $r14;	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r12.<jdk.jfr.internal.tool.UserSyntaxException: void <init>(java.lang.String)>($r18);	throw $r12
;block_num 5