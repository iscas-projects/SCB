(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var136 0)
(declare-sort var1080 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun timeZoneId/-592866550 (var136) String)
(declare-fun var1080_getTimeZone/1775699487 (String) var1080)
(declare-fun getID/-1323510388 (var1080) String)
(declare-const null-var136 var136)
(declare-const var871 var136) ; Statement: r0 := @this: freemarker.core._TimeZoneBuilder 
(assert (not (= var871 null-var136)))
(define-const var3639 String (timeZoneId/-592866550 var871)) ; Statement: $r1 = r0.<freemarker.core._TimeZoneBuilder: java.lang.String timeZoneId> 
(define-const var1758 var1080 (var1080_getTimeZone/1775699487 var3639)) ; Statement: r2 = staticinvoke <java.util.TimeZone: java.util.TimeZone getTimeZone(java.lang.String)>($r1) 
(assert true)
(define-const var3975 String (getID/-1323510388 var1758)) ; Statement: $r3 = virtualinvoke r2.<java.util.TimeZone: java.lang.String getID()>() 
(assert true)
(define-const var867 Bool (= var3975 "GMT")) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>("GMT") 
 ; Statement: if $z0 == 0 goto return r2 
(assert (= (ite var867 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return r2 
(check-sat)
(get-model)
(get-unsat-core)
; {timeZoneId/-592866550=([freemarker.core._TimeZoneBuilder], java.lang.String), var1080_getTimeZone/1775699487=([java.lang.String], java.util.TimeZone), getID/-1323510388=([java.util.TimeZone], java.lang.String)}
; {var136=freemarker.core._TimeZoneBuilder, var871=r0, var3639=$r1, var1080=java.util.TimeZone, var1758=r2, var3975=$r3, var867=$z0}
; {freemarker.core._TimeZoneBuilder=var136, r0=var871, $r1=var3639, java.util.TimeZone=var1080, r2=var1758, $r3=var3975, $z0=var867}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: freemarker.core._TimeZoneBuilder;	$r1 = r0.<freemarker.core._TimeZoneBuilder: java.lang.String timeZoneId>;	r2 = staticinvoke <java.util.TimeZone: java.util.TimeZone getTimeZone(java.lang.String)>($r1);	$r3 = virtualinvoke r2.<java.util.TimeZone: java.lang.String getID()>();	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>("GMT");	if $z0 == 0 goto return r2;	return r2
;block_num 2