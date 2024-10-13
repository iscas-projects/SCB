(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1923 0)
(declare-sort var3060 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var3060) void)
(declare-fun cast-from-var1923-to-var3060 (var1923) var3060)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun buffer/2037234668 (var1923) String)
(declare-const null-var1923 var1923)
(declare-const var1624 var1923) ; Statement: r0 := @this: org.hibernate.sql.DisjunctionFragment 
(assert (not (= var1624 null-var1923)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var1923-to-var3060 var1624))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var1624!1 var1923)
(define-const var2635 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2635)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2635!1 String)
(assert (= var2635!1 ""))
(declare-const var1624!2 var1923)
(assert (not (= var1624!2 null-var1923)))
(assert (= (buffer/2037234668 var1624!2) var2635!1)) ; Statement: r0.<org.hibernate.sql.DisjunctionFragment: java.lang.StringBuilder buffer> = $r1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var1923-to-var3060=([org.hibernate.sql.DisjunctionFragment], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), buffer/2037234668=([org.hibernate.sql.DisjunctionFragment], java.lang.StringBuilder)}
; {var1923=org.hibernate.sql.DisjunctionFragment, var1624=r0, var3060=java.lang.Object, var2635=$r1}
; {org.hibernate.sql.DisjunctionFragment=var1923, r0=var1624, java.lang.Object=var3060, $r1=var2635}
;seq <java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1}
;stmts r0 := @this: org.hibernate.sql.DisjunctionFragment;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	r0.<org.hibernate.sql.DisjunctionFragment: java.lang.StringBuilder buffer> = $r1;	return
;block_num 1