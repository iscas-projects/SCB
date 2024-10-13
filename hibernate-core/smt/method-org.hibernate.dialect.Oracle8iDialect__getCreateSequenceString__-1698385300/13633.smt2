(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3822 0)
(declare-sort var387 0)
(declare-sort var2224 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var2224-init () (Array Int var2224))
(declare-fun getCreateSequenceString/14566886 (var3822 String) String)
(declare-fun cast-from-String-to-var2224 (String) var2224)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun cast-from-Int-to-var2224 (Int) var2224)
(declare-fun String_format/1339386452 (String (Array Int var2224)) String)
(declare-const null-var3822 var3822)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-__Array__Int__var2224__ (Array Int var2224))
(declare-const var764 var3822) ; Statement: r1 := @this: org.hibernate.dialect.Oracle8iDialect 
(assert (not (= var764 null-var3822)))
(declare-const var859 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var859 null-String)))
(declare-const var331 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var331 null-Int)))
(declare-const var1320 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var1320 null-Int)))
 ; Statement: if i0 >= 0 goto (branch) 
(assert (not (>= var331 0))) ; Negate: Cond: i0 >= 0  
 ; Statement: if i1 <= 0 goto (branch) 
(assert (not (<= var1320 0))) ; Negate: Cond: i1 <= 0  
(define-const var576 (Array Int var2224) arr-var2224-init) ; Statement: $r13 = newarray (java.lang.Object)[4] 
(assert true)
(define-const var2474 String (getCreateSequenceString/14566886 var764 var859)) ; Statement: $r14 = virtualinvoke r1.<org.hibernate.dialect.Oracle8iDialect: java.lang.String getCreateSequenceString(java.lang.String)>(r2) 
(declare-const var576!1 (Array Int var2224))
(assert (not (= var576!1 null-__Array__Int__var2224__)))
(assert (= (select var576!1 0) (cast-from-String-to-var2224 var2474))) ; Statement: $r13[0] = $r14 
(define-const var996 Int (Int_valueOf/-1371140006 var331)) ; Statement: $r15 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0) 
(declare-const var576!2 (Array Int var2224))
(assert (not (= var576!2 null-__Array__Int__var2224__)))
(assert (= (select var576!2 1) (cast-from-Int-to-var2224 var996))) ; Statement: $r13[1] = $r15 
(define-const var3413 Int (Int_valueOf/-1371140006 var331)) ; Statement: $r16 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0) 
(declare-const var576!3 (Array Int var2224))
(assert (not (= var576!3 null-__Array__Int__var2224__)))
(assert (= (select var576!3 2) (cast-from-Int-to-var2224 var3413))) ; Statement: $r13[2] = $r16 
(define-const var1998 Int (Int_valueOf/-1371140006 var1320)) ; Statement: $r17 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i1) 
(declare-const var576!4 (Array Int var2224))
(assert (not (= var576!4 null-__Array__Int__var2224__)))
(assert (= (select var576!4 3) (cast-from-Int-to-var2224 var1998))) ; Statement: $r13[3] = $r17 
(define-const var3964 String (String_format/1339386452 "%s minvalue %d start with %d increment by %d" var576!4)) ; Statement: $r18 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%s minvalue %d start with %d increment by %d", $r13) 
 ; Statement: return $r18 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var2224-init=([], java.lang.Object[]), getCreateSequenceString/14566886=([org.hibernate.dialect.Oracle8iDialect, java.lang.String], java.lang.String), cast-from-String-to-var2224=([java.lang.String], java.lang.Object), Int_valueOf/-1371140006=([int], java.lang.Integer), cast-from-Int-to-var2224=([java.lang.Integer], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var3822=org.hibernate.dialect.Oracle8iDialect, var764=r1, var859=r2, var387=null_type, var331=i0, var1320=i1, var2224=java.lang.Object, var576=$r13, var2474=$r14, var996=$r15, var3413=$r16, var1998=$r17, var3964=$r18}
; {org.hibernate.dialect.Oracle8iDialect=var3822, r1=var764, r2=var859, null_type=var387, i0=var331, i1=var1320, java.lang.Object=var2224, $r13=var576, $r14=var2474, $r15=var996, $r16=var3413, $r17=var1998, $r18=var3964}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @this: org.hibernate.dialect.Oracle8iDialect;	r2 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i1 := @parameter2: int;	if i0 >= 0 goto (branch);	if i1 <= 0 goto (branch);	$r13 = newarray (java.lang.Object)[4];	$r14 = virtualinvoke r1.<org.hibernate.dialect.Oracle8iDialect: java.lang.String getCreateSequenceString(java.lang.String)>(r2);	$r13[0] = $r14;	$r15 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0);	$r13[1] = $r15;	$r16 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0);	$r13[2] = $r16;	$r17 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i1);	$r13[3] = $r17;	$r18 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%s minvalue %d start with %d increment by %d", $r13);	return $r18
;block_num 3