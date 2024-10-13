(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2839 0)
(declare-sort var3016 0)
(declare-sort var101 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var101-init () (Array Int var101))
(declare-fun getYear/-1730694704 (var3016) Int)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun cast-from-Int-to-var101 (Int) var101)
(declare-fun getMonth/-889782515 (var3016) Int)
(declare-fun getDay/863929457 (var3016) Int)
(declare-fun String_format/1339386452 (String (Array Int var101)) String)
(declare-const null-var2839 var2839)
(declare-const null-var3016 var3016)
(declare-const null-__Array__Int__var101__ (Array Int var101))
(declare-const var992 var2839) ; Statement: r6 := @this: com.mysql.cj.result.StringValueFactory 
(assert (not (= var992 null-var2839)))
(declare-const var712 var3016) ; Statement: r1 := @parameter0: com.mysql.cj.protocol.InternalDate 
(assert (not (= var712 null-var3016)))
(define-const var2098 (Array Int var101) arr-var101-init) ; Statement: $r0 = newarray (java.lang.Object)[3] 
(assert true)
(define-const var1834 Int (getYear/-1730694704 var712)) ; Statement: $i0 = virtualinvoke r1.<com.mysql.cj.protocol.InternalDate: int getYear()>() 
(define-const var2702 Int (Int_valueOf/-1371140006 var1834)) ; Statement: $r2 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i0) 
(declare-const var2098!1 (Array Int var101))
(assert (not (= var2098!1 null-__Array__Int__var101__)))
(assert (= (select var2098!1 0) (cast-from-Int-to-var101 var2702))) ; Statement: $r0[0] = $r2 
(assert true)
(define-const var3943 Int (getMonth/-889782515 var712)) ; Statement: $i1 = virtualinvoke r1.<com.mysql.cj.protocol.InternalDate: int getMonth()>() 
(define-const var3851 Int (Int_valueOf/-1371140006 var3943)) ; Statement: $r3 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i1) 
(declare-const var2098!2 (Array Int var101))
(assert (not (= var2098!2 null-__Array__Int__var101__)))
(assert (= (select var2098!2 1) (cast-from-Int-to-var101 var3851))) ; Statement: $r0[1] = $r3 
(assert true)
(define-const var2461 Int (getDay/863929457 var712)) ; Statement: $i2 = virtualinvoke r1.<com.mysql.cj.protocol.InternalDate: int getDay()>() 
(define-const var3288 Int (Int_valueOf/-1371140006 var2461)) ; Statement: $r4 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i2) 
(declare-const var2098!3 (Array Int var101))
(assert (not (= var2098!3 null-__Array__Int__var101__)))
(assert (= (select var2098!3 2) (cast-from-Int-to-var101 var3288))) ; Statement: $r0[2] = $r4 
(define-const var3907 String (String_format/1339386452 "%04d-%02d-%02d" var2098!3)) ; Statement: $r5 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%04d-%02d-%02d", $r0) 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var101-init=([], java.lang.Object[]), getYear/-1730694704=([com.mysql.cj.protocol.InternalDate], int), Int_valueOf/-1371140006=([int], java.lang.Integer), cast-from-Int-to-var101=([java.lang.Integer], java.lang.Object), getMonth/-889782515=([com.mysql.cj.protocol.InternalDate], int), getDay/863929457=([com.mysql.cj.protocol.InternalDate], int), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var2839=com.mysql.cj.result.StringValueFactory, var992=r6, var3016=com.mysql.cj.protocol.InternalDate, var712=r1, var101=java.lang.Object, var2098=$r0, var1834=$i0, var2702=$r2, var3943=$i1, var3851=$r3, var2461=$i2, var3288=$r4, var3907=$r5}
; {com.mysql.cj.result.StringValueFactory=var2839, r6=var992, com.mysql.cj.protocol.InternalDate=var3016, r1=var712, java.lang.Object=var101, $r0=var2098, $i0=var1834, $r2=var2702, $i1=var3943, $r3=var3851, $i2=var2461, $r4=var3288, $r5=var3907}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r6 := @this: com.mysql.cj.result.StringValueFactory;	r1 := @parameter0: com.mysql.cj.protocol.InternalDate;	$r0 = newarray (java.lang.Object)[3];	$i0 = virtualinvoke r1.<com.mysql.cj.protocol.InternalDate: int getYear()>();	$r2 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i0);	$r0[0] = $r2;	$i1 = virtualinvoke r1.<com.mysql.cj.protocol.InternalDate: int getMonth()>();	$r3 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i1);	$r0[1] = $r3;	$i2 = virtualinvoke r1.<com.mysql.cj.protocol.InternalDate: int getDay()>();	$r4 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i2);	$r0[2] = $r4;	$r5 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%04d-%02d-%02d", $r0);	return $r5
;block_num 1