(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1001 0)
(declare-sort var201 0)
(declare-sort var3510 0)
(declare-sort var1466 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isPrimitive/160276961 (var201) Bool)
(declare-fun isArray/604507311 (var201) Bool)
(declare-fun var1466-init () var1466)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/1611768686 (var201) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-157978614 (var1466 String) void)
(declare-const null-var1001 var1001)
(declare-const null-var201 var201)
(declare-const null-Int Int)
(declare-const null-var3510 var3510)
(declare-const var2551 var1001) ; Statement: r1 := @this: org.apache.ibatis.javassist.compiler.JvstCodeGen 
(assert (not (= var2551 null-var1001)))
(declare-const var498 var201) ; Statement: r0 := @parameter0: org.apache.ibatis.javassist.CtClass 
(assert (not (= var498 null-var201)))
(declare-const var1799 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1799 null-Int)))
(assert true)
(define-const var2130 Bool (isPrimitive/160276961 var498)) ; Statement: $z0 = virtualinvoke r0.<org.apache.ibatis.javassist.CtClass: boolean isPrimitive()>() 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r0.<org.apache.ibatis.javassist.CtClass: boolean isArray()>() 
(assert (= (ite var2130 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var2226 Bool (isArray/604507311 var498)) ; Statement: $z1 = virtualinvoke r0.<org.apache.ibatis.javassist.CtClass: boolean isArray()>() 
 ; Statement: if $z1 == 0 goto r1.<org.apache.ibatis.javassist.compiler.JvstCodeGen: int exprType> = 307 
(assert (not (= (ite var2226 1 0) 0))) ; Negate: Cond: $z1 == 0  
(declare-const var785 var3510) ; Statement: $r5 := @caughtexception 
(assert (not (= var785 null-var3510)))
(define-const var2915 var1466 var1466-init) ; Statement: $r6 = new org.apache.ibatis.javassist.compiler.CompileError 
(define-const var2382 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2382)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2382!1 String)
(assert (= var2382!1 ""))
(assert true)
(define-const var3745 String (append/672562846 var2382!1 "undefined type: ")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("undefined type: ") 
(declare-const var2382!2 String)
(assert (= var2382!2 (str.++ var2382!1 "undefined type: ")))
(assert true)
(define-const var3814 String (getName/1611768686 var498)) ; Statement: $r8 = virtualinvoke r0.<org.apache.ibatis.javassist.CtClass: java.lang.String getName()>() 
(assert true)
(define-const var2145 String (append/672562846 var3745 var3814)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var3745!1 String)
(assert (= var3745!1 (str.++ var3745 var3814)))
(assert true)
(define-const var164 String (toString/-2075883882 var2145)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-157978614 var2915 var164)) ; Statement: specialinvoke $r6.<org.apache.ibatis.javassist.compiler.CompileError: void <init>(java.lang.String)>($r11) 

(declare-const var2915!1 var1466)
(declare-const var164!1 String)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {isPrimitive/160276961=([org.apache.ibatis.javassist.CtClass], boolean), isArray/604507311=([org.apache.ibatis.javassist.CtClass], boolean), var1466-init=([], org.apache.ibatis.javassist.compiler.CompileError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/1611768686=([org.apache.ibatis.javassist.CtClass], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-157978614=([org.apache.ibatis.javassist.compiler.CompileError, java.lang.String], void)}
; {var1001=org.apache.ibatis.javassist.compiler.JvstCodeGen, var2551=r1, var201=org.apache.ibatis.javassist.CtClass, var498=r0, var1799=i0, var2130=$z0, var2226=$z1, var3510=org.apache.ibatis.javassist.NotFoundException, var785=$r5, var1466=org.apache.ibatis.javassist.compiler.CompileError, var2915=$r6, var2382=$r7, var3745=$r9, var3814=$r8, var2145=$r10, var164=$r11}
; {org.apache.ibatis.javassist.compiler.JvstCodeGen=var1001, r1=var2551, org.apache.ibatis.javassist.CtClass=var201, r0=var498, i0=var1799, $z0=var2130, $z1=var2226, org.apache.ibatis.javassist.NotFoundException=var3510, $r5=var785, org.apache.ibatis.javassist.compiler.CompileError=var1466, $r6=var2915, $r7=var2382, $r9=var3745, $r8=var3814, $r10=var2145, $r11=var164}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.javassist.compiler.JvstCodeGen;	r0 := @parameter0: org.apache.ibatis.javassist.CtClass;	i0 := @parameter1: int;	$z0 = virtualinvoke r0.<org.apache.ibatis.javassist.CtClass: boolean isPrimitive()>();	if $z0 == 0 goto $z1 = virtualinvoke r0.<org.apache.ibatis.javassist.CtClass: boolean isArray()>();	$z1 = virtualinvoke r0.<org.apache.ibatis.javassist.CtClass: boolean isArray()>();	if $z1 == 0 goto r1.<org.apache.ibatis.javassist.compiler.JvstCodeGen: int exprType> = 307;	$r5 := @caughtexception;	$r6 = new org.apache.ibatis.javassist.compiler.CompileError;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("undefined type: ");	$r8 = virtualinvoke r0.<org.apache.ibatis.javassist.CtClass: java.lang.String getName()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r6.<org.apache.ibatis.javassist.compiler.CompileError: void <init>(java.lang.String)>($r11);	throw $r6
;block_num 3