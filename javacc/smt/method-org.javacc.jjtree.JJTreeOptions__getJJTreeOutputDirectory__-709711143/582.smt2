(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2462 0)
(declare-sort var354 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2462_stringValue/-689356382 (String) String)
(declare-fun var354-init () var354)
(declare-fun <init>/-1681595970 (var354 String) void)
(define-const var2526 String (var2462_stringValue/-689356382 "JJTREE_OUTPUT_DIRECTORY")) ; Statement: r0 = staticinvoke <org.javacc.jjtree.JJTreeOptions: java.lang.String stringValue(java.lang.String)>("JJTREE_OUTPUT_DIRECTORY") 
(define-const var3569 String "") ; Statement: $r1 = "" 
(assert true)
(define-const var3153 Bool (= var3569 var2526)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 == 0 goto $r2 = new java.io.File 
(assert (= (ite var3153 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2341 var354 var354-init) ; Statement: $r2 = new java.io.File 
(assert true)
;(assert (<init>/-1681595970 var2341 var2526)) ; Statement: specialinvoke $r2.<java.io.File: void <init>(java.lang.String)>(r0) 

(declare-const var2341!1 var354)
(declare-const var2526!1 String)
(define-const var2763 var354 var2341!1) ; Statement: r3 = $r2 
(assert true) ; Non Conditional
 ; Statement: return r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var2462_stringValue/-689356382=([java.lang.String], java.lang.String), var354-init=([], java.io.File), <init>/-1681595970=([java.io.File, java.lang.String], void)}
; {var2462=org.javacc.parser.Options, var2526=r0, var3569=$r1, var3153=$z0, var354=java.io.File, var2341=$r2, var2763=r3}
; {org.javacc.parser.Options=var2462, r0=var2526, $r1=var3569, $z0=var3153, java.io.File=var354, $r2=var2341, r3=var2763}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 = staticinvoke <org.javacc.jjtree.JJTreeOptions: java.lang.String stringValue(java.lang.String)>("JJTREE_OUTPUT_DIRECTORY");	$r1 = "";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 == 0 goto $r2 = new java.io.File;	$r2 = new java.io.File;	specialinvoke $r2.<java.io.File: void <init>(java.lang.String)>(r0);	r3 = $r2;	return r3
;block_num 3