(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2322 0)
(declare-sort var1895 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/93520901 (var2322) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1895-init () var1895)
(declare-fun <init>/-157978614 (var1895 String) void)
(declare-const null-var2322 var2322)
(declare-const var3927 var2322) ; Statement: r0 := @parameter0: org.apache.ibatis.javassist.compiler.ast.Expr 
(assert (not (= var3927 null-var2322)))
 ; Statement: if r0 != null goto $r1 = new java.lang.StringBuilder 
(assert (not (= var3927 null-var2322))) ; Cond: r0 != null 
(define-const var3157 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3157)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3157!1 String)
(assert (= var3157!1 ""))
(assert true)
(define-const var1565 String (append/672562846 var3157!1 "incompatible type for ")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("incompatible type for ") 
(declare-const var3157!2 String)
(assert (= var3157!2 (str.++ var3157!1 "incompatible type for ")))
(assert true)
(define-const var862 String (getName/93520901 var3927)) ; Statement: $r2 = virtualinvoke r0.<org.apache.ibatis.javassist.compiler.ast.Expr: java.lang.String getName()>() 
(assert true)
(define-const var2439 String (append/672562846 var1565 var862)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1565!1 String)
(assert (= var1565!1 (str.++ var1565 var862)))
(assert true)
(define-const var3940 String (toString/-2075883882 var2439)) ; Statement: r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var3878 var1895 var1895-init) ; Statement: $r5 = new org.apache.ibatis.javassist.compiler.CompileError 
(assert true)
;(assert (<init>/-157978614 var3878 var3940)) ; Statement: specialinvoke $r5.<org.apache.ibatis.javassist.compiler.CompileError: void <init>(java.lang.String)>(r6) 

(declare-const var3878!1 var1895)
(declare-const var3940!1 String)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/93520901=([org.apache.ibatis.javassist.compiler.ast.Expr], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1895-init=([], org.apache.ibatis.javassist.compiler.CompileError), <init>/-157978614=([org.apache.ibatis.javassist.compiler.CompileError, java.lang.String], void)}
; {var2322=org.apache.ibatis.javassist.compiler.ast.Expr, var3927=r0, var3157=$r1, var1565=$r3, var862=$r2, var2439=$r4, var3940=r6, var1895=org.apache.ibatis.javassist.compiler.CompileError, var3878=$r5}
; {org.apache.ibatis.javassist.compiler.ast.Expr=var2322, r0=var3927, $r1=var3157, $r3=var1565, $r2=var862, $r4=var2439, r6=var3940, org.apache.ibatis.javassist.compiler.CompileError=var1895, $r5=var3878}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: org.apache.ibatis.javassist.compiler.ast.Expr;	if r0 != null goto $r1 = new java.lang.StringBuilder;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("incompatible type for ");	$r2 = virtualinvoke r0.<org.apache.ibatis.javassist.compiler.ast.Expr: java.lang.String getName()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	$r5 = new org.apache.ibatis.javassist.compiler.CompileError;	specialinvoke $r5.<org.apache.ibatis.javassist.compiler.CompileError: void <init>(java.lang.String)>(r6);	throw $r5
;block_num 3