(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3236 0)
(declare-sort var2026 0)
(declare-sort var624 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getToken/56168929 (var3236 Int) var2026)
(declare-fun image/-1103324373 (var2026) String)
(declare-fun var624_normalize/-2110565663 () void)
(declare-const null-var3236 var3236)
(declare-const var1694 var3236) ; Statement: r0 := @this: org.javacc.jjtree.JJTreeParser 
(assert (not (= var1694 null-var3236)))
(assert true)
(define-const var1408 var2026 (getToken/56168929 var1694 1)) ; Statement: $r1 = virtualinvoke r0.<org.javacc.jjtree.JJTreeParser: org.javacc.jjtree.Token getToken(int)>(1) 
(define-const var2656 String (image/-1103324373 var1408)) ; Statement: $r2 = $r1.<org.javacc.jjtree.Token: java.lang.String image> 
(assert true)
(define-const var3316 Bool (= var2656 "options")) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>("options") 
 ; Statement: if $z0 == 0 goto staticinvoke <org.javacc.jjtree.JJTreeOptions: void normalize()>() 
(assert (= (ite var3316 1 0) 0)) ; Cond: $z0 == 0 
;(assert var624_normalize/-2110565663) ; Statement: staticinvoke <org.javacc.jjtree.JJTreeOptions: void normalize()>() 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getToken/56168929=([org.javacc.jjtree.JJTreeParser, int], org.javacc.jjtree.Token), image/-1103324373=([org.javacc.jjtree.Token], java.lang.String), var624_normalize/-2110565663=([], void)}
; {var3236=org.javacc.jjtree.JJTreeParser, var1694=r0, var2026=org.javacc.jjtree.Token, var1408=$r1, var2656=$r2, var3316=$z0, var624=org.javacc.parser.Options}
; {org.javacc.jjtree.JJTreeParser=var3236, r0=var1694, org.javacc.jjtree.Token=var2026, $r1=var1408, $r2=var2656, $z0=var3316, org.javacc.parser.Options=var624}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.javacc.jjtree.JJTreeParser;	$r1 = virtualinvoke r0.<org.javacc.jjtree.JJTreeParser: org.javacc.jjtree.Token getToken(int)>(1);	$r2 = $r1.<org.javacc.jjtree.Token: java.lang.String image>;	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>("options");	if $z0 == 0 goto staticinvoke <org.javacc.jjtree.JJTreeOptions: void normalize()>();	staticinvoke <org.javacc.jjtree.JJTreeOptions: void normalize()>();	return
;block_num 2