(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3537 0)
(declare-sort var2446 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getID/-1323510388 (var2446) String)
(declare-fun compareTo/1411385946 (String String) Int)
(declare-const null-var3537 var3537)
(declare-const null-var2446 var2446)
(declare-const var502 var3537) ; Statement: r4 := @this: org.hibernate.type.descriptor.java.TimeZoneTypeDescriptor$TimeZoneComparator 
(assert (not (= var502 null-var3537)))
(declare-const var1202 var2446) ; Statement: r0 := @parameter0: java.util.TimeZone 
(assert (not (= var1202 null-var2446)))
(declare-const var2812 var2446) ; Statement: r1 := @parameter1: java.util.TimeZone 
(assert (not (= var2812 null-var2446)))
(assert true)
(define-const var3200 String (getID/-1323510388 var1202)) ; Statement: $r3 = virtualinvoke r0.<java.util.TimeZone: java.lang.String getID()>() 
(assert true)
(define-const var854 String (getID/-1323510388 var2812)) ; Statement: $r2 = virtualinvoke r1.<java.util.TimeZone: java.lang.String getID()>() 
(assert true)
(define-const var2233 Int (compareTo/1411385946 var3200 var854)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int compareTo(java.lang.String)>($r2) 
(assert (let ((this<other (str.< var3200 var854)) (this<=other (str.<= var3200 var854)) (compareRes (compareTo/1411385946 var3200 var854))) (or (and (> compareRes 0) (not this<=other)) (and (< compareRes 0) this<other) (and (= compareRes 0) (not this<other) this<=other))))
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {getID/-1323510388=([java.util.TimeZone], java.lang.String), compareTo/1411385946=([java.lang.String, java.lang.String], int)}
; {var3537=org.hibernate.type.descriptor.java.TimeZoneTypeDescriptor$TimeZoneComparator, var502=r4, var2446=java.util.TimeZone, var1202=r0, var2812=r1, var3200=$r3, var854=$r2, var2233=$i0}
; {org.hibernate.type.descriptor.java.TimeZoneTypeDescriptor$TimeZoneComparator=var3537, r4=var502, java.util.TimeZone=var2446, r0=var1202, r1=var2812, $r3=var3200, $r2=var854, $i0=var2233}
;seq <java.lang.String: int compareTo(java.lang.String)>
;cnt {"<java.lang.String: int compareTo(java.lang.String)>": 1}
;stmts r4 := @this: org.hibernate.type.descriptor.java.TimeZoneTypeDescriptor$TimeZoneComparator;	r0 := @parameter0: java.util.TimeZone;	r1 := @parameter1: java.util.TimeZone;	$r3 = virtualinvoke r0.<java.util.TimeZone: java.lang.String getID()>();	$r2 = virtualinvoke r1.<java.util.TimeZone: java.lang.String getID()>();	$i0 = virtualinvoke $r3.<java.lang.String: int compareTo(java.lang.String)>($r2);	return $i0
;block_num 1