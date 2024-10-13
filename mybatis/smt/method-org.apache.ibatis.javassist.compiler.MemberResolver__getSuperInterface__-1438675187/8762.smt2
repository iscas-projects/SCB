(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2479 0)
(declare-sort var2138 0)
(declare-sort var2509 0)
(declare-sort var3101 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3101-init () var3101)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/1611768686 (var2479) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-157978614 (var3101 String) void)
(declare-const null-var2479 var2479)
(declare-const null-String String)
(declare-const null-var2509 var2509)
(declare-const var2126 var2479) ; Statement: r0 := @parameter0: org.apache.ibatis.javassist.CtClass 
(assert (not (= var2126 null-var2479)))
(declare-const var488 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var488 null-String)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1553 var2509) ; Statement: $r13 := @caughtexception 
(assert (not (= var1553 null-var2509)))
(assert true) ; Non Conditional
(define-const var3912 var3101 var3101-init) ; Statement: $r1 = new org.apache.ibatis.javassist.compiler.CompileError 
(define-const var2163 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2163)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2163!1 String)
(assert (= var2163!1 ""))
(assert true)
(define-const var265 String (append/672562846 var2163!1 "cannot find the super interface ")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("cannot find the super interface ") 
(declare-const var2163!2 String)
(assert (= var2163!2 (str.++ var2163!1 "cannot find the super interface ")))
(assert true)
(define-const var2283 String (append/672562846 var265 var488)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var265!1 String)
(assert (= var265!1 (str.++ var265 var488)))
(assert true)
(define-const var1805 String (append/672562846 var2283 " of ")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" of ") 
(declare-const var2283!1 String)
(assert (= var2283!1 (str.++ var2283 " of ")))
(assert true)
(define-const var938 String (getName/1611768686 var2126)) ; Statement: $r6 = virtualinvoke r0.<org.apache.ibatis.javassist.CtClass: java.lang.String getName()>() 
(assert true)
(define-const var3294 String (append/672562846 var1805 var938)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var1805!1 String)
(assert (= var1805!1 (str.++ var1805 var938)))
(assert true)
(define-const var3141 String (toString/-2075883882 var3294)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-157978614 var3912 var3141)) ; Statement: specialinvoke $r1.<org.apache.ibatis.javassist.compiler.CompileError: void <init>(java.lang.String)>($r9) 

(declare-const var3912!1 var3101)
(declare-const var3141!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var3101-init=([], org.apache.ibatis.javassist.compiler.CompileError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/1611768686=([org.apache.ibatis.javassist.CtClass], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-157978614=([org.apache.ibatis.javassist.compiler.CompileError, java.lang.String], void)}
; {var2479=org.apache.ibatis.javassist.CtClass, var2126=r0, var488=r3, var2138=null_type, var2509=org.apache.ibatis.javassist.NotFoundException, var1553=$r13, var3101=org.apache.ibatis.javassist.compiler.CompileError, var3912=$r1, var2163=$r2, var265=$r4, var2283=$r5, var1805=$r7, var938=$r6, var3294=$r8, var3141=$r9}
; {org.apache.ibatis.javassist.CtClass=var2479, r0=var2126, r3=var488, null_type=var2138, org.apache.ibatis.javassist.NotFoundException=var2509, $r13=var1553, org.apache.ibatis.javassist.compiler.CompileError=var3101, $r1=var3912, $r2=var2163, $r4=var265, $r5=var2283, $r7=var1805, $r6=var938, $r8=var3294, $r9=var3141}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: org.apache.ibatis.javassist.CtClass;	r3 := @parameter1: java.lang.String;	$r13 := @caughtexception;	$r1 = new org.apache.ibatis.javassist.compiler.CompileError;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("cannot find the super interface ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" of ");	$r6 = virtualinvoke r0.<org.apache.ibatis.javassist.CtClass: java.lang.String getName()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<org.apache.ibatis.javassist.compiler.CompileError: void <init>(java.lang.String)>($r9);	throw $r1
;block_num 3