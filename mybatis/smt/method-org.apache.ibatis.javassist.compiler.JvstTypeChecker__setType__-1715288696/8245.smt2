(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var801 0)
(declare-sort var1430 0)
(declare-sort var1307 0)
(declare-sort var2784 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isPrimitive/160276961 (var1430) Bool)
(declare-fun isArray/604507311 (var1430) Bool)
(declare-fun var2784-init () var2784)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/1611768686 (var1430) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-157978614 (var2784 String) void)
(declare-const null-var801 var801)
(declare-const null-var1430 var1430)
(declare-const null-Int Int)
(declare-const null-var1307 var1307)
(declare-const var1044 var801) ; Statement: r1 := @this: org.apache.ibatis.javassist.compiler.JvstTypeChecker 
(assert (not (= var1044 null-var801)))
(declare-const var3915 var1430) ; Statement: r0 := @parameter0: org.apache.ibatis.javassist.CtClass 
(assert (not (= var3915 null-var1430)))
(declare-const var2113 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2113 null-Int)))
(assert true)
(define-const var2537 Bool (isPrimitive/160276961 var3915)) ; Statement: $z0 = virtualinvoke r0.<org.apache.ibatis.javassist.CtClass: boolean isPrimitive()>() 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r0.<org.apache.ibatis.javassist.CtClass: boolean isArray()>() 
(assert (= (ite var2537 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var2124 Bool (isArray/604507311 var3915)) ; Statement: $z1 = virtualinvoke r0.<org.apache.ibatis.javassist.CtClass: boolean isArray()>() 
 ; Statement: if $z1 == 0 goto r1.<org.apache.ibatis.javassist.compiler.JvstTypeChecker: int exprType> = 307 
(assert (not (= (ite var2124 1 0) 0))) ; Negate: Cond: $z1 == 0  
(declare-const var2127 var1307) ; Statement: $r5 := @caughtexception 
(assert (not (= var2127 null-var1307)))
(define-const var2351 var2784 var2784-init) ; Statement: $r6 = new org.apache.ibatis.javassist.compiler.CompileError 
(define-const var1805 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1805)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1805!1 String)
(assert (= var1805!1 ""))
(assert true)
(define-const var3772 String (append/672562846 var1805!1 "undefined type: ")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("undefined type: ") 
(declare-const var1805!2 String)
(assert (= var1805!2 (str.++ var1805!1 "undefined type: ")))
(assert true)
(define-const var3022 String (getName/1611768686 var3915)) ; Statement: $r8 = virtualinvoke r0.<org.apache.ibatis.javassist.CtClass: java.lang.String getName()>() 
(assert true)
(define-const var2541 String (append/672562846 var3772 var3022)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var3772!1 String)
(assert (= var3772!1 (str.++ var3772 var3022)))
(assert true)
(define-const var1856 String (toString/-2075883882 var2541)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-157978614 var2351 var1856)) ; Statement: specialinvoke $r6.<org.apache.ibatis.javassist.compiler.CompileError: void <init>(java.lang.String)>($r11) 

(declare-const var2351!1 var2784)
(declare-const var1856!1 String)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {isPrimitive/160276961=([org.apache.ibatis.javassist.CtClass], boolean), isArray/604507311=([org.apache.ibatis.javassist.CtClass], boolean), var2784-init=([], org.apache.ibatis.javassist.compiler.CompileError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/1611768686=([org.apache.ibatis.javassist.CtClass], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-157978614=([org.apache.ibatis.javassist.compiler.CompileError, java.lang.String], void)}
; {var801=org.apache.ibatis.javassist.compiler.JvstTypeChecker, var1044=r1, var1430=org.apache.ibatis.javassist.CtClass, var3915=r0, var2113=i0, var2537=$z0, var2124=$z1, var1307=org.apache.ibatis.javassist.NotFoundException, var2127=$r5, var2784=org.apache.ibatis.javassist.compiler.CompileError, var2351=$r6, var1805=$r7, var3772=$r9, var3022=$r8, var2541=$r10, var1856=$r11}
; {org.apache.ibatis.javassist.compiler.JvstTypeChecker=var801, r1=var1044, org.apache.ibatis.javassist.CtClass=var1430, r0=var3915, i0=var2113, $z0=var2537, $z1=var2124, org.apache.ibatis.javassist.NotFoundException=var1307, $r5=var2127, org.apache.ibatis.javassist.compiler.CompileError=var2784, $r6=var2351, $r7=var1805, $r9=var3772, $r8=var3022, $r10=var2541, $r11=var1856}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.javassist.compiler.JvstTypeChecker;	r0 := @parameter0: org.apache.ibatis.javassist.CtClass;	i0 := @parameter1: int;	$z0 = virtualinvoke r0.<org.apache.ibatis.javassist.CtClass: boolean isPrimitive()>();	if $z0 == 0 goto $z1 = virtualinvoke r0.<org.apache.ibatis.javassist.CtClass: boolean isArray()>();	$z1 = virtualinvoke r0.<org.apache.ibatis.javassist.CtClass: boolean isArray()>();	if $z1 == 0 goto r1.<org.apache.ibatis.javassist.compiler.JvstTypeChecker: int exprType> = 307;	$r5 := @caughtexception;	$r6 = new org.apache.ibatis.javassist.compiler.CompileError;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("undefined type: ");	$r8 = virtualinvoke r0.<org.apache.ibatis.javassist.CtClass: java.lang.String getName()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r6.<org.apache.ibatis.javassist.compiler.CompileError: void <init>(java.lang.String)>($r11);	throw $r6
;block_num 3