(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2884 0)
(declare-sort var1787 0)
(declare-sort var397 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun error/2113923355 (var397 String) void)
(declare-fun cast-from-var2884-to-var397 (var2884) var397)
(declare-const null-var2884 var2884)
(declare-const null-ClassObject ClassObject)
(declare-const null-var1787 var1787)
(declare-const var2197 var2884) ; Statement: r3 := @this: org.hibernate.hql.internal.ast.SqlASTFactory 
(assert (not (= var2197 null-var2884)))
(declare-const var1808 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var1808 null-ClassObject)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3619 var1787) ; Statement: $r4 := @caughtexception 
(assert (not (= var3619 null-var1787)))
(define-const var1064 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1064)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1064!1 String)
(assert (= var1064!1 ""))
(assert true)
(define-const var3924 String (append/672562846 var1064!1 "Can\u0027t create AST Node ")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Can\'t create AST Node ") 
(declare-const var1064!2 String)
(assert (= var1064!2 (str.++ var1064!1 "Can\u0027t create AST Node ")))
(assert true)
(define-const var1172 String (getName/-1958580599 var1808)) ; Statement: $r6 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2829 String (append/672562846 var3924 var1172)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var3924!1 String)
(assert (= var3924!1 (str.++ var3924 var1172)))
(assert true)
(define-const var3860 String (toString/-2075883882 var2829)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (error/2113923355 (cast-from-var2884-to-var397 var2197) var3860)) ; Statement: virtualinvoke r3.<org.hibernate.hql.internal.ast.SqlASTFactory: void error(java.lang.String)>($r9) 

(declare-const var2197!1 var2884)
(declare-const var3860!1 String)
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), error/2113923355=([antlr.ASTFactory, java.lang.String], void), cast-from-var2884-to-var397=([org.hibernate.hql.internal.ast.SqlASTFactory], antlr.ASTFactory)}
; {var2884=org.hibernate.hql.internal.ast.SqlASTFactory, var2197=r3, var1808=r0, var1787=java.lang.Exception, var3619=$r4, var1064=$r5, var3924=$r7, var1172=$r6, var2829=$r8, var3860=$r9, var397=antlr.ASTFactory}
; {org.hibernate.hql.internal.ast.SqlASTFactory=var2884, r3=var2197, r0=var1808, java.lang.Exception=var1787, $r4=var3619, $r5=var1064, $r7=var3924, $r6=var1172, $r8=var2829, $r9=var3860, antlr.ASTFactory=var397}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: org.hibernate.hql.internal.ast.SqlASTFactory;	r0 := @parameter0: java.lang.Class;	$r4 := @caughtexception;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Can\'t create AST Node ");	$r6 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r3.<org.hibernate.hql.internal.ast.SqlASTFactory: void error(java.lang.String)>($r9);	return null
;block_num 2