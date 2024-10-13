(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1764 0)
(declare-sort var476 0)
(declare-sort var2018 0)
(declare-sort var2766 0)
(declare-sort var136 0)
(declare-sort var3582 0)
(declare-sort var3701 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2766_ofParameters/-1003958400 ((Array Int var2018)) String)
(declare-fun getMembers/1401795886 (var1764) var136)
(declare-fun methodHead/771997826 (var136) var3582)
(declare-fun lastMethod/-746115060 (var136) var3582)
(declare-fun var3701-init () var3701)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/1611768686 (var2018) String)
(declare-fun cast-from-var1764-to-var2018 (var1764) var2018)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/982930918 (var3701 String) void)
(declare-const null-var1764 var1764)
(declare-const null-String String)
(declare-const null-__Array__Int__var2018__ (Array Int var2018))
(declare-const var3549 var1764) ; Statement: r2 := @this: org.apache.ibatis.javassist.CtClassType 
(assert (not (= var3549 null-var1764)))
(declare-const var2454 String) ; Statement: r7 := @parameter0: java.lang.String 
(assert (not (= var2454 null-String)))
(declare-const var2050 (Array Int var2018)) ; Statement: r0 := @parameter1: org.apache.ibatis.javassist.CtClass[] 
(assert (not (= var2050 null-__Array__Int__var2018__)))
(define-const var3462 String (var2766_ofParameters/-1003958400 var2050)) ; Statement: r1 = staticinvoke <org.apache.ibatis.javassist.bytecode.Descriptor: java.lang.String ofParameters(org.apache.ibatis.javassist.CtClass[])>(r0) 
(assert true)
(define-const var3513 var136 (getMembers/1401795886 var3549)) ; Statement: r3 = virtualinvoke r2.<org.apache.ibatis.javassist.CtClassType: org.apache.ibatis.javassist.CtMember$Cache getMembers()>() 
(assert true)
(define-const var120 var3582 (methodHead/771997826 var3513)) ; Statement: r18 = virtualinvoke r3.<org.apache.ibatis.javassist.CtMember$Cache: org.apache.ibatis.javassist.CtMember methodHead()>() 
(assert true)
(define-const var2225 var3582 (lastMethod/-746115060 var3513)) ; Statement: r4 = virtualinvoke r3.<org.apache.ibatis.javassist.CtMember$Cache: org.apache.ibatis.javassist.CtMember lastMethod()>() 
(assert true) ; Non Conditional
 ; Statement: if r18 == r4 goto $r5 = new org.apache.ibatis.javassist.NotFoundException 
(assert (= var120 var2225)) ; Cond: r18 == r4 
(define-const var1548 var3701 var3701-init) ; Statement: $r5 = new org.apache.ibatis.javassist.NotFoundException 
(define-const var692 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var692)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var692!1 String)
(assert (= var692!1 ""))
(assert true)
(define-const var1713 String (append/672562846 var692!1 var2454)) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7) 
(declare-const var692!2 String)
(assert (= var692!2 (str.++ var692!1 var2454)))
(assert true)
(define-const var1696 String (append/672562846 var1713 "(..) is not found in ")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(..) is not found in ") 
(declare-const var1713!1 String)
(assert (= var1713!1 (str.++ var1713 "(..) is not found in ")))
(assert true)
(define-const var2495 String (getName/1611768686 (cast-from-var1764-to-var2018 var3549))) ; Statement: $r9 = virtualinvoke r2.<org.apache.ibatis.javassist.CtClassType: java.lang.String getName()>() 
(assert true)
(define-const var2845 String (append/672562846 var1696 var2495)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var1696!1 String)
(assert (= var1696!1 (str.++ var1696 var2495)))
(assert true)
(define-const var321 String (toString/-2075883882 var2845)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/982930918 var1548 var321)) ; Statement: specialinvoke $r5.<org.apache.ibatis.javassist.NotFoundException: void <init>(java.lang.String)>($r12) 

(declare-const var1548!1 var3701)
(declare-const var321!1 String)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {var2766_ofParameters/-1003958400=([org.apache.ibatis.javassist.CtClass[]], java.lang.String), getMembers/1401795886=([org.apache.ibatis.javassist.CtClassType], org.apache.ibatis.javassist.CtMember$Cache), methodHead/771997826=([org.apache.ibatis.javassist.CtMember$Cache], org.apache.ibatis.javassist.CtMember), lastMethod/-746115060=([org.apache.ibatis.javassist.CtMember$Cache], org.apache.ibatis.javassist.CtMember), var3701-init=([], org.apache.ibatis.javassist.NotFoundException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/1611768686=([org.apache.ibatis.javassist.CtClass], java.lang.String), cast-from-var1764-to-var2018=([org.apache.ibatis.javassist.CtClassType], org.apache.ibatis.javassist.CtClass), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/982930918=([org.apache.ibatis.javassist.NotFoundException, java.lang.String], void)}
; {var1764=org.apache.ibatis.javassist.CtClassType, var3549=r2, var2454=r7, var476=null_type, var2018=org.apache.ibatis.javassist.CtClass, var2050=r0, var2766=org.apache.ibatis.javassist.bytecode.Descriptor, var3462=r1, var136=org.apache.ibatis.javassist.CtMember$Cache, var3513=r3, var3582=org.apache.ibatis.javassist.CtMember, var120=r18, var2225=r4, var3701=org.apache.ibatis.javassist.NotFoundException, var1548=$r5, var692=$r6, var1713=$r8, var1696=$r10, var2495=$r9, var2845=$r11, var321=$r12}
; {org.apache.ibatis.javassist.CtClassType=var1764, r2=var3549, r7=var2454, null_type=var476, org.apache.ibatis.javassist.CtClass=var2018, r0=var2050, org.apache.ibatis.javassist.bytecode.Descriptor=var2766, r1=var3462, org.apache.ibatis.javassist.CtMember$Cache=var136, r3=var3513, org.apache.ibatis.javassist.CtMember=var3582, r18=var120, r4=var2225, org.apache.ibatis.javassist.NotFoundException=var3701, $r5=var1548, $r6=var692, $r8=var1713, $r10=var1696, $r9=var2495, $r11=var2845, $r12=var321}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.apache.ibatis.javassist.CtClassType;	r7 := @parameter0: java.lang.String;	r0 := @parameter1: org.apache.ibatis.javassist.CtClass[];	r1 = staticinvoke <org.apache.ibatis.javassist.bytecode.Descriptor: java.lang.String ofParameters(org.apache.ibatis.javassist.CtClass[])>(r0);	r3 = virtualinvoke r2.<org.apache.ibatis.javassist.CtClassType: org.apache.ibatis.javassist.CtMember$Cache getMembers()>();	r18 = virtualinvoke r3.<org.apache.ibatis.javassist.CtMember$Cache: org.apache.ibatis.javassist.CtMember methodHead()>();	r4 = virtualinvoke r3.<org.apache.ibatis.javassist.CtMember$Cache: org.apache.ibatis.javassist.CtMember lastMethod()>();	if r18 == r4 goto $r5 = new org.apache.ibatis.javassist.NotFoundException;	$r5 = new org.apache.ibatis.javassist.NotFoundException;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7);	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(..) is not found in ");	$r9 = virtualinvoke r2.<org.apache.ibatis.javassist.CtClassType: java.lang.String getName()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r5.<org.apache.ibatis.javassist.NotFoundException: void <init>(java.lang.String)>($r12);	throw $r5
;block_num 3