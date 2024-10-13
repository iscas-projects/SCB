(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3126 0)
(declare-sort var2394 0)
(declare-sort var671 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun completeVersion/-1415987833 (var3126) String)
(declare-fun arr-var671-init () (Array Int var671))
(declare-fun major/-1415987833 (var3126) Int)
(declare-fun cast-from-Int-to-var671 (Int) var671)
(declare-fun minor/-1415987833 (var3126) Int)
(declare-fun subminor/-1415987833 (var3126) Int)
(declare-fun String_format/1339386452 (String (Array Int var671)) String)
(declare-const null-var3126 var3126)
(declare-const null-String String)
(declare-const null-__Array__Int__var671__ (Array Int var671))
(declare-const var848 var3126) ; Statement: r0 := @this: com.mysql.cj.ServerVersion 
(assert (not (= var848 null-var3126)))
(define-const var2067 String (completeVersion/-1415987833 var848)) ; Statement: $r1 = r0.<com.mysql.cj.ServerVersion: java.lang.String completeVersion> 
 ; Statement: if $r1 == null goto $r2 = newarray (java.lang.Object)[3] 
(assert (= var2067 null-String)) ; Cond: $r1 == null 
(define-const var3913 (Array Int var671) arr-var671-init) ; Statement: $r2 = newarray (java.lang.Object)[3] 
(define-const var3090 Int (major/-1415987833 var848)) ; Statement: $r3 = r0.<com.mysql.cj.ServerVersion: java.lang.Integer major> 
(declare-const var3913!1 (Array Int var671))
(assert (not (= var3913!1 null-__Array__Int__var671__)))
(assert (= (select var3913!1 0) (cast-from-Int-to-var671 var3090))) ; Statement: $r2[0] = $r3 
(define-const var485 Int (minor/-1415987833 var848)) ; Statement: $r4 = r0.<com.mysql.cj.ServerVersion: java.lang.Integer minor> 
(declare-const var3913!2 (Array Int var671))
(assert (not (= var3913!2 null-__Array__Int__var671__)))
(assert (= (select var3913!2 1) (cast-from-Int-to-var671 var485))) ; Statement: $r2[1] = $r4 
(define-const var1426 Int (subminor/-1415987833 var848)) ; Statement: $r5 = r0.<com.mysql.cj.ServerVersion: java.lang.Integer subminor> 
(declare-const var3913!3 (Array Int var671))
(assert (not (= var3913!3 null-__Array__Int__var671__)))
(assert (= (select var3913!3 2) (cast-from-Int-to-var671 var1426))) ; Statement: $r2[2] = $r5 
(define-const var2820 String (String_format/1339386452 "%d.%d.%d" var3913!3)) ; Statement: $r6 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%d.%d.%d", $r2) 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {completeVersion/-1415987833=([com.mysql.cj.ServerVersion], java.lang.String), arr-var671-init=([], java.lang.Object[]), major/-1415987833=([com.mysql.cj.ServerVersion], java.lang.Integer), cast-from-Int-to-var671=([java.lang.Integer], java.lang.Object), minor/-1415987833=([com.mysql.cj.ServerVersion], java.lang.Integer), subminor/-1415987833=([com.mysql.cj.ServerVersion], java.lang.Integer), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var3126=com.mysql.cj.ServerVersion, var848=r0, var2067=$r1, var2394=null_type, var671=java.lang.Object, var3913=$r2, var3090=$r3, var485=$r4, var1426=$r5, var2820=$r6}
; {com.mysql.cj.ServerVersion=var3126, r0=var848, $r1=var2067, null_type=var2394, java.lang.Object=var671, $r2=var3913, $r3=var3090, $r4=var485, $r5=var1426, $r6=var2820}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: com.mysql.cj.ServerVersion;	$r1 = r0.<com.mysql.cj.ServerVersion: java.lang.String completeVersion>;	if $r1 == null goto $r2 = newarray (java.lang.Object)[3];	$r2 = newarray (java.lang.Object)[3];	$r3 = r0.<com.mysql.cj.ServerVersion: java.lang.Integer major>;	$r2[0] = $r3;	$r4 = r0.<com.mysql.cj.ServerVersion: java.lang.Integer minor>;	$r2[1] = $r4;	$r5 = r0.<com.mysql.cj.ServerVersion: java.lang.Integer subminor>;	$r2[2] = $r5;	$r6 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%d.%d.%d", $r2);	return $r6
;block_num 2