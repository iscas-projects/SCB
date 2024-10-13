(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var549 0)
(declare-sort var627 0)
(declare-sort var1090 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getToken/1999213251 (var549 Int) var627)
(declare-fun image/197050796 (var627) String)
(declare-fun var1090_normalize/-2110565663 () void)
(declare-const null-var549 var549)
(declare-const var2305 var549) ; Statement: r0 := @this: org.javacc.parser.JavaCCParser 
(assert (not (= var2305 null-var549)))
(assert true)
(define-const var3920 var627 (getToken/1999213251 var2305 1)) ; Statement: $r1 = virtualinvoke r0.<org.javacc.parser.JavaCCParser: org.javacc.parser.Token getToken(int)>(1) 
(define-const var3364 String (image/197050796 var3920)) ; Statement: $r2 = $r1.<org.javacc.parser.Token: java.lang.String image> 
(assert true)
(define-const var2854 Bool (= var3364 "options")) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>("options") 
 ; Statement: if $z0 == 0 goto staticinvoke <org.javacc.parser.Options: void normalize()>() 
(assert (= (ite var2854 1 0) 0)) ; Cond: $z0 == 0 
;(assert var1090_normalize/-2110565663) ; Statement: staticinvoke <org.javacc.parser.Options: void normalize()>() 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getToken/1999213251=([org.javacc.parser.JavaCCParser, int], org.javacc.parser.Token), image/197050796=([org.javacc.parser.Token], java.lang.String), var1090_normalize/-2110565663=([], void)}
; {var549=org.javacc.parser.JavaCCParser, var2305=r0, var627=org.javacc.parser.Token, var3920=$r1, var3364=$r2, var2854=$z0, var1090=org.javacc.parser.Options}
; {org.javacc.parser.JavaCCParser=var549, r0=var2305, org.javacc.parser.Token=var627, $r1=var3920, $r2=var3364, $z0=var2854, org.javacc.parser.Options=var1090}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.javacc.parser.JavaCCParser;	$r1 = virtualinvoke r0.<org.javacc.parser.JavaCCParser: org.javacc.parser.Token getToken(int)>(1);	$r2 = $r1.<org.javacc.parser.Token: java.lang.String image>;	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>("options");	if $z0 == 0 goto staticinvoke <org.javacc.parser.Options: void normalize()>();	staticinvoke <org.javacc.parser.Options: void normalize()>();	return
;block_num 2