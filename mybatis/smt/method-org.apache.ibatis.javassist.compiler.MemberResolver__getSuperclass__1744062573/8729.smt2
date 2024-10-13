(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1673 0)
(declare-sort var1858 0)
(declare-sort var924 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var924-init () var924)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/1611768686 (var1673) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-157978614 (var924 String) void)
(declare-const null-var1673 var1673)
(declare-const null-var1858 var1858)
(declare-const var411 var1673) ; Statement: r0 := @parameter0: org.apache.ibatis.javassist.CtClass 
(assert (not (= var411 null-var1673)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3529 var1858) ; Statement: $r7 := @caughtexception 
(assert (not (= var3529 null-var1858)))
(assert true) ; Non Conditional
(define-const var33 var924 var924-init) ; Statement: $r1 = new org.apache.ibatis.javassist.compiler.CompileError 
(define-const var150 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var150)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var150!1 String)
(assert (= var150!1 ""))
(assert true)
(define-const var3023 String (append/672562846 var150!1 "cannot find the super class of ")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("cannot find the super class of ") 
(declare-const var150!2 String)
(assert (= var150!2 (str.++ var150!1 "cannot find the super class of ")))
(assert true)
(define-const var387 String (getName/1611768686 var411)) ; Statement: $r3 = virtualinvoke r0.<org.apache.ibatis.javassist.CtClass: java.lang.String getName()>() 
(assert true)
(define-const var2897 String (append/672562846 var3023 var387)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3023!1 String)
(assert (= var3023!1 (str.++ var3023 var387)))
(assert true)
(define-const var3935 String (toString/-2075883882 var2897)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-157978614 var33 var3935)) ; Statement: specialinvoke $r1.<org.apache.ibatis.javassist.compiler.CompileError: void <init>(java.lang.String)>($r6) 

(declare-const var33!1 var924)
(declare-const var3935!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var924-init=([], org.apache.ibatis.javassist.compiler.CompileError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/1611768686=([org.apache.ibatis.javassist.CtClass], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-157978614=([org.apache.ibatis.javassist.compiler.CompileError, java.lang.String], void)}
; {var1673=org.apache.ibatis.javassist.CtClass, var411=r0, var1858=org.apache.ibatis.javassist.NotFoundException, var3529=$r7, var924=org.apache.ibatis.javassist.compiler.CompileError, var33=$r1, var150=$r2, var3023=$r4, var387=$r3, var2897=$r5, var3935=$r6}
; {org.apache.ibatis.javassist.CtClass=var1673, r0=var411, org.apache.ibatis.javassist.NotFoundException=var1858, $r7=var3529, org.apache.ibatis.javassist.compiler.CompileError=var924, $r1=var33, $r2=var150, $r4=var3023, $r3=var387, $r5=var2897, $r6=var3935}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: org.apache.ibatis.javassist.CtClass;	$r7 := @caughtexception;	$r1 = new org.apache.ibatis.javassist.compiler.CompileError;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("cannot find the super class of ");	$r3 = virtualinvoke r0.<org.apache.ibatis.javassist.CtClass: java.lang.String getName()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<org.apache.ibatis.javassist.compiler.CompileError: void <init>(java.lang.String)>($r6);	throw $r1
;block_num 3