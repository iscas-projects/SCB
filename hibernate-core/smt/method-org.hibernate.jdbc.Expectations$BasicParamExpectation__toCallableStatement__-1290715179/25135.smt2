(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var401 0)
(declare-sort var3263 0)
(declare-sort var1133 0)
(declare-sort var2133 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var1133!class ClassObject)
(declare-fun isInstance/451912363 (ClassObject var2133) Bool)
(declare-fun cast-from-var3263-to-var2133 (var3263) var2133)
(declare-fun cast-from-var3263-to-var1133 (var3263) var1133)
(declare-const null-var401 var401)
(declare-const null-var3263 var3263)
(declare-const var3309 var401) ; Statement: r9 := @this: org.hibernate.jdbc.Expectations$BasicParamExpectation 
(assert (not (= var3309 null-var401)))
(declare-const var143 var3263) ; Statement: r0 := @parameter0: java.sql.PreparedStatement 
(assert (not (= var143 null-var3263)))
(define-const var3730 ClassObject var1133!class) ; Statement: $r1 = class "Ljava/sql/CallableStatement;" 
(assert true)
(define-const var3824 Bool (isInstance/451912363 var3730 (cast-from-var3263-to-var2133 var143))) ; Statement: $z0 = virtualinvoke $r1.<java.lang.Class: boolean isInstance(java.lang.Object)>(r0) 
 ; Statement: if $z0 != 0 goto $r2 = (java.sql.CallableStatement) r0 
(assert (not (= (ite var3824 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3366 var1133 (cast-from-var3263-to-var1133 var143)) ; Statement: $r2 = (java.sql.CallableStatement) r0 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {isInstance/451912363=([java.lang.Class, java.lang.Object], boolean), cast-from-var3263-to-var2133=([java.sql.PreparedStatement], java.lang.Object), cast-from-var3263-to-var1133=([java.sql.PreparedStatement], java.sql.CallableStatement)}
; {var401=org.hibernate.jdbc.Expectations$BasicParamExpectation, var3309=r9, var3263=java.sql.PreparedStatement, var143=r0, var1133=java.sql.CallableStatement, var3730=$r1, var2133=java.lang.Object, var3824=$z0, var3366=$r2}
; {org.hibernate.jdbc.Expectations$BasicParamExpectation=var401, r9=var3309, java.sql.PreparedStatement=var3263, r0=var143, java.sql.CallableStatement=var1133, $r1=var3730, java.lang.Object=var2133, $z0=var3824, $r2=var3366}
;seq 
;cnt {}
;stmts r9 := @this: org.hibernate.jdbc.Expectations$BasicParamExpectation;	r0 := @parameter0: java.sql.PreparedStatement;	$r1 = class "Ljava/sql/CallableStatement;";	$z0 = virtualinvoke $r1.<java.lang.Class: boolean isInstance(java.lang.Object)>(r0);	if $z0 != 0 goto $r2 = (java.sql.CallableStatement) r0;	$r2 = (java.sql.CallableStatement) r0;	return $r2
;block_num 2