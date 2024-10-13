(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2411 0)
(declare-sort var3379 0)
(declare-sort var3305 0)
(declare-sort var2937 0)
(declare-sort var3500 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun thisClass/-667254846 (var2411) var2937)
(declare-fun isEnclosing/1732994277 (var2411 var2937 var2937) Bool)
(declare-fun var3500-init () var3500)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-157978614 (var3500 String) void)
(declare-const null-var2411 var2411)
(declare-const null-String String)
(declare-const null-var3305 var3305)
(declare-const null-var2937 var2937)
(declare-const var3219 var2411) ; Statement: r0 := @this: org.apache.ibatis.javassist.compiler.MemberCodeGen 
(assert (not (= var3219 null-var2411)))
(declare-const var98 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var98 null-String)))
(declare-const var1854 String) ; Statement: r11 := @parameter1: java.lang.String 
(assert (not (= var1854 null-String)))
(declare-const var356 String) ; Statement: r12 := @parameter2: java.lang.String 
(assert (not (= var356 null-String)))
(declare-const var3058 var3305) ; Statement: r13 := @parameter3: org.apache.ibatis.javassist.bytecode.MethodInfo 
(assert (not (= var3058 null-var3305)))
(declare-const var1267 var2937) ; Statement: r1 := @parameter4: org.apache.ibatis.javassist.CtClass 
(assert (not (= var1267 null-var2937)))
(define-const var605 var2937 (thisClass/-667254846 var3219)) ; Statement: $r2 = r0.<org.apache.ibatis.javassist.compiler.MemberCodeGen: org.apache.ibatis.javassist.CtClass thisClass> 
(assert true)
(define-const var2806 Bool (isEnclosing/1732994277 var3219 var1267 var605)) ; Statement: $z0 = specialinvoke r0.<org.apache.ibatis.javassist.compiler.MemberCodeGen: boolean isEnclosing(org.apache.ibatis.javassist.CtClass,org.apache.ibatis.javassist.CtClass)>(r1, $r2) 
 ; Statement: if $z0 == 0 goto $r3 = new org.apache.ibatis.javassist.compiler.CompileError 
(assert (= (ite var2806 1 0) 0)) ; Cond: $z0 == 0 
(define-const var74 var3500 var3500-init) ; Statement: $r3 = new org.apache.ibatis.javassist.compiler.CompileError 
(define-const var2277 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2277)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2277!1 String)
(assert (= var2277!1 ""))
(assert true)
(define-const var2104 String (append/672562846 var2277!1 "Method ")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Method ") 
(declare-const var2277!2 String)
(assert (= var2277!2 (str.++ var2277!1 "Method ")))
(assert true)
(define-const var2082 String (append/672562846 var2104 var98)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var2104!1 String)
(assert (= var2104!1 (str.++ var2104 var98)))
(assert true)
(define-const var1959 String (append/672562846 var2082 " is private")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is private") 
(declare-const var2082!1 String)
(assert (= var2082!1 (str.++ var2082 " is private")))
(assert true)
(define-const var1012 String (toString/-2075883882 var1959)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-157978614 var74 var1012)) ; Statement: specialinvoke $r3.<org.apache.ibatis.javassist.compiler.CompileError: void <init>(java.lang.String)>($r9) 

(declare-const var74!1 var3500)
(declare-const var1012!1 String)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {thisClass/-667254846=([org.apache.ibatis.javassist.compiler.MemberCodeGen], org.apache.ibatis.javassist.CtClass), isEnclosing/1732994277=([org.apache.ibatis.javassist.compiler.MemberCodeGen, org.apache.ibatis.javassist.CtClass, org.apache.ibatis.javassist.CtClass], boolean), var3500-init=([], org.apache.ibatis.javassist.compiler.CompileError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-157978614=([org.apache.ibatis.javassist.compiler.CompileError, java.lang.String], void)}
; {var2411=org.apache.ibatis.javassist.compiler.MemberCodeGen, var3219=r0, var98=r5, var3379=null_type, var1854=r11, var356=r12, var3305=org.apache.ibatis.javassist.bytecode.MethodInfo, var3058=r13, var2937=org.apache.ibatis.javassist.CtClass, var1267=r1, var605=$r2, var2806=$z0, var3500=org.apache.ibatis.javassist.compiler.CompileError, var74=$r3, var2277=$r4, var2104=$r6, var2082=$r7, var1959=$r8, var1012=$r9}
; {org.apache.ibatis.javassist.compiler.MemberCodeGen=var2411, r0=var3219, r5=var98, null_type=var3379, r11=var1854, r12=var356, org.apache.ibatis.javassist.bytecode.MethodInfo=var3305, r13=var3058, org.apache.ibatis.javassist.CtClass=var2937, r1=var1267, $r2=var605, $z0=var2806, org.apache.ibatis.javassist.compiler.CompileError=var3500, $r3=var74, $r4=var2277, $r6=var2104, $r7=var2082, $r8=var1959, $r9=var1012}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.compiler.MemberCodeGen;	r5 := @parameter0: java.lang.String;	r11 := @parameter1: java.lang.String;	r12 := @parameter2: java.lang.String;	r13 := @parameter3: org.apache.ibatis.javassist.bytecode.MethodInfo;	r1 := @parameter4: org.apache.ibatis.javassist.CtClass;	$r2 = r0.<org.apache.ibatis.javassist.compiler.MemberCodeGen: org.apache.ibatis.javassist.CtClass thisClass>;	$z0 = specialinvoke r0.<org.apache.ibatis.javassist.compiler.MemberCodeGen: boolean isEnclosing(org.apache.ibatis.javassist.CtClass,org.apache.ibatis.javassist.CtClass)>(r1, $r2);	if $z0 == 0 goto $r3 = new org.apache.ibatis.javassist.compiler.CompileError;	$r3 = new org.apache.ibatis.javassist.compiler.CompileError;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Method ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is private");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r3.<org.apache.ibatis.javassist.compiler.CompileError: void <init>(java.lang.String)>($r9);	throw $r3
;block_num 2