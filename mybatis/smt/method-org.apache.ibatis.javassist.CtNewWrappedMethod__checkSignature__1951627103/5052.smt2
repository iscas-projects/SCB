(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1751 0)
(declare-sort var2428 0)
(declare-sort var390 0)
(declare-sort var1812 0)
(declare-sort var854 0)
(declare-sort var3498 0)
(declare-sort var309 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getMethodInfo2/-1623269181 (var1812) var390)
(declare-fun cast-from-var1751-to-var1812 (var1751) var1812)
(declare-fun getDescriptor/241025769 (var390) String)
(declare-fun var854-init () var854)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getDeclaringClass/629685452 (var309) var3498)
(declare-fun cast-from-var1751-to-var309 (var1751) var309)
(declare-fun getName/1611768686 (var3498) String)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun getName/-1096976293 (var1751) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-874668403 (var854 String) void)
(declare-const null-var1751 var1751)
(declare-const null-String String)
(declare-const var2585 var1751) ; Statement: r1 := @parameter0: org.apache.ibatis.javassist.CtMethod 
(assert (not (= var2585 null-var1751)))
(declare-const var2311 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var2311 null-String)))
(assert true)
(define-const var3540 var390 (getMethodInfo2/-1623269181 (cast-from-var1751-to-var1812 var2585))) ; Statement: $r2 = virtualinvoke r1.<org.apache.ibatis.javassist.CtMethod: org.apache.ibatis.javassist.bytecode.MethodInfo getMethodInfo2()>() 
(assert true)
(define-const var1671 String (getDescriptor/241025769 var3540)) ; Statement: $r3 = virtualinvoke $r2.<org.apache.ibatis.javassist.bytecode.MethodInfo: java.lang.String getDescriptor()>() 
(assert true)
(define-const var3133 Bool (= var2311 var1671)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r3) 
 ; Statement: if $z0 != 0 goto return 
(assert (not (not (= (ite var3133 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var15 var854 var854-init) ; Statement: $r4 = new org.apache.ibatis.javassist.CannotCompileException 
(define-const var3694 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3694)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3694!1 String)
(assert (= var3694!1 ""))
(assert true)
(define-const var1616 String (append/672562846 var3694!1 "wrapped method with a bad signature: ")) ; Statement: $r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("wrapped method with a bad signature: ") 
(declare-const var3694!2 String)
(assert (= var3694!2 (str.++ var3694!1 "wrapped method with a bad signature: ")))
(assert true)
(define-const var3041 var3498 (getDeclaringClass/629685452 (cast-from-var1751-to-var309 var2585))) ; Statement: $r6 = virtualinvoke r1.<org.apache.ibatis.javassist.CtMethod: org.apache.ibatis.javassist.CtClass getDeclaringClass()>() 
(assert true)
(define-const var748 String (getName/1611768686 var3041)) ; Statement: $r7 = virtualinvoke $r6.<org.apache.ibatis.javassist.CtClass: java.lang.String getName()>() 
(assert true)
(define-const var2385 String (append/672562846 var1616 var748)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var1616!1 String)
(assert (= var1616!1 (str.++ var1616 var748)))
(assert true)
(define-const var1856 String (append/-1166366385 var2385 46)) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46) 
(declare-const var2385!1 String)
(assert (str.prefixof var2385 var2385!1))
(assert true)
(define-const var1330 String (getName/-1096976293 var2585)) ; Statement: $r10 = virtualinvoke r1.<org.apache.ibatis.javassist.CtMethod: java.lang.String getName()>() 
(assert true)
(define-const var1529 String (append/672562846 var1856 var1330)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var1856!1 String)
(assert (= var1856!1 (str.++ var1856 var1330)))
(assert true)
(define-const var3482 String (toString/-2075883882 var1529)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-874668403 var15 var3482)) ; Statement: specialinvoke $r4.<org.apache.ibatis.javassist.CannotCompileException: void <init>(java.lang.String)>($r13) 

(declare-const var15!1 var854)
(declare-const var3482!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {getMethodInfo2/-1623269181=([org.apache.ibatis.javassist.CtBehavior], org.apache.ibatis.javassist.bytecode.MethodInfo), cast-from-var1751-to-var1812=([org.apache.ibatis.javassist.CtMethod], org.apache.ibatis.javassist.CtBehavior), getDescriptor/241025769=([org.apache.ibatis.javassist.bytecode.MethodInfo], java.lang.String), var854-init=([], org.apache.ibatis.javassist.CannotCompileException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getDeclaringClass/629685452=([org.apache.ibatis.javassist.CtMember], org.apache.ibatis.javassist.CtClass), cast-from-var1751-to-var309=([org.apache.ibatis.javassist.CtMethod], org.apache.ibatis.javassist.CtMember), getName/1611768686=([org.apache.ibatis.javassist.CtClass], java.lang.String), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), getName/-1096976293=([org.apache.ibatis.javassist.CtMethod], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-874668403=([org.apache.ibatis.javassist.CannotCompileException, java.lang.String], void)}
; {var1751=org.apache.ibatis.javassist.CtMethod, var2585=r1, var2311=r0, var2428=null_type, var390=org.apache.ibatis.javassist.bytecode.MethodInfo, var1812=org.apache.ibatis.javassist.CtBehavior, var3540=$r2, var1671=$r3, var3133=$z0, var854=org.apache.ibatis.javassist.CannotCompileException, var15=$r4, var3694=$r5, var1616=$r8, var3498=org.apache.ibatis.javassist.CtClass, var309=org.apache.ibatis.javassist.CtMember, var3041=$r6, var748=$r7, var2385=$r9, var1856=$r11, var1330=$r10, var1529=$r12, var3482=$r13}
; {org.apache.ibatis.javassist.CtMethod=var1751, r1=var2585, r0=var2311, null_type=var2428, org.apache.ibatis.javassist.bytecode.MethodInfo=var390, org.apache.ibatis.javassist.CtBehavior=var1812, $r2=var3540, $r3=var1671, $z0=var3133, org.apache.ibatis.javassist.CannotCompileException=var854, $r4=var15, $r5=var3694, $r8=var1616, org.apache.ibatis.javassist.CtClass=var3498, org.apache.ibatis.javassist.CtMember=var309, $r6=var3041, $r7=var748, $r9=var2385, $r11=var1856, $r10=var1330, $r12=var1529, $r13=var3482}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: org.apache.ibatis.javassist.CtMethod;	r0 := @parameter1: java.lang.String;	$r2 = virtualinvoke r1.<org.apache.ibatis.javassist.CtMethod: org.apache.ibatis.javassist.bytecode.MethodInfo getMethodInfo2()>();	$r3 = virtualinvoke $r2.<org.apache.ibatis.javassist.bytecode.MethodInfo: java.lang.String getDescriptor()>();	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r3);	if $z0 != 0 goto return;	$r4 = new org.apache.ibatis.javassist.CannotCompileException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("wrapped method with a bad signature: ");	$r6 = virtualinvoke r1.<org.apache.ibatis.javassist.CtMethod: org.apache.ibatis.javassist.CtClass getDeclaringClass()>();	$r7 = virtualinvoke $r6.<org.apache.ibatis.javassist.CtClass: java.lang.String getName()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46);	$r10 = virtualinvoke r1.<org.apache.ibatis.javassist.CtMethod: java.lang.String getName()>();	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<org.apache.ibatis.javassist.CannotCompileException: void <init>(java.lang.String)>($r13);	throw $r4
;block_num 2