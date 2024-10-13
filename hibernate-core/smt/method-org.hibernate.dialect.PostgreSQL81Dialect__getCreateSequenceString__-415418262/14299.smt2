(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var791 0)
(declare-sort var541 0)
(declare-sort var858 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var858-init () (Array Int var858))
(declare-fun getCreateSequenceString/797157860 (var791 String) String)
(declare-fun cast-from-String-to-var858 (String) var858)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun cast-from-Int-to-var858 (Int) var858)
(declare-fun String_format/1339386452 (String (Array Int var858)) String)
(declare-const null-var791 var791)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-__Array__Int__var858__ (Array Int var858))
(declare-const var3866 var791) ; Statement: r1 := @this: org.hibernate.dialect.PostgreSQL81Dialect 
(assert (not (= var3866 null-var791)))
(declare-const var672 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var672 null-String)))
(declare-const var617 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var617 null-Int)))
(declare-const var3995 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var3995 null-Int)))
 ; Statement: if i0 >= 0 goto (branch) 
(assert (not (>= var617 0))) ; Negate: Cond: i0 >= 0  
 ; Statement: if i1 <= 0 goto (branch) 
(assert (not (<= var3995 0))) ; Negate: Cond: i1 <= 0  
(define-const var2079 (Array Int var858) arr-var858-init) ; Statement: $r13 = newarray (java.lang.Object)[4] 
(assert true)
(define-const var2179 String (getCreateSequenceString/797157860 var3866 var672)) ; Statement: $r14 = virtualinvoke r1.<org.hibernate.dialect.PostgreSQL81Dialect: java.lang.String getCreateSequenceString(java.lang.String)>(r2) 
(declare-const var2079!1 (Array Int var858))
(assert (not (= var2079!1 null-__Array__Int__var858__)))
(assert (= (select var2079!1 0) (cast-from-String-to-var858 var2179))) ; Statement: $r13[0] = $r14 
(define-const var2915 Int (Int_valueOf/-1371140006 var617)) ; Statement: $r15 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0) 
(declare-const var2079!2 (Array Int var858))
(assert (not (= var2079!2 null-__Array__Int__var858__)))
(assert (= (select var2079!2 1) (cast-from-Int-to-var858 var2915))) ; Statement: $r13[1] = $r15 
(define-const var1271 Int (Int_valueOf/-1371140006 var617)) ; Statement: $r16 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0) 
(declare-const var2079!3 (Array Int var858))
(assert (not (= var2079!3 null-__Array__Int__var858__)))
(assert (= (select var2079!3 2) (cast-from-Int-to-var858 var1271))) ; Statement: $r13[2] = $r16 
(define-const var2508 Int (Int_valueOf/-1371140006 var3995)) ; Statement: $r17 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i1) 
(declare-const var2079!4 (Array Int var858))
(assert (not (= var2079!4 null-__Array__Int__var858__)))
(assert (= (select var2079!4 3) (cast-from-Int-to-var858 var2508))) ; Statement: $r13[3] = $r17 
(define-const var3023 String (String_format/1339386452 "%s minvalue %d start %d increment %d" var2079!4)) ; Statement: $r18 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%s minvalue %d start %d increment %d", $r13) 
 ; Statement: return $r18 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var858-init=([], java.lang.Object[]), getCreateSequenceString/797157860=([org.hibernate.dialect.PostgreSQL81Dialect, java.lang.String], java.lang.String), cast-from-String-to-var858=([java.lang.String], java.lang.Object), Int_valueOf/-1371140006=([int], java.lang.Integer), cast-from-Int-to-var858=([java.lang.Integer], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var791=org.hibernate.dialect.PostgreSQL81Dialect, var3866=r1, var672=r2, var541=null_type, var617=i0, var3995=i1, var858=java.lang.Object, var2079=$r13, var2179=$r14, var2915=$r15, var1271=$r16, var2508=$r17, var3023=$r18}
; {org.hibernate.dialect.PostgreSQL81Dialect=var791, r1=var3866, r2=var672, null_type=var541, i0=var617, i1=var3995, java.lang.Object=var858, $r13=var2079, $r14=var2179, $r15=var2915, $r16=var1271, $r17=var2508, $r18=var3023}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @this: org.hibernate.dialect.PostgreSQL81Dialect;	r2 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i1 := @parameter2: int;	if i0 >= 0 goto (branch);	if i1 <= 0 goto (branch);	$r13 = newarray (java.lang.Object)[4];	$r14 = virtualinvoke r1.<org.hibernate.dialect.PostgreSQL81Dialect: java.lang.String getCreateSequenceString(java.lang.String)>(r2);	$r13[0] = $r14;	$r15 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0);	$r13[1] = $r15;	$r16 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0);	$r13[2] = $r16;	$r17 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i1);	$r13[3] = $r17;	$r18 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%s minvalue %d start %d increment %d", $r13);	return $r18
;block_num 3