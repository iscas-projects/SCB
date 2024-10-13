(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2991 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun arr-var2991-init () (Array Int var2991))
(declare-fun Int_valueOf/-1102777585 (Int) Int)
(declare-fun cast-from-Int-to-var2991 (Int) var2991)
(declare-fun String_format/1339386452 (String (Array Int var2991)) String)
(declare-const null-Int Int)
(declare-const null-__Array__Int__var2991__ (Array Int var2991))
(declare-const var1603 Int) ; Statement: l0 := @parameter0: long 
(assert (not (= var1603 null-Int)))
(define-const var3113 Int (ite (> var1603 1024) 1 (ite (< var1603 1024) (- 1) 0))) ; Statement: $b1 = l0 cmp 1024L 
(define-const var1184 Int (cast-from-Int-to-Int var3113)) ; Statement: $i7 = (int) $b1 
 ; Statement: if $i7 >= 0 goto $b2 = l0 cmp 1048576L 
(assert (not (>= var1184 0))) ; Negate: Cond: $i7 >= 0  
(define-const var1755 (Array Int var2991) arr-var2991-init) ; Statement: $r9 = newarray (java.lang.Object)[1] 
(define-const var1801 Int (Int_valueOf/-1102777585 var1603)) ; Statement: $r10 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>(l0) 
(declare-const var1755!1 (Array Int var2991))
(assert (not (= var1755!1 null-__Array__Int__var2991__)))
(assert (= (select var1755!1 0) (cast-from-Int-to-var2991 var1801))) ; Statement: $r9[0] = $r10 
(define-const var3348 String (String_format/1339386452 "%d B" var1755!1)) ; Statement: $r11 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%d B", $r9) 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([byte], int), arr-var2991-init=([], java.lang.Object[]), Int_valueOf/-1102777585=([long], java.lang.Long), cast-from-Int-to-var2991=([java.lang.Long], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var1603=l0, var3113=$b1, var1184=$i7, var2991=java.lang.Object, var1755=$r9, var1801=$r10, var3348=$r11}
; {l0=var1603, $b1=var3113, $i7=var1184, java.lang.Object=var2991, $r9=var1755, $r10=var1801, $r11=var3348}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts l0 := @parameter0: long;	$b1 = l0 cmp 1024L;	$i7 = (int) $b1;	if $i7 >= 0 goto $b2 = l0 cmp 1048576L;	$r9 = newarray (java.lang.Object)[1];	$r10 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>(l0);	$r9[0] = $r10;	$r11 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%d B", $r9);	return $r11
;block_num 2