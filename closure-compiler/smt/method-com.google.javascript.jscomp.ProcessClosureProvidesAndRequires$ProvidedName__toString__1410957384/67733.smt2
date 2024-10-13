(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1295 0)
(declare-sort var3581 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isExplicitlyProvided/2037225669 (var1295) Bool)
(declare-fun arr-var3581-init () (Array Int var3581))
(declare-fun namespace/977910952 (var1295) String)
(declare-fun cast-from-String-to-var3581 (String) var3581)
(declare-fun String_format/1339386452 (String (Array Int var3581)) String)
(declare-const null-var1295 var1295)
(declare-const null-__Array__Int__var3581__ (Array Int var3581))
(declare-const var2163 var1295) ; Statement: r0 := @this: com.google.javascript.jscomp.ProcessClosureProvidesAndRequires$ProvidedName 
(assert (not (= var2163 null-var1295)))
(assert true)
(define-const var1523 Bool (isExplicitlyProvided/2037225669 var2163)) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.jscomp.ProcessClosureProvidesAndRequires$ProvidedName: boolean isExplicitlyProvided()>() 
 ; Statement: if $z0 == 0 goto $r4 = "implicit" 
(assert (not (= (ite var1523 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2298 String "explicit") ; Statement: $r4 = "explicit" 
 ; Statement: goto [?= $r1 = newarray (java.lang.Object)[2]] 
(assert true) ; Non Conditional
(define-const var2559 (Array Int var3581) arr-var3581-init) ; Statement: $r1 = newarray (java.lang.Object)[2] 
(define-const var1743 String (namespace/977910952 var2163)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.ProcessClosureProvidesAndRequires$ProvidedName: java.lang.String namespace> 
(declare-const var2559!1 (Array Int var3581))
(assert (not (= var2559!1 null-__Array__Int__var3581__)))
(assert (= (select var2559!1 0) (cast-from-String-to-var3581 var1743))) ; Statement: $r1[0] = $r2 
(declare-const var2559!2 (Array Int var3581))
(assert (not (= var2559!2 null-__Array__Int__var3581__)))
(assert (= (select var2559!2 1) (cast-from-String-to-var3581 var2298))) ; Statement: $r1[1] = $r4 
(define-const var3160 String (String_format/1339386452 "ProvidedName: %s, %s" var2559!2)) ; Statement: $r3 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("ProvidedName: %s, %s", $r1) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {isExplicitlyProvided/2037225669=([com.google.javascript.jscomp.ProcessClosureProvidesAndRequires$ProvidedName], boolean), arr-var3581-init=([], java.lang.Object[]), namespace/977910952=([com.google.javascript.jscomp.ProcessClosureProvidesAndRequires$ProvidedName], java.lang.String), cast-from-String-to-var3581=([java.lang.String], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var1295=com.google.javascript.jscomp.ProcessClosureProvidesAndRequires$ProvidedName, var2163=r0, var1523=$z0, var2298=$r4, var3581=java.lang.Object, var2559=$r1, var1743=$r2, var3160=$r3}
; {com.google.javascript.jscomp.ProcessClosureProvidesAndRequires$ProvidedName=var1295, r0=var2163, $z0=var1523, $r4=var2298, java.lang.Object=var3581, $r1=var2559, $r2=var1743, $r3=var3160}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.ProcessClosureProvidesAndRequires$ProvidedName;	$z0 = virtualinvoke r0.<com.google.javascript.jscomp.ProcessClosureProvidesAndRequires$ProvidedName: boolean isExplicitlyProvided()>();	if $z0 == 0 goto $r4 = "implicit";	$r4 = "explicit";	goto [?= $r1 = newarray (java.lang.Object)[2]];	$r1 = newarray (java.lang.Object)[2];	$r2 = r0.<com.google.javascript.jscomp.ProcessClosureProvidesAndRequires$ProvidedName: java.lang.String namespace>;	$r1[0] = $r2;	$r1[1] = $r4;	$r3 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("ProvidedName: %s, %s", $r1);	return $r3
;block_num 3