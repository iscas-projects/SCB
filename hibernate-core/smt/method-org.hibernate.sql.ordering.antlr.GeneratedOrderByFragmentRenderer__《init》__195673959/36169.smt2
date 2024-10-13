(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var75 0)
(declare-sort var631 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-538363553 (var631) void)
(declare-fun cast-from-var75-to-var631 (var75) var631)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun buffer/1323243358 (var75) String)
(declare-fun tokenNames/-774545314 (var631) (Array Int String))
(declare-const null-var75 var75)
(declare-const var75-_tokenNames (Array Int String))
(declare-const var3856 var75) ; Statement: r0 := @this: org.hibernate.sql.ordering.antlr.GeneratedOrderByFragmentRenderer 
(assert (not (= var3856 null-var75)))
(assert true)
;(assert (<init>/-538363553 (cast-from-var75-to-var631 var3856))) ; Statement: specialinvoke r0.<antlr.TreeParser: void <init>()>() 

(declare-const var3856!1 var75)
(define-const var3595 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3595)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3595!1 String)
(assert (= var3595!1 ""))
(declare-const var3856!2 var75)
(assert (not (= var3856!2 null-var75)))
(assert (= (buffer/1323243358 var3856!2) var3595!1)) ; Statement: r0.<org.hibernate.sql.ordering.antlr.GeneratedOrderByFragmentRenderer: java.lang.StringBuilder buffer> = $r1 
(define-const var1600 (Array Int String) var75-_tokenNames) ; Statement: $r2 = <org.hibernate.sql.ordering.antlr.GeneratedOrderByFragmentRenderer: java.lang.String[] _tokenNames> 
(declare-const var3856!3 var75)
(assert (not (= var3856!3 null-var75)))
(assert (= (tokenNames/-774545314 (cast-from-var75-to-var631 var3856!3)) var1600)) ; Statement: r0.<org.hibernate.sql.ordering.antlr.GeneratedOrderByFragmentRenderer: java.lang.String[] tokenNames> = $r2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-538363553=([antlr.TreeParser], void), cast-from-var75-to-var631=([org.hibernate.sql.ordering.antlr.GeneratedOrderByFragmentRenderer], antlr.TreeParser), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), buffer/1323243358=([org.hibernate.sql.ordering.antlr.GeneratedOrderByFragmentRenderer], java.lang.StringBuilder), tokenNames/-774545314=([antlr.TreeParser], java.lang.String[])}
; {var75=org.hibernate.sql.ordering.antlr.GeneratedOrderByFragmentRenderer, var3856=r0, var631=antlr.TreeParser, var3595=$r1, var1600=$r2}
; {org.hibernate.sql.ordering.antlr.GeneratedOrderByFragmentRenderer=var75, r0=var3856, antlr.TreeParser=var631, $r1=var3595, $r2=var1600}
;seq <java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1}
;stmts r0 := @this: org.hibernate.sql.ordering.antlr.GeneratedOrderByFragmentRenderer;	specialinvoke r0.<antlr.TreeParser: void <init>()>();	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	r0.<org.hibernate.sql.ordering.antlr.GeneratedOrderByFragmentRenderer: java.lang.StringBuilder buffer> = $r1;	$r2 = <org.hibernate.sql.ordering.antlr.GeneratedOrderByFragmentRenderer: java.lang.String[] _tokenNames>;	r0.<org.hibernate.sql.ordering.antlr.GeneratedOrderByFragmentRenderer: java.lang.String[] tokenNames> = $r2;	return
;block_num 1