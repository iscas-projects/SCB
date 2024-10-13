(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2220 0)
(declare-sort var3275 0)
(declare-sort var2357 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2357_isQuoted/-1845873022 (String var3275) Bool)
(declare-const null-String String)
(declare-const null-var3275 var3275)
(declare-const var1163 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1163 null-String)))
(declare-const var3943 var3275) ; Statement: r1 := @parameter1: org.hibernate.dialect.Dialect 
(assert (not (= var3943 null-var3275)))
(define-const var394 Bool (var2357_isQuoted/-1845873022 var1163 var3943)) ; Statement: $z0 = staticinvoke <org.hibernate.internal.util.StringHelper: boolean isQuoted(java.lang.String,org.hibernate.dialect.Dialect)>(r0, r1) 
 ; Statement: if $z0 == 0 goto $r2 = r0 
(assert (= (ite var394 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3462 String var1163) ; Statement: $r2 = r0 
(assert true) ; Non Conditional
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {var2357_isQuoted/-1845873022=([java.lang.String, org.hibernate.dialect.Dialect], boolean)}
; {var1163=r0, var2220=null_type, var3275=org.hibernate.dialect.Dialect, var3943=r1, var2357=org.hibernate.internal.util.StringHelper, var394=$z0, var3462=$r2}
; {r0=var1163, null_type=var2220, org.hibernate.dialect.Dialect=var3275, r1=var3943, org.hibernate.internal.util.StringHelper=var2357, $z0=var394, $r2=var3462}
;seq 
;cnt {}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: org.hibernate.dialect.Dialect;	$z0 = staticinvoke <org.hibernate.internal.util.StringHelper: boolean isQuoted(java.lang.String,org.hibernate.dialect.Dialect)>(r0, r1);	if $z0 == 0 goto $r2 = r0;	$r2 = r0;	return $r2
;block_num 3