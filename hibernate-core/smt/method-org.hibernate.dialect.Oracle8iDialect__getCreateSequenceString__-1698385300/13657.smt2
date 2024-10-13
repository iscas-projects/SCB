(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2583 0)
(declare-sort var1678 0)
(declare-sort var1295 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var1295-init () (Array Int var1295))
(declare-fun getCreateSequenceString/14566886 (var2583 String) String)
(declare-fun cast-from-String-to-var1295 (String) var1295)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun cast-from-Int-to-var1295 (Int) var1295)
(declare-fun String_format/1339386452 (String (Array Int var1295)) String)
(declare-const null-var2583 var2583)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-__Array__Int__var1295__ (Array Int var1295))
(declare-const var3445 var2583) ; Statement: r1 := @this: org.hibernate.dialect.Oracle8iDialect 
(assert (not (= var3445 null-var2583)))
(declare-const var3052 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3052 null-String)))
(declare-const var2782 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2782 null-Int)))
(declare-const var2918 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var2918 null-Int)))
 ; Statement: if i0 >= 0 goto (branch) 
(assert (>= var2782 0)) ; Cond: i0 >= 0 
 ; Statement: if i0 <= 0 goto $r0 = newarray (java.lang.Object)[3] 
(assert (<= var2782 0)) ; Cond: i0 <= 0 
(define-const var3793 (Array Int var1295) arr-var1295-init) ; Statement: $r0 = newarray (java.lang.Object)[3] 
(assert true)
(define-const var3730 String (getCreateSequenceString/14566886 var3445 var3052)) ; Statement: $r3 = virtualinvoke r1.<org.hibernate.dialect.Oracle8iDialect: java.lang.String getCreateSequenceString(java.lang.String)>(r2) 
(declare-const var3793!1 (Array Int var1295))
(assert (not (= var3793!1 null-__Array__Int__var1295__)))
(assert (= (select var3793!1 0) (cast-from-String-to-var1295 var3730))) ; Statement: $r0[0] = $r3 
(define-const var74 Int (Int_valueOf/-1371140006 var2782)) ; Statement: $r4 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0) 
(declare-const var3793!2 (Array Int var1295))
(assert (not (= var3793!2 null-__Array__Int__var1295__)))
(assert (= (select var3793!2 1) (cast-from-Int-to-var1295 var74))) ; Statement: $r0[1] = $r4 
(define-const var1702 Int (Int_valueOf/-1371140006 var2918)) ; Statement: $r5 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i1) 
(declare-const var3793!3 (Array Int var1295))
(assert (not (= var3793!3 null-__Array__Int__var1295__)))
(assert (= (select var3793!3 2) (cast-from-Int-to-var1295 var1702))) ; Statement: $r0[2] = $r5 
(define-const var1821 String (String_format/1339386452 "%s start with %d increment by  %d" var3793!3)) ; Statement: $r6 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%s start with %d increment by  %d", $r0) 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var1295-init=([], java.lang.Object[]), getCreateSequenceString/14566886=([org.hibernate.dialect.Oracle8iDialect, java.lang.String], java.lang.String), cast-from-String-to-var1295=([java.lang.String], java.lang.Object), Int_valueOf/-1371140006=([int], java.lang.Integer), cast-from-Int-to-var1295=([java.lang.Integer], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var2583=org.hibernate.dialect.Oracle8iDialect, var3445=r1, var3052=r2, var1678=null_type, var2782=i0, var2918=i1, var1295=java.lang.Object, var3793=$r0, var3730=$r3, var74=$r4, var1702=$r5, var1821=$r6}
; {org.hibernate.dialect.Oracle8iDialect=var2583, r1=var3445, r2=var3052, null_type=var1678, i0=var2782, i1=var2918, java.lang.Object=var1295, $r0=var3793, $r3=var3730, $r4=var74, $r5=var1702, $r6=var1821}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @this: org.hibernate.dialect.Oracle8iDialect;	r2 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i1 := @parameter2: int;	if i0 >= 0 goto (branch);	if i0 <= 0 goto $r0 = newarray (java.lang.Object)[3];	$r0 = newarray (java.lang.Object)[3];	$r3 = virtualinvoke r1.<org.hibernate.dialect.Oracle8iDialect: java.lang.String getCreateSequenceString(java.lang.String)>(r2);	$r0[0] = $r3;	$r4 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0);	$r0[1] = $r4;	$r5 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i1);	$r0[2] = $r5;	$r6 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%s start with %d increment by  %d", $r0);	return $r6
;block_num 3