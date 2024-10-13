(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1146 0)
(declare-sort var3338 0)
(declare-sort var1643 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var1643-init () (Array Int var1643))
(declare-fun getCreateSequenceString/1012597838 (var1146 String) String)
(declare-fun cast-from-String-to-var1643 (String) var1643)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun cast-from-Int-to-var1643 (Int) var1643)
(declare-fun String_format/1339386452 (String (Array Int var1643)) String)
(declare-const null-var1146 var1146)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-__Array__Int__var1643__ (Array Int var1643))
(declare-const var972 var1146) ; Statement: r1 := @this: org.hibernate.dialect.CockroachDB192Dialect 
(assert (not (= var972 null-var1146)))
(declare-const var1756 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1756 null-String)))
(declare-const var2783 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2783 null-Int)))
(declare-const var737 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var737 null-Int)))
 ; Statement: if i0 >= 0 goto (branch) 
(assert (not (>= var2783 0))) ; Negate: Cond: i0 >= 0  
 ; Statement: if i1 <= 0 goto (branch) 
(assert (not (<= var737 0))) ; Negate: Cond: i1 <= 0  
(define-const var2010 (Array Int var1643) arr-var1643-init) ; Statement: $r13 = newarray (java.lang.Object)[4] 
(assert true)
(define-const var2724 String (getCreateSequenceString/1012597838 var972 var1756)) ; Statement: $r14 = virtualinvoke r1.<org.hibernate.dialect.CockroachDB192Dialect: java.lang.String getCreateSequenceString(java.lang.String)>(r2) 
(declare-const var2010!1 (Array Int var1643))
(assert (not (= var2010!1 null-__Array__Int__var1643__)))
(assert (= (select var2010!1 0) (cast-from-String-to-var1643 var2724))) ; Statement: $r13[0] = $r14 
(define-const var3224 Int (Int_valueOf/-1371140006 var2783)) ; Statement: $r15 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0) 
(declare-const var2010!2 (Array Int var1643))
(assert (not (= var2010!2 null-__Array__Int__var1643__)))
(assert (= (select var2010!2 1) (cast-from-Int-to-var1643 var3224))) ; Statement: $r13[1] = $r15 
(define-const var3932 Int (Int_valueOf/-1371140006 var2783)) ; Statement: $r16 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0) 
(declare-const var2010!3 (Array Int var1643))
(assert (not (= var2010!3 null-__Array__Int__var1643__)))
(assert (= (select var2010!3 2) (cast-from-Int-to-var1643 var3932))) ; Statement: $r13[2] = $r16 
(define-const var2441 Int (Int_valueOf/-1371140006 var737)) ; Statement: $r17 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i1) 
(declare-const var2010!4 (Array Int var1643))
(assert (not (= var2010!4 null-__Array__Int__var1643__)))
(assert (= (select var2010!4 3) (cast-from-Int-to-var1643 var2441))) ; Statement: $r13[3] = $r17 
(define-const var1383 String (String_format/1339386452 "%s minvalue %d start %d increment %d" var2010!4)) ; Statement: $r18 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%s minvalue %d start %d increment %d", $r13) 
 ; Statement: return $r18 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var1643-init=([], java.lang.Object[]), getCreateSequenceString/1012597838=([org.hibernate.dialect.CockroachDB192Dialect, java.lang.String], java.lang.String), cast-from-String-to-var1643=([java.lang.String], java.lang.Object), Int_valueOf/-1371140006=([int], java.lang.Integer), cast-from-Int-to-var1643=([java.lang.Integer], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var1146=org.hibernate.dialect.CockroachDB192Dialect, var972=r1, var1756=r2, var3338=null_type, var2783=i0, var737=i1, var1643=java.lang.Object, var2010=$r13, var2724=$r14, var3224=$r15, var3932=$r16, var2441=$r17, var1383=$r18}
; {org.hibernate.dialect.CockroachDB192Dialect=var1146, r1=var972, r2=var1756, null_type=var3338, i0=var2783, i1=var737, java.lang.Object=var1643, $r13=var2010, $r14=var2724, $r15=var3224, $r16=var3932, $r17=var2441, $r18=var1383}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @this: org.hibernate.dialect.CockroachDB192Dialect;	r2 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i1 := @parameter2: int;	if i0 >= 0 goto (branch);	if i1 <= 0 goto (branch);	$r13 = newarray (java.lang.Object)[4];	$r14 = virtualinvoke r1.<org.hibernate.dialect.CockroachDB192Dialect: java.lang.String getCreateSequenceString(java.lang.String)>(r2);	$r13[0] = $r14;	$r15 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0);	$r13[1] = $r15;	$r16 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0);	$r13[2] = $r16;	$r17 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i1);	$r13[3] = $r17;	$r18 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%s minvalue %d start %d increment %d", $r13);	return $r18
;block_num 3