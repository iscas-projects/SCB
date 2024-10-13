(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1159 0)
(declare-sort var403 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var403-init () var403)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/93520901 (var1159) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-157978614 (var403 String) void)
(declare-const null-var1159 var1159)
(declare-const var1236 var1159) ; Statement: r2 := @parameter0: org.apache.ibatis.javassist.compiler.ast.Expr 
(assert (not (= var1236 null-var1159)))
(define-const var1887 var403 var403-init) ; Statement: $r0 = new org.apache.ibatis.javassist.compiler.CompileError 
(define-const var3309 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3309)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3309!1 String)
(assert (= var3309!1 ""))
(assert true)
(define-const var3029 String (append/672562846 var3309!1 "invalid type for ")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("invalid type for ") 
(declare-const var3309!2 String)
(assert (= var3309!2 (str.++ var3309!1 "invalid type for ")))
(assert true)
(define-const var1604 String (getName/93520901 var1236)) ; Statement: $r3 = virtualinvoke r2.<org.apache.ibatis.javassist.compiler.ast.Expr: java.lang.String getName()>() 
(assert true)
(define-const var341 String (append/672562846 var3029 var1604)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3029!1 String)
(assert (= var3029!1 (str.++ var3029 var1604)))
(assert true)
(define-const var3717 String (toString/-2075883882 var341)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-157978614 var1887 var3717)) ; Statement: specialinvoke $r0.<org.apache.ibatis.javassist.compiler.CompileError: void <init>(java.lang.String)>($r6) 

(declare-const var1887!1 var403)
(declare-const var3717!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var403-init=([], org.apache.ibatis.javassist.compiler.CompileError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/93520901=([org.apache.ibatis.javassist.compiler.ast.Expr], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-157978614=([org.apache.ibatis.javassist.compiler.CompileError, java.lang.String], void)}
; {var1159=org.apache.ibatis.javassist.compiler.ast.Expr, var1236=r2, var403=org.apache.ibatis.javassist.compiler.CompileError, var1887=$r0, var3309=$r1, var3029=$r4, var1604=$r3, var341=$r5, var3717=$r6}
; {org.apache.ibatis.javassist.compiler.ast.Expr=var1159, r2=var1236, org.apache.ibatis.javassist.compiler.CompileError=var403, $r0=var1887, $r1=var3309, $r4=var3029, $r3=var1604, $r5=var341, $r6=var3717}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @parameter0: org.apache.ibatis.javassist.compiler.ast.Expr;	$r0 = new org.apache.ibatis.javassist.compiler.CompileError;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("invalid type for ");	$r3 = virtualinvoke r2.<org.apache.ibatis.javassist.compiler.ast.Expr: java.lang.String getName()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<org.apache.ibatis.javassist.compiler.CompileError: void <init>(java.lang.String)>($r6);	throw $r0
;block_num 1