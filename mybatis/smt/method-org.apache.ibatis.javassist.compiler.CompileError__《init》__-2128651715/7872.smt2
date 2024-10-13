(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var940 0)
(declare-sort var3150 0)
(declare-sort var522 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getMessage/849299655 (var522) String)
(declare-fun cast-from-var3150-to-var522 (var3150) var522)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-157978614 (var940 String) void)
(declare-const null-var940 var940)
(declare-const null-var3150 var3150)
(declare-const var2453 var940) ; Statement: r0 := @this: org.apache.ibatis.javassist.compiler.CompileError 
(assert (not (= var2453 null-var940)))
(declare-const var1165 var3150) ; Statement: r2 := @parameter0: org.apache.ibatis.javassist.NotFoundException 
(assert (not (= var1165 null-var3150)))
(define-const var1362 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1362)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1362!1 String)
(assert (= var1362!1 ""))
(assert true)
(define-const var764 String (append/672562846 var1362!1 "cannot find ")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("cannot find ") 
(declare-const var1362!2 String)
(assert (= var1362!2 (str.++ var1362!1 "cannot find ")))
(assert true)
(define-const var1001 String (getMessage/849299655 (cast-from-var3150-to-var522 var1165))) ; Statement: $r3 = virtualinvoke r2.<org.apache.ibatis.javassist.NotFoundException: java.lang.String getMessage()>() 
(assert true)
(define-const var2148 String (append/672562846 var764 var1001)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var764!1 String)
(assert (= var764!1 (str.++ var764 var1001)))
(assert true)
(define-const var2479 String (toString/-2075883882 var2148)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-157978614 var2453 var2479)) ; Statement: specialinvoke r0.<org.apache.ibatis.javassist.compiler.CompileError: void <init>(java.lang.String)>($r6) 

(declare-const var2453!1 var940)
(declare-const var2479!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var3150-to-var522=([org.apache.ibatis.javassist.NotFoundException], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-157978614=([org.apache.ibatis.javassist.compiler.CompileError, java.lang.String], void)}
; {var940=org.apache.ibatis.javassist.compiler.CompileError, var2453=r0, var3150=org.apache.ibatis.javassist.NotFoundException, var1165=r2, var1362=$r1, var764=$r4, var522=java.lang.Throwable, var1001=$r3, var2148=$r5, var2479=$r6}
; {org.apache.ibatis.javassist.compiler.CompileError=var940, r0=var2453, org.apache.ibatis.javassist.NotFoundException=var3150, r2=var1165, $r1=var1362, $r4=var764, java.lang.Throwable=var522, $r3=var1001, $r5=var2148, $r6=var2479}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.compiler.CompileError;	r2 := @parameter0: org.apache.ibatis.javassist.NotFoundException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("cannot find ");	$r3 = virtualinvoke r2.<org.apache.ibatis.javassist.NotFoundException: java.lang.String getMessage()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<org.apache.ibatis.javassist.compiler.CompileError: void <init>(java.lang.String)>($r6);	return
;block_num 1