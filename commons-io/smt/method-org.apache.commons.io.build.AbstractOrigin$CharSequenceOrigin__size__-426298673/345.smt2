(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3464 0)
(declare-sort var3977 0)
(declare-sort var782 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun origin/-439761164 (var782) var3977)
(declare-fun cast-from-var3464-to-var782 (var3464) var782)
(declare-fun cast-from-var3977-to-String (var3977) String)
(declare-fun String_length/-667254855 (String) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var3464 var3464)
(declare-const var165 var3464) ; Statement: r0 := @this: org.apache.commons.io.build.AbstractOrigin$CharSequenceOrigin 
(assert (not (= var165 null-var3464)))
(define-const var140 var3977 (origin/-439761164 (cast-from-var3464-to-var782 var165))) ; Statement: $r1 = r0.<org.apache.commons.io.build.AbstractOrigin$CharSequenceOrigin: java.lang.Object origin> 
(define-const var1591 String (cast-from-var3977-to-String var140)) ; Statement: $r2 = (java.lang.CharSequence) $r1 
(define-const var3987 Int (String_length/-667254855 var1591)) ; Statement: $i0 = interfaceinvoke $r2.<java.lang.CharSequence: int length()>() 
(define-const var594 Int (cast-from-Int-to-Int var3987)) ; Statement: $l1 = (long) $i0 
 ; Statement: return $l1 
(check-sat)
(get-model)
(get-unsat-core)
; {origin/-439761164=([org.apache.commons.io.build.AbstractOrigin], java.lang.Object), cast-from-var3464-to-var782=([org.apache.commons.io.build.AbstractOrigin$CharSequenceOrigin], org.apache.commons.io.build.AbstractOrigin), cast-from-var3977-to-String=([java.lang.Object], java.lang.CharSequence), String_length/-667254855=([java.lang.CharSequence], int), cast-from-Int-to-Int=([int], long)}
; {var3464=org.apache.commons.io.build.AbstractOrigin$CharSequenceOrigin, var165=r0, var3977=java.lang.Object, var782=org.apache.commons.io.build.AbstractOrigin, var140=$r1, var1591=$r2, var3987=$i0, var594=$l1}
; {org.apache.commons.io.build.AbstractOrigin$CharSequenceOrigin=var3464, r0=var165, java.lang.Object=var3977, org.apache.commons.io.build.AbstractOrigin=var782, $r1=var140, $r2=var1591, $i0=var3987, $l1=var594}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r0 := @this: org.apache.commons.io.build.AbstractOrigin$CharSequenceOrigin;	$r1 = r0.<org.apache.commons.io.build.AbstractOrigin$CharSequenceOrigin: java.lang.Object origin>;	$r2 = (java.lang.CharSequence) $r1;	$i0 = interfaceinvoke $r2.<java.lang.CharSequence: int length()>();	$l1 = (long) $i0;	return $l1
;block_num 1