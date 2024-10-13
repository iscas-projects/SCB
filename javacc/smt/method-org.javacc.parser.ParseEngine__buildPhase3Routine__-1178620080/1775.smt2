(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var343 0)
(declare-sort var3518 0)
(declare-sort var1553 0)
(declare-sort var1916 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun exp/36539919 (var3518) var1553)
(declare-fun internal_name/-1632124174 (var1553) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-var343 var343)
(declare-const null-var3518 var3518)
(declare-const null-Bool Bool)
(declare-const null-var1916 var1916)
(declare-const var2111 var343) ; Statement: r3 := @this: org.javacc.parser.ParseEngine 
(assert (not (= var2111 null-var343)))
(declare-const var2482 var3518) ; Statement: r0 := @parameter0: org.javacc.parser.Phase3Data 
(assert (not (= var2482 null-var3518)))
(declare-const var3559 Bool) ; Statement: z1 := @parameter1: boolean 
(assert (not (= var3559 null-Bool)))
(define-const var3065 var1553 (exp/36539919 var2482)) ; Statement: r1 = r0.<org.javacc.parser.Phase3Data: org.javacc.parser.Expansion exp> 
(define-const var1105 var1916 null-var1916) ; Statement: r258 = null 
(define-const var1023 String (internal_name/-1632124174 var3065)) ; Statement: $r2 = r1.<org.javacc.parser.Expansion: java.lang.String internal_name> 
(assert true)
(define-const var3115 Bool (startsWith/-1785782452 var1023 "jj_scan_token")) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean startsWith(java.lang.String)>("jj_scan_token") 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (not (= (ite var3115 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {exp/36539919=([org.javacc.parser.Phase3Data], org.javacc.parser.Expansion), internal_name/-1632124174=([org.javacc.parser.Expansion], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var343=org.javacc.parser.ParseEngine, var2111=r3, var3518=org.javacc.parser.Phase3Data, var2482=r0, var3559=z1, var1553=org.javacc.parser.Expansion, var3065=r1, var1916=org.javacc.parser.Token, var1105=r258, var1023=$r2, var3115=$z0}
; {org.javacc.parser.ParseEngine=var343, r3=var2111, org.javacc.parser.Phase3Data=var3518, r0=var2482, z1=var3559, org.javacc.parser.Expansion=var1553, r1=var3065, org.javacc.parser.Token=var1916, r258=var1105, $r2=var1023, $z0=var3115}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r3 := @this: org.javacc.parser.ParseEngine;	r0 := @parameter0: org.javacc.parser.Phase3Data;	z1 := @parameter1: boolean;	r1 = r0.<org.javacc.parser.Phase3Data: org.javacc.parser.Expansion exp>;	r258 = null;	$r2 = r1.<org.javacc.parser.Expansion: java.lang.String internal_name>;	$z0 = virtualinvoke $r2.<java.lang.String: boolean startsWith(java.lang.String)>("jj_scan_token");	if $z0 == 0 goto (branch);	return
;block_num 2