(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2381 0)
(declare-sort var1408 0)
(declare-sort var512 0)
(declare-sort var3477 0)
(declare-sort var1139 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun thisClass/-667254846 (var2381) var512)
(declare-fun isEnclosing/1732994277 (var2381 var512 var512) Bool)
(declare-fun var1139-init () var1139)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/1611768686 (var512) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-157978614 (var1139 String) void)
(declare-const null-var2381 var2381)
(declare-const null-String String)
(declare-const null-var512 var512)
(declare-const null-var3477 var3477)
(declare-const var2542 var2381) ; Statement: r0 := @this: org.apache.ibatis.javassist.compiler.MemberCodeGen 
(assert (not (= var2542 null-var2381)))
(declare-const var1045 String) ; Statement: r10 := @parameter0: java.lang.String 
(assert (not (= var1045 null-String)))
(declare-const var2258 var512) ; Statement: r1 := @parameter1: org.apache.ibatis.javassist.CtClass 
(assert (not (= var2258 null-var512)))
(declare-const var1122 var3477) ; Statement: r11 := @parameter2: org.apache.ibatis.javassist.bytecode.MethodInfo 
(assert (not (= var1122 null-var3477)))
(define-const var609 var512 (thisClass/-667254846 var2542)) ; Statement: $r2 = r0.<org.apache.ibatis.javassist.compiler.MemberCodeGen: org.apache.ibatis.javassist.CtClass thisClass> 
(assert true)
(define-const var178 Bool (isEnclosing/1732994277 var2542 var2258 var609)) ; Statement: $z0 = specialinvoke r0.<org.apache.ibatis.javassist.compiler.MemberCodeGen: boolean isEnclosing(org.apache.ibatis.javassist.CtClass,org.apache.ibatis.javassist.CtClass)>(r1, $r2) 
 ; Statement: if $z0 == 0 goto $r3 = new org.apache.ibatis.javassist.compiler.CompileError 
(assert (= (ite var178 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3969 var1139 var1139-init) ; Statement: $r3 = new org.apache.ibatis.javassist.compiler.CompileError 
(define-const var2094 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2094)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2094!1 String)
(assert (= var2094!1 ""))
(assert true)
(define-const var481 String (append/672562846 var2094!1 "the called constructor is private in ")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("the called constructor is private in ") 
(declare-const var2094!2 String)
(assert (= var2094!2 (str.++ var2094!1 "the called constructor is private in ")))
(assert true)
(define-const var3167 String (getName/1611768686 var2258)) ; Statement: $r5 = virtualinvoke r1.<org.apache.ibatis.javassist.CtClass: java.lang.String getName()>() 
(assert true)
(define-const var827 String (append/672562846 var481 var3167)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var481!1 String)
(assert (= var481!1 (str.++ var481 var3167)))
(assert true)
(define-const var3397 String (toString/-2075883882 var827)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-157978614 var3969 var3397)) ; Statement: specialinvoke $r3.<org.apache.ibatis.javassist.compiler.CompileError: void <init>(java.lang.String)>($r8) 

(declare-const var3969!1 var1139)
(declare-const var3397!1 String)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {thisClass/-667254846=([org.apache.ibatis.javassist.compiler.MemberCodeGen], org.apache.ibatis.javassist.CtClass), isEnclosing/1732994277=([org.apache.ibatis.javassist.compiler.MemberCodeGen, org.apache.ibatis.javassist.CtClass, org.apache.ibatis.javassist.CtClass], boolean), var1139-init=([], org.apache.ibatis.javassist.compiler.CompileError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/1611768686=([org.apache.ibatis.javassist.CtClass], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-157978614=([org.apache.ibatis.javassist.compiler.CompileError, java.lang.String], void)}
; {var2381=org.apache.ibatis.javassist.compiler.MemberCodeGen, var2542=r0, var1045=r10, var1408=null_type, var512=org.apache.ibatis.javassist.CtClass, var2258=r1, var3477=org.apache.ibatis.javassist.bytecode.MethodInfo, var1122=r11, var609=$r2, var178=$z0, var1139=org.apache.ibatis.javassist.compiler.CompileError, var3969=$r3, var2094=$r4, var481=$r6, var3167=$r5, var827=$r7, var3397=$r8}
; {org.apache.ibatis.javassist.compiler.MemberCodeGen=var2381, r0=var2542, r10=var1045, null_type=var1408, org.apache.ibatis.javassist.CtClass=var512, r1=var2258, org.apache.ibatis.javassist.bytecode.MethodInfo=var3477, r11=var1122, $r2=var609, $z0=var178, org.apache.ibatis.javassist.compiler.CompileError=var1139, $r3=var3969, $r4=var2094, $r6=var481, $r5=var3167, $r7=var827, $r8=var3397}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.compiler.MemberCodeGen;	r10 := @parameter0: java.lang.String;	r1 := @parameter1: org.apache.ibatis.javassist.CtClass;	r11 := @parameter2: org.apache.ibatis.javassist.bytecode.MethodInfo;	$r2 = r0.<org.apache.ibatis.javassist.compiler.MemberCodeGen: org.apache.ibatis.javassist.CtClass thisClass>;	$z0 = specialinvoke r0.<org.apache.ibatis.javassist.compiler.MemberCodeGen: boolean isEnclosing(org.apache.ibatis.javassist.CtClass,org.apache.ibatis.javassist.CtClass)>(r1, $r2);	if $z0 == 0 goto $r3 = new org.apache.ibatis.javassist.compiler.CompileError;	$r3 = new org.apache.ibatis.javassist.compiler.CompileError;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("the called constructor is private in ");	$r5 = virtualinvoke r1.<org.apache.ibatis.javassist.CtClass: java.lang.String getName()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r3.<org.apache.ibatis.javassist.compiler.CompileError: void <init>(java.lang.String)>($r8);	throw $r3
;block_num 2