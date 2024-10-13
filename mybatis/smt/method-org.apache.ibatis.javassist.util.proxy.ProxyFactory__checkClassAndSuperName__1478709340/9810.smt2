(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2797 0)
(declare-sort var1834 0)
(declare-sort var3773 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun interfaces/-1028346880 (var2797) (Array Int ClassObject))
(declare-fun superClass/-1028346880 (var2797) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun superName/-1028346880 (var2797) String)
(declare-fun getLength-Arr-ClassObject-1 ((Array Int ClassObject)) Int)
(declare-fun basename/-1028346880 (var2797) String)
(declare-fun getModifiers/698981592 (ClassObject) Int)
(declare-fun var1834_isFinal/22304210 (Int) Bool)
(declare-fun var3773-init () var3773)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1084991535 (var3773 String) void)
(declare-const null-var2797 var2797)
(declare-const null-__Array__Int__ClassObject__ (Array Int ClassObject))
(declare-const null-ClassObject ClassObject)
(declare-const var2797-OBJECT_TYPE ClassObject)
(declare-const var1676 var2797) ; Statement: r0 := @this: org.apache.ibatis.javassist.util.proxy.ProxyFactory 
(assert (not (= var1676 null-var2797)))
(define-const var952 (Array Int ClassObject) (interfaces/-1028346880 var1676)) ; Statement: $r1 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class[] interfaces> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass> 
(assert (not (= var952 null-__Array__Int__ClassObject__))) ; Cond: $r1 != null 
(define-const var2377 ClassObject (superClass/-1028346880 var1676)) ; Statement: $r2 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass> 
 ; Statement: if $r2 != null goto $r3 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass> 
