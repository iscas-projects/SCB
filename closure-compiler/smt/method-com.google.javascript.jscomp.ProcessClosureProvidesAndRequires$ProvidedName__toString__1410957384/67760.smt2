(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var916 0)
(declare-sort var3595 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isExplicitlyProvided/2037225669 (var916) Bool)
(declare-fun arr-var3595-init () (Array Int var3595))
(declare-fun namespace/977910952 (var916) String)
(declare-fun cast-from-String-to-var3595 (String) var3595)
(declare-fun String_format/1339386452 (String (Array Int var3595)) String)
(declare-const null-var916 var916)
(declare-const null-__Array__Int__var3595__ (Array Int var3595))
(declare-const var3350 var916) ; Statement: r0 := @this: com.google.javascript.jscomp.ProcessClosureProvidesAndRequires$ProvidedName 
(assert (not (= var3350 null-var916)))
(assert true)
(define-const var745 Bool (isExplicitlyProvided/2037225669 var3350)) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.jscomp.ProcessClosureProvidesAndRequires$ProvidedName: boolean isExplicitlyProvided()>() 
 ; Statement: if $z0 == 0 goto $r4 = "implicit" 
(assert (= (ite var745 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3711 String "implicit") ; Statement: $r4 = "implicit" 
(assert true) ; Non Conditional
(define-const var891 (Array Int var3595) arr-var3595-init) ; Statement: $r1 = newarray (java.lang.Object)[2] 
(define-const var2019 String (namespace/977910952 var3350)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.ProcessClosureProvidesAndRequires$ProvidedName: java.lang.String namespace> 
(declare-const var891!1 (Array Int var3595))
(assert (not (= var891!1 null-__Array__Int__var3595__)))
(assert (= (select var891!1 0) (cast-from-String-to-var3595 var2019))) ; Statement: $r1[0] = $r2 
(declare-const var891!2 (Array Int var3595))
(assert (not (= var891!2 null-__Array__Int__var3595__)))
(assert (= (select var891!2 1) (cast-from-String-to-var3595 var3711))) ; Statement: $r1[1] = $r4 
(define-const var400 String (String_format/1339386452 "ProvidedName: %s, %s" var891!2)) ; Statement: $r3 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("ProvidedName: %s, %s", $r1) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {isExplicitlyProvided/2037225669=([com.google.javascript.jscomp.ProcessClosureProvidesAndRequires$ProvidedName], boolean), arr-var3595-init=([], java.lang.Object[]), namespace/977910952=([com.google.javascript.jscomp.ProcessClosureProvidesAndRequires$ProvidedName], java.lang.String), cast-from-String-to-var3595=([java.lang.String], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var916=com.google.javascript.jscomp.ProcessClosureProvidesAndRequires$ProvidedName, var3350=r0, var745=$z0, var3711=$r4, var3595=java.lang.Object, var891=$r1, var2019=$r2, var400=$r3}
; {com.google.javascript.jscomp.ProcessClosureProvidesAndRequires$ProvidedName=var916, r0=var3350, $z0=var745, $r4=var3711, java.lang.Object=var3595, $r1=var891, $r2=var2019, $r3=var400}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.ProcessClosureProvidesAndRequires$ProvidedName;	$z0 = virtualinvoke r0.<com.google.javascript.jscomp.ProcessClosureProvidesAndRequires$ProvidedName: boolean isExplicitlyProvided()>();	if $z0 == 0 goto $r4 = "implicit";	$r4 = "implicit";	$r1 = newarray (java.lang.Object)[2];	$r2 = r0.<com.google.javascript.jscomp.ProcessClosureProvidesAndRequires$ProvidedName: java.lang.String namespace>;	$r1[0] = $r2;	$r1[1] = $r4;	$r3 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("ProvidedName: %s, %s", $r1);	return $r3
;block_num 3