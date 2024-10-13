(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1345 0)
(declare-sort var2726 0)
(declare-sort var788 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2726_isGMTish/-2018060208 (String) Bool)
(declare-fun var788_getTimeZone/1775699487 (String) var788)
(declare-fun getID/-1323510388 (var788) String)
(declare-const null-String String)
(declare-const var263 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var263 null-String)))
(define-const var2226 Bool (var2726_isGMTish/-2018060208 var263)) ; Statement: $z0 = staticinvoke <freemarker.template.utility.DateUtil: boolean isGMTish(java.lang.String)>(r0) 
 ; Statement: if $z0 == 0 goto r1 = staticinvoke <java.util.TimeZone: java.util.TimeZone getTimeZone(java.lang.String)>(r0) 
(assert (= (ite var2226 1 0) 0)) ; Cond: $z0 == 0 
(define-const var932 var788 (var788_getTimeZone/1775699487 var263)) ; Statement: r1 = staticinvoke <java.util.TimeZone: java.util.TimeZone getTimeZone(java.lang.String)>(r0) 
(assert true)
(define-const var3611 String (getID/-1323510388 var932)) ; Statement: $r2 = virtualinvoke r1.<java.util.TimeZone: java.lang.String getID()>() 
(define-const var1063 Bool (var2726_isGMTish/-2018060208 var3611)) ; Statement: $z1 = staticinvoke <freemarker.template.utility.DateUtil: boolean isGMTish(java.lang.String)>($r2) 
 ; Statement: if $z1 == 0 goto return r1 
(assert (= (ite var1063 1 0) 0)) ; Cond: $z1 == 0 
 ; Statement: return r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var2726_isGMTish/-2018060208=([java.lang.String], boolean), var788_getTimeZone/1775699487=([java.lang.String], java.util.TimeZone), getID/-1323510388=([java.util.TimeZone], java.lang.String)}
; {var263=r0, var1345=null_type, var2726=freemarker.template.utility.DateUtil, var2226=$z0, var788=java.util.TimeZone, var932=r1, var3611=$r2, var1063=$z1}
; {r0=var263, null_type=var1345, freemarker.template.utility.DateUtil=var2726, $z0=var2226, java.util.TimeZone=var788, r1=var932, $r2=var3611, $z1=var1063}
;seq 
;cnt {}
;stmts r0 := @parameter0: java.lang.String;	$z0 = staticinvoke <freemarker.template.utility.DateUtil: boolean isGMTish(java.lang.String)>(r0);	if $z0 == 0 goto r1 = staticinvoke <java.util.TimeZone: java.util.TimeZone getTimeZone(java.lang.String)>(r0);	r1 = staticinvoke <java.util.TimeZone: java.util.TimeZone getTimeZone(java.lang.String)>(r0);	$r2 = virtualinvoke r1.<java.util.TimeZone: java.lang.String getID()>();	$z1 = staticinvoke <freemarker.template.utility.DateUtil: boolean isGMTish(java.lang.String)>($r2);	if $z1 == 0 goto return r1;	return r1
;block_num 3