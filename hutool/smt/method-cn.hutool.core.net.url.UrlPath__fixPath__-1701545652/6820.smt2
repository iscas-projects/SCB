(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3862 0)
(declare-sort var715 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var3862-init () (Array Int var3862))
(declare-fun var715_notNull/515149844 (var3862 String (Array Int var3862)) var3862)
(declare-fun cast-from-String-to-var3862 (String) var3862)
(declare-fun contentEquals/508533967 (String String) Bool)
(declare-const null-String String)
(declare-const var381 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var381 null-String)))
(define-const var3541 (Array Int var3862) arr-var3862-init) ; Statement: $r1 = newarray (java.lang.Object)[0] 
;(assert (var715_notNull/515149844 (cast-from-String-to-var3862 var381) "Path segment must be not null!" var3541)) ; Statement: staticinvoke <cn.hutool.core.lang.Assert: java.lang.Object notNull(java.lang.Object,java.lang.String,java.lang.Object[])>(r0, "Path segment must be not null!", $r1) 

(declare-const var381!1 String)
(declare-const var344 String)
(declare-const var3541!1 (Array Int var3862))
(define-const var1398 String "/") ; Statement: $r2 = "/" 
(assert true)
(define-const var3012 Bool (contentEquals/508533967 var1398 var381!1)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean contentEquals(java.lang.CharSequence)>(r0) 
 ; Statement: if $z0 == 0 goto r3 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String trim(java.lang.CharSequence)>(r0) 
(assert (not (= (ite var3012 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return "" 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var3862-init=([], java.lang.Object[]), var715_notNull/515149844=([java.lang.Object, java.lang.String, java.lang.Object[]], java.lang.Object), cast-from-String-to-var3862=([java.lang.CharSequence], java.lang.Object), contentEquals/508533967=([java.lang.String, java.lang.CharSequence], boolean)}
; {var381=r0, var3862=java.lang.Object, var3541=$r1, var715=cn.hutool.core.lang.Assert, var344="Path segment must be not null!", var1398=$r2, var3012=$z0}
; {r0=var381, java.lang.Object=var3862, $r1=var3541, cn.hutool.core.lang.Assert=var715, "Path segment must be not null!"=var344, $r2=var1398, $z0=var3012}
;seq <java.lang.String: boolean contentEquals(java.lang.CharSequence)>
;cnt {"<java.lang.String: boolean contentEquals(java.lang.CharSequence)>": 1}
;stmts r0 := @parameter0: java.lang.CharSequence;	$r1 = newarray (java.lang.Object)[0];	staticinvoke <cn.hutool.core.lang.Assert: java.lang.Object notNull(java.lang.Object,java.lang.String,java.lang.Object[])>(r0, "Path segment must be not null!", $r1);	$r2 = "/";	$z0 = virtualinvoke $r2.<java.lang.String: boolean contentEquals(java.lang.CharSequence)>(r0);	if $z0 == 0 goto r3 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String trim(java.lang.CharSequence)>(r0);	return ""
;block_num 2