(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var914 0)
(declare-sort var574 0)
(declare-sort var1320 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var574-init () (Array Int var574))
(declare-fun cast-from-String-to-var574 (String) var574)
(declare-fun Int_valueOf/-1102777585 (Int) Int)
(declare-fun cast-from-Int-to-var574 (Int) var574)
(declare-fun String_format/1339386452 (String (Array Int var574)) String)
(declare-const null-String String)
(declare-const null-__Array__Int__var574__ (Array Int var574))
(declare-const var1320-DEFAULT_SEED Int)
(declare-const var2120 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2120 null-String)))
(define-const var3020 (Array Int var574) arr-var574-init) ; Statement: $r0 = newarray (java.lang.Object)[3] 
(declare-const var3020!1 (Array Int var574))
(assert (not (= var3020!1 null-__Array__Int__var574__)))
(assert (= (select var3020!1 0) (cast-from-String-to-var574 "junit.jupiter.execution.order.random.seed"))) ; Statement: $r0[0] = "junit.jupiter.execution.order.random.seed" 
(declare-const var3020!2 (Array Int var574))
(assert (not (= var3020!2 null-__Array__Int__var574__)))
(assert (= (select var3020!2 1) (cast-from-String-to-var574 var2120))) ; Statement: $r0[1] = r1 
(define-const var545 Int var1320-DEFAULT_SEED) ; Statement: $l0 = <org.junit.jupiter.api.ClassOrderer$Random: long DEFAULT_SEED> 
(define-const var1858 Int (Int_valueOf/-1102777585 var545)) ; Statement: $r2 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>($l0) 
(declare-const var3020!3 (Array Int var574))
(assert (not (= var3020!3 null-__Array__Int__var574__)))
(assert (= (select var3020!3 2) (cast-from-Int-to-var574 var1858))) ; Statement: $r0[2] = $r2 
(define-const var3087 String (String_format/1339386452 "Failed to convert configuration parameter [%s] with value [%s] to a long. Using default seed [%s] as fallback." var3020!3)) ; Statement: $r3 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Failed to convert configuration parameter [%s] with value [%s] to a long. Using default seed [%s] as fallback.", $r0) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var574-init=([], java.lang.Object[]), cast-from-String-to-var574=([java.lang.String], java.lang.Object), Int_valueOf/-1102777585=([long], java.lang.Long), cast-from-Int-to-var574=([java.lang.Long], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var2120=r1, var914=null_type, var574=java.lang.Object, var3020=$r0, var1320=org.junit.jupiter.api.ClassOrderer$Random, var545=$l0, var1858=$r2, var3087=$r3}
; {r1=var2120, null_type=var914, java.lang.Object=var574, $r0=var3020, org.junit.jupiter.api.ClassOrderer$Random=var1320, $l0=var545, $r2=var1858, $r3=var3087}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @parameter0: java.lang.String;	$r0 = newarray (java.lang.Object)[3];	$r0[0] = "junit.jupiter.execution.order.random.seed";	$r0[1] = r1;	$l0 = <org.junit.jupiter.api.ClassOrderer$Random: long DEFAULT_SEED>;	$r2 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>($l0);	$r0[2] = $r2;	$r3 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Failed to convert configuration parameter [%s] with value [%s] to a long. Using default seed [%s] as fallback.", $r0);	return $r3
;block_num 1