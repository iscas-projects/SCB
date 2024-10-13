(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1762 0)
(declare-sort var1964 0)
(declare-sort var1854 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var1854-init () (Array Int var1854))
(declare-fun getCreateSequenceString/1012597838 (var1762 String) String)
(declare-fun cast-from-String-to-var1854 (String) var1854)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun cast-from-Int-to-var1854 (Int) var1854)
(declare-fun String_format/1339386452 (String (Array Int var1854)) String)
(declare-const null-var1762 var1762)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-__Array__Int__var1854__ (Array Int var1854))
(declare-const var1544 var1762) ; Statement: r1 := @this: org.hibernate.dialect.CockroachDB192Dialect 
(assert (not (= var1544 null-var1762)))
(declare-const var540 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var540 null-String)))
(declare-const var2898 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2898 null-Int)))
(declare-const var3063 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var3063 null-Int)))
 ; Statement: if i0 >= 0 goto (branch) 
(assert (>= var2898 0)) ; Cond: i0 >= 0 
 ; Statement: if i0 <= 0 goto $r0 = newarray (java.lang.Object)[3] 
(assert (<= var2898 0)) ; Cond: i0 <= 0 
(define-const var3361 (Array Int var1854) arr-var1854-init) ; Statement: $r0 = newarray (java.lang.Object)[3] 
(assert true)
(define-const var3599 String (getCreateSequenceString/1012597838 var1544 var540)) ; Statement: $r3 = virtualinvoke r1.<org.hibernate.dialect.CockroachDB192Dialect: java.lang.String getCreateSequenceString(java.lang.String)>(r2) 
(declare-const var3361!1 (Array Int var1854))
(assert (not (= var3361!1 null-__Array__Int__var1854__)))
(assert (= (select var3361!1 0) (cast-from-String-to-var1854 var3599))) ; Statement: $r0[0] = $r3 
(define-const var1498 Int (Int_valueOf/-1371140006 var2898)) ; Statement: $r4 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0) 
(declare-const var3361!2 (Array Int var1854))
(assert (not (= var3361!2 null-__Array__Int__var1854__)))
(assert (= (select var3361!2 1) (cast-from-Int-to-var1854 var1498))) ; Statement: $r0[1] = $r4 
(define-const var240 Int (Int_valueOf/-1371140006 var3063)) ; Statement: $r5 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i1) 
(declare-const var3361!3 (Array Int var1854))
(assert (not (= var3361!3 null-__Array__Int__var1854__)))
(assert (= (select var3361!3 2) (cast-from-Int-to-var1854 var240))) ; Statement: $r0[2] = $r5 
(define-const var2779 String (String_format/1339386452 "%s start %d increment %d" var3361!3)) ; Statement: $r6 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%s start %d increment %d", $r0) 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var1854-init=([], java.lang.Object[]), getCreateSequenceString/1012597838=([org.hibernate.dialect.CockroachDB192Dialect, java.lang.String], java.lang.String), cast-from-String-to-var1854=([java.lang.String], java.lang.Object), Int_valueOf/-1371140006=([int], java.lang.Integer), cast-from-Int-to-var1854=([java.lang.Integer], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var1762=org.hibernate.dialect.CockroachDB192Dialect, var1544=r1, var540=r2, var1964=null_type, var2898=i0, var3063=i1, var1854=java.lang.Object, var3361=$r0, var3599=$r3, var1498=$r4, var240=$r5, var2779=$r6}
; {org.hibernate.dialect.CockroachDB192Dialect=var1762, r1=var1544, r2=var540, null_type=var1964, i0=var2898, i1=var3063, java.lang.Object=var1854, $r0=var3361, $r3=var3599, $r4=var1498, $r5=var240, $r6=var2779}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @this: org.hibernate.dialect.CockroachDB192Dialect;	r2 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i1 := @parameter2: int;	if i0 >= 0 goto (branch);	if i0 <= 0 goto $r0 = newarray (java.lang.Object)[3];	$r0 = newarray (java.lang.Object)[3];	$r3 = virtualinvoke r1.<org.hibernate.dialect.CockroachDB192Dialect: java.lang.String getCreateSequenceString(java.lang.String)>(r2);	$r0[0] = $r3;	$r4 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0);	$r0[1] = $r4;	$r5 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i1);	$r0[2] = $r5;	$r6 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%s start %d increment %d", $r0);	return $r6
;block_num 3