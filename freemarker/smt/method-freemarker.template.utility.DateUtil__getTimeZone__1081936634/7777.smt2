(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3415 0)
(declare-sort var2157 0)
(declare-sort var2377 0)
(declare-sort var1752 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2157_isGMTish/-2018060208 (String) Bool)
(declare-fun var2377_getTimeZone/1775699487 (String) var2377)
(declare-fun getID/-1323510388 (var2377) String)
(declare-fun var1752-init () var1752)
(declare-fun <init>/705667559 (var1752 String) void)
(declare-const null-String String)
(declare-const var1936 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1936 null-String)))
(define-const var3535 Bool (var2157_isGMTish/-2018060208 var1936)) ; Statement: $z0 = staticinvoke <freemarker.template.utility.DateUtil: boolean isGMTish(java.lang.String)>(r0) 
 ; Statement: if $z0 == 0 goto r1 = staticinvoke <java.util.TimeZone: java.util.TimeZone getTimeZone(java.lang.String)>(r0) 
(assert (= (ite var3535 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3050 var2377 (var2377_getTimeZone/1775699487 var1936)) ; Statement: r1 = staticinvoke <java.util.TimeZone: java.util.TimeZone getTimeZone(java.lang.String)>(r0) 
(assert true)
(define-const var1090 String (getID/-1323510388 var3050)) ; Statement: $r2 = virtualinvoke r1.<java.util.TimeZone: java.lang.String getID()>() 
(define-const var586 Bool (var2157_isGMTish/-2018060208 var1090)) ; Statement: $z1 = staticinvoke <freemarker.template.utility.DateUtil: boolean isGMTish(java.lang.String)>($r2) 
 ; Statement: if $z1 == 0 goto return r1 
(assert (not (= (ite var586 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var2872 var1752 var1752-init) ; Statement: $r3 = new freemarker.template.utility.UnrecognizedTimeZoneException 
(assert true)
;(assert (<init>/705667559 var2872 var1936)) ; Statement: specialinvoke $r3.<freemarker.template.utility.UnrecognizedTimeZoneException: void <init>(java.lang.String)>(r0) 

(declare-const var2872!1 var1752)
(declare-const var1936!1 String)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var2157_isGMTish/-2018060208=([java.lang.String], boolean), var2377_getTimeZone/1775699487=([java.lang.String], java.util.TimeZone), getID/-1323510388=([java.util.TimeZone], java.lang.String), var1752-init=([], freemarker.template.utility.UnrecognizedTimeZoneException), <init>/705667559=([freemarker.template.utility.UnrecognizedTimeZoneException, java.lang.String], void)}
; {var1936=r0, var3415=null_type, var2157=freemarker.template.utility.DateUtil, var3535=$z0, var2377=java.util.TimeZone, var3050=r1, var1090=$r2, var586=$z1, var1752=freemarker.template.utility.UnrecognizedTimeZoneException, var2872=$r3}
; {r0=var1936, null_type=var3415, freemarker.template.utility.DateUtil=var2157, $z0=var3535, java.util.TimeZone=var2377, r1=var3050, $r2=var1090, $z1=var586, freemarker.template.utility.UnrecognizedTimeZoneException=var1752, $r3=var2872}
;seq 
;cnt {}
;stmts r0 := @parameter0: java.lang.String;	$z0 = staticinvoke <freemarker.template.utility.DateUtil: boolean isGMTish(java.lang.String)>(r0);	if $z0 == 0 goto r1 = staticinvoke <java.util.TimeZone: java.util.TimeZone getTimeZone(java.lang.String)>(r0);	r1 = staticinvoke <java.util.TimeZone: java.util.TimeZone getTimeZone(java.lang.String)>(r0);	$r2 = virtualinvoke r1.<java.util.TimeZone: java.lang.String getID()>();	$z1 = staticinvoke <freemarker.template.utility.DateUtil: boolean isGMTish(java.lang.String)>($r2);	if $z1 == 0 goto return r1;	$r3 = new freemarker.template.utility.UnrecognizedTimeZoneException;	specialinvoke $r3.<freemarker.template.utility.UnrecognizedTimeZoneException: void <init>(java.lang.String)>(r0);	throw $r3
;block_num 3