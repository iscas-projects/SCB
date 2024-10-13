(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2324 0)
(declare-sort var2110 0)
(declare-sort var3540 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var2110-init () (Array Int var2110))
(declare-fun cast-from-String-to-var2110 (String) var2110)
(declare-fun Int_valueOf/-1102777585 (Int) Int)
(declare-fun cast-from-Int-to-var2110 (Int) var2110)
(declare-fun String_format/1339386452 (String (Array Int var2110)) String)
(declare-const null-String String)
(declare-const null-__Array__Int__var2110__ (Array Int var2110))
(declare-const var3540-DEFAULT_SEED Int)
(declare-const var2613 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2613 null-String)))
(define-const var1175 (Array Int var2110) arr-var2110-init) ; Statement: $r0 = newarray (java.lang.Object)[3] 
(declare-const var1175!1 (Array Int var2110))
(assert (not (= var1175!1 null-__Array__Int__var2110__)))
(assert (= (select var1175!1 0) (cast-from-String-to-var2110 "junit.jupiter.execution.order.random.seed"))) ; Statement: $r0[0] = "junit.jupiter.execution.order.random.seed" 
(declare-const var1175!2 (Array Int var2110))
(assert (not (= var1175!2 null-__Array__Int__var2110__)))
(assert (= (select var1175!2 1) (cast-from-String-to-var2110 var2613))) ; Statement: $r0[1] = r1 
(define-const var2629 Int var3540-DEFAULT_SEED) ; Statement: $l0 = <org.junit.jupiter.api.MethodOrderer$Random: long DEFAULT_SEED> 
(define-const var3384 Int (Int_valueOf/-1102777585 var2629)) ; Statement: $r2 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>($l0) 
(declare-const var1175!3 (Array Int var2110))
(assert (not (= var1175!3 null-__Array__Int__var2110__)))
(assert (= (select var1175!3 2) (cast-from-Int-to-var2110 var3384))) ; Statement: $r0[2] = $r2 
(define-const var3534 String (String_format/1339386452 "Failed to convert configuration parameter [%s] with value [%s] to a long. Using default seed [%s] as fallback." var1175!3)) ; Statement: $r3 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Failed to convert configuration parameter [%s] with value [%s] to a long. Using default seed [%s] as fallback.", $r0) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var2110-init=([], java.lang.Object[]), cast-from-String-to-var2110=([java.lang.String], java.lang.Object), Int_valueOf/-1102777585=([long], java.lang.Long), cast-from-Int-to-var2110=([java.lang.Long], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var2613=r1, var2324=null_type, var2110=java.lang.Object, var1175=$r0, var3540=org.junit.jupiter.api.MethodOrderer$Random, var2629=$l0, var3384=$r2, var3534=$r3}
; {r1=var2613, null_type=var2324, java.lang.Object=var2110, $r0=var1175, org.junit.jupiter.api.MethodOrderer$Random=var3540, $l0=var2629, $r2=var3384, $r3=var3534}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @parameter0: java.lang.String;	$r0 = newarray (java.lang.Object)[3];	$r0[0] = "junit.jupiter.execution.order.random.seed";	$r0[1] = r1;	$l0 = <org.junit.jupiter.api.MethodOrderer$Random: long DEFAULT_SEED>;	$r2 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>($l0);	$r0[2] = $r2;	$r3 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Failed to convert configuration parameter [%s] with value [%s] to a long. Using default seed [%s] as fallback.", $r0);	return $r3
;block_num 1