(assert (not (not (= var2377 null-ClassObject)))) ; Negate: Cond: $r2 != null  
(define-const var3611 ClassObject var2797-OBJECT_TYPE) ; Statement: $r15 = <org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class OBJECT_TYPE> 
(declare-const var1676!1 var2797)
(assert (not (= var1676!1 null-var2797)))
(assert (= (superClass/-1028346880 var1676!1) var3611)) ; Statement: r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass> = $r15 
(define-const var3938 ClassObject (superClass/-1028346880 var1676!1)) ; Statement: $r16 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass> 
(assert true)
(define-const var2737 String (getName/-1958580599 var3938)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.Class: java.lang.String getName()>() 
(declare-const var1676!2 var2797)
(assert (not (= var1676!2 null-var2797)))
(assert (= (superName/-1028346880 var1676!2) var2737)) ; Statement: r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String superName> = $r17 
(define-const var2500 (Array Int ClassObject) (interfaces/-1028346880 var1676!2)) ; Statement: $r18 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class[] interfaces> 
(define-const var3769 Int (getLength-Arr-ClassObject-1 var2500)) ; Statement: $i1 = lengthof $r18 
 ; Statement: if $i1 != 0 goto $r19 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class[] interfaces> 
(assert (not (= var3769 0))) ; Cond: $i1 != 0 
(define-const var1575 (Array Int ClassObject) (interfaces/-1028346880 var1676!2)) ; Statement: $r19 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class[] interfaces> 
(define-const var3502 ClassObject (select var1575 0)) ; Statement: $r20 = $r19[0] 
(assert true)
(define-const var1182 String (getName/-1958580599 var3502)) ; Statement: $r22 = virtualinvoke $r20.<java.lang.Class: java.lang.String getName()>() 
(assert true) ; Non Conditional
(declare-const var1676!3 var2797)
(assert (not (= var1676!3 null-var2797)))
(assert (= (basename/-1028346880 var1676!3) var1182)) ; Statement: r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String basename> = $r22 
 ; Statement: goto [?= $r6 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass>] 
(assert true) ; Non Conditional
(define-const var3282 ClassObject (superClass/-1028346880 var1676!3)) ; Statement: $r6 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass> 
(assert true)
(define-const var1687 Int (getModifiers/698981592 var3282)) ; Statement: $i0 = virtualinvoke $r6.<java.lang.Class: int getModifiers()>() 
(define-const var285 Bool (var1834_isFinal/22304210 var1687)) ; Statement: $z0 = staticinvoke <java.lang.reflect.Modifier: boolean isFinal(int)>($i0) 
 ; Statement: if $z0 == 0 goto $r7 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String basename> 
(assert (not (= (ite var285 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1787 var3773 var3773-init) ; Statement: $r9 = new java.lang.RuntimeException 
(define-const var886 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var886)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var886!1 String)
(assert (= var886!1 ""))
(define-const var3216 String (superName/-1028346880 var1676!3)) ; Statement: $r11 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String superName> 
(assert true)
(define-const var3156 String (append/672562846 var886!1 var3216)) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var886!2 String)
(assert (= var886!2 (str.++ var886!1 var3216)))
(assert true)
(define-const var2820 String (append/672562846 var3156 " is final")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is final") 
(declare-const var3156!1 String)
(assert (= var3156!1 (str.++ var3156 " is final")))
(assert true)
(define-const var383 String (toString/-2075883882 var2820)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1084991535 var1787 var383)) ; Statement: specialinvoke $r9.<java.lang.RuntimeException: void <init>(java.lang.String)>($r14) 

(declare-const var1787!1 var3773)
(declare-const var383!1 String)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {interfaces/-1028346880=([org.apache.ibatis.javassist.util.proxy.ProxyFactory], java.lang.Class[]), superClass/-1028346880=([org.apache.ibatis.javassist.util.proxy.ProxyFactory], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), superName/-1028346880=([org.apache.ibatis.javassist.util.proxy.ProxyFactory], java.lang.String), getLength-Arr-ClassObject-1=([java.lang.Class[]], int), basename/-1028346880=([org.apache.ibatis.javassist.util.proxy.ProxyFactory], java.lang.String), getModifiers/698981592=([java.lang.Class], int), var1834_isFinal/22304210=([int], boolean), var3773-init=([], java.lang.RuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1084991535=([java.lang.RuntimeException, java.lang.String], void)}
; {var2797=org.apache.ibatis.javassist.util.proxy.ProxyFactory, var1676=r0, var952=$r1, var2377=$r2, var3611=$r15, var3938=$r16, var2737=$r17, var2500=$r18, var3769=$i1, var1575=$r19, var3502=$r20, var1182=$r22, var3282=$r6, var1687=$i0, var1834=java.lang.reflect.Modifier, var285=$z0, var3773=java.lang.RuntimeException, var1787=$r9, var886=$r10, var3216=$r11, var3156=$r12, var2820=$r13, var383=$r14}
; {org.apache.ibatis.javassist.util.proxy.ProxyFactory=var2797, r0=var1676, $r1=var952, $r2=var2377, $r15=var3611, $r16=var3938, $r17=var2737, $r18=var2500, $i1=var3769, $r19=var1575, $r20=var3502, $r22=var1182, $r6=var3282, $i0=var1687, java.lang.reflect.Modifier=var1834, $z0=var285, java.lang.RuntimeException=var3773, $r9=var1787, $r10=var886, $r11=var3216, $r12=var3156, $r13=var2820, $r14=var383}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.util.proxy.ProxyFactory;	$r1 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class[] interfaces>;	if $r1 != null goto $r2 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass>;	$r2 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass>;	if $r2 != null goto $r3 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass>;	$r15 = <org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class OBJECT_TYPE>;	r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass> = $r15;	$r16 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass>;	$r17 = virtualinvoke $r16.<java.lang.Class: java.lang.String getName()>();	r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String superName> = $r17;	$r18 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class[] interfaces>;	$i1 = lengthof $r18;	if $i1 != 0 goto $r19 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class[] interfaces>;	$r19 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class[] interfaces>;	$r20 = $r19[0];	$r22 = virtualinvoke $r20.<java.lang.Class: java.lang.String getName()>();	r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String basename> = $r22;	goto [?= $r6 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass>];	$r6 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass>;	$i0 = virtualinvoke $r6.<java.lang.Class: int getModifiers()>();	$z0 = staticinvoke <java.lang.reflect.Modifier: boolean isFinal(int)>($i0);	if $z0 == 0 goto $r7 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String basename>;	$r9 = new java.lang.RuntimeException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r11 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String superName>;	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is final");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r9.<java.lang.RuntimeException: void <init>(java.lang.String)>($r14);	throw $r9
;block_num 7