(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3887 0)
(declare-sort var1537 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1537-init () var1537)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/93520901 (var3887) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-157978614 (var1537 String) void)
(declare-const null-var3887 var3887)
(declare-const var1574 var3887) ; Statement: r2 := @parameter0: org.apache.ibatis.javassist.compiler.ast.Expr 
(assert (not (= var1574 null-var3887)))
(define-const var3707 var1537 var1537-init) ; Statement: $r0 = new org.apache.ibatis.javassist.compiler.CompileError 
(define-const var2835 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2835)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2835!1 String)
(assert (= var2835!1 ""))
(assert true)
(define-const var1246 String (append/672562846 var2835!1 "invalid types for ")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("invalid types for ") 
(declare-const var2835!2 String)
(assert (= var2835!2 (str.++ var2835!1 "invalid types for ")))
(assert true)
(define-const var1770 String (getName/93520901 var1574)) ; Statement: $r3 = virtualinvoke r2.<org.apache.ibatis.javassist.compiler.ast.Expr: java.lang.String getName()>() 
(assert true)
(define-const var587 String (append/672562846 var1246 var1770)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1246!1 String)
(assert (= var1246!1 (str.++ var1246 var1770)))
(assert true)
(define-const var3336 String (toString/-2075883882 var587)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-157978614 var3707 var3336)) ; Statement: specialinvoke $r0.<org.apache.ibatis.javassist.compiler.CompileError: void <init>(java.lang.String)>($r6) 

(declare-const var3707!1 var1537)
(declare-const var3336!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1537-init=([], org.apache.ibatis.javassist.compiler.CompileError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/93520901=([org.apache.ibatis.javassist.compiler.ast.Expr], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-157978614=([org.apache.ibatis.javassist.compiler.CompileError, java.lang.String], void)}
; {var3887=org.apache.ibatis.javassist.compiler.ast.Expr, var1574=r2, var1537=org.apache.ibatis.javassist.compiler.CompileError, var3707=$r0, var2835=$r1, var1246=$r4, var1770=$r3, var587=$r5, var3336=$r6}
; {org.apache.ibatis.javassist.compiler.ast.Expr=var3887, r2=var1574, org.apache.ibatis.javassist.compiler.CompileError=var1537, $r0=var3707, $r1=var2835, $r4=var1246, $r3=var1770, $r5=var587, $r6=var3336}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @parameter0: org.apache.ibatis.javassist.compiler.ast.Expr;	$r0 = new org.apache.ibatis.javassist.compiler.CompileError;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("invalid types for ");	$r3 = virtualinvoke r2.<org.apache.ibatis.javassist.compiler.ast.Expr: java.lang.String getName()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<org.apache.ibatis.javassist.compiler.CompileError: void <init>(java.lang.String)>($r6);	throw $r0
;block_num 1