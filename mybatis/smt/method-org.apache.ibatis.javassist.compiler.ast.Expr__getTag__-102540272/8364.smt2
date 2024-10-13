(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2982 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/93520901 (var2982) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2982 var2982)
(declare-const var573 var2982) ; Statement: r1 := @this: org.apache.ibatis.javassist.compiler.ast.Expr 
(assert (not (= var573 null-var2982)))
(define-const var3584 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3584)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3584!1 String)
(assert (= var3584!1 ""))
(assert true)
(define-const var422 String (append/672562846 var3584!1 "op:")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("op:") 
(declare-const var3584!2 String)
(assert (= var3584!2 (str.++ var3584!1 "op:")))
(assert true)
(define-const var832 String (getName/93520901 var573)) ; Statement: $r2 = virtualinvoke r1.<org.apache.ibatis.javassist.compiler.ast.Expr: java.lang.String getName()>() 
(assert true)
(define-const var3435 String (append/672562846 var422 var832)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var422!1 String)
(assert (= var422!1 (str.++ var422 var832)))
(assert true)
(define-const var220 String (toString/-2075883882 var3435)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/93520901=([org.apache.ibatis.javassist.compiler.ast.Expr], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2982=org.apache.ibatis.javassist.compiler.ast.Expr, var573=r1, var3584=$r0, var422=$r3, var832=$r2, var3435=$r4, var220=$r5}
; {org.apache.ibatis.javassist.compiler.ast.Expr=var2982, r1=var573, $r0=var3584, $r3=var422, $r2=var832, $r4=var3435, $r5=var220}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.javassist.compiler.ast.Expr;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("op:");	$r2 = virtualinvoke r1.<org.apache.ibatis.javassist.compiler.ast.Expr: java.lang.String getName()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1