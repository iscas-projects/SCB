(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2394 0)
(declare-sort var1835 0)
(declare-sort var1165 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var1835-init () (Array Int var1835))
(declare-fun var1165_size/-1118528828 (var2394) Int)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun cast-from-Int-to-var1835 (Int) var1835)
(declare-fun cast-from-var2394-to-var1835 (var2394) var1835)
(declare-fun String_format/1339386452 (String (Array Int var1835)) String)
(declare-const null-var2394 var2394)
(declare-const null-__Array__Int__var1835__ (Array Int var1835))
(declare-const var1833 var2394) ; Statement: r1 := @parameter0: java.util.List 
(assert (not (= var1833 null-var2394)))
(define-const var3383 (Array Int var1835) arr-var1835-init) ; Statement: $r0 = newarray (java.lang.Object)[2] 
(define-const var1507 Int (var1165_size/-1118528828 var1833)) ; Statement: $i0 = staticinvoke <org.apache.commons.io.IOExceptionList: int size(java.util.List)>(r1) 
(define-const var1336 Int (Int_valueOf/-1371140006 var1507)) ; Statement: $r2 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i0) 
(declare-const var3383!1 (Array Int var1835))
(assert (not (= var3383!1 null-__Array__Int__var1835__)))
(assert (= (select var3383!1 0) (cast-from-Int-to-var1835 var1336))) ; Statement: $r0[0] = $r2 
(declare-const var3383!2 (Array Int var1835))
(assert (not (= var3383!2 null-__Array__Int__var1835__)))
(assert (= (select var3383!2 1) (cast-from-var2394-to-var1835 var1833))) ; Statement: $r0[1] = r1 
(define-const var646 String (String_format/1339386452 "%,d exception(s): %s" var3383!2)) ; Statement: $r3 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%,d exception(s): %s", $r0) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var1835-init=([], java.lang.Object[]), var1165_size/-1118528828=([java.util.List], int), Int_valueOf/-1371140006=([int], java.lang.Integer), cast-from-Int-to-var1835=([java.lang.Integer], java.lang.Object), cast-from-var2394-to-var1835=([java.util.List], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var2394=java.util.List, var1833=r1, var1835=java.lang.Object, var3383=$r0, var1165=org.apache.commons.io.IOExceptionList, var1507=$i0, var1336=$r2, var646=$r3}
; {java.util.List=var2394, r1=var1833, java.lang.Object=var1835, $r0=var3383, org.apache.commons.io.IOExceptionList=var1165, $i0=var1507, $r2=var1336, $r3=var646}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @parameter0: java.util.List;	$r0 = newarray (java.lang.Object)[2];	$i0 = staticinvoke <org.apache.commons.io.IOExceptionList: int size(java.util.List)>(r1);	$r2 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i0);	$r0[0] = $r2;	$r0[1] = r1;	$r3 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%,d exception(s): %s", $r0);	return $r3
;block_num 1