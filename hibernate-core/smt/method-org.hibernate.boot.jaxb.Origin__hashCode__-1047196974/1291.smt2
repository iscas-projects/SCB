(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1776 0)
(declare-sort var3056 0)
(declare-sort var3066 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun type/673402333 (var1776) var3056)
(declare-fun name/673402333 (var1776) String)
(declare-const null-var1776 var1776)
(declare-const null-var3056 var3056)
(declare-const null-String String)
(declare-const var1065 var1776) ; Statement: r0 := @this: org.hibernate.boot.jaxb.Origin 
(assert (not (= var1065 null-var1776)))
(define-const var2078 var3056 (type/673402333 var1065)) ; Statement: $r1 = r0.<org.hibernate.boot.jaxb.Origin: org.hibernate.boot.jaxb.SourceType type> 
 ; Statement: if $r1 == null goto $i2 = 0 
(assert (= var2078 null-var3056)) ; Cond: $r1 == null 
(define-const var1888 Int 0) ; Statement: $i2 = 0 
(assert true) ; Non Conditional
(define-const var1034 Int (* 31 var1888)) ; Statement: $i0 = 31 * $i2 
(define-const var1589 String (name/673402333 var1065)) ; Statement: $r2 = r0.<org.hibernate.boot.jaxb.Origin: java.lang.String name> 
 ; Statement: if $r2 == null goto $i3 = 0 
(assert (= var1589 null-String)) ; Cond: $r2 == null 
(define-const var3744 Int 0) ; Statement: $i3 = 0 
(assert true) ; Non Conditional
(define-const var2518 Int (+ var1034 var3744)) ; Statement: $i1 = $i0 + $i3 
 ; Statement: return $i1 
(check-sat)
(get-model)
(get-unsat-core)
; {type/673402333=([org.hibernate.boot.jaxb.Origin], org.hibernate.boot.jaxb.SourceType), name/673402333=([org.hibernate.boot.jaxb.Origin], java.lang.String)}
; {var1776=org.hibernate.boot.jaxb.Origin, var1065=r0, var3056=org.hibernate.boot.jaxb.SourceType, var2078=$r1, var1888=$i2, var1034=$i0, var1589=$r2, var3066=null_type, var3744=$i3, var2518=$i1}
; {org.hibernate.boot.jaxb.Origin=var1776, r0=var1065, org.hibernate.boot.jaxb.SourceType=var3056, $r1=var2078, $i2=var1888, $i0=var1034, $r2=var1589, null_type=var3066, $i3=var3744, $i1=var2518}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.boot.jaxb.Origin;	$r1 = r0.<org.hibernate.boot.jaxb.Origin: org.hibernate.boot.jaxb.SourceType type>;	if $r1 == null goto $i2 = 0;	$i2 = 0;	$i0 = 31 * $i2;	$r2 = r0.<org.hibernate.boot.jaxb.Origin: java.lang.String name>;	if $r2 == null goto $i3 = 0;	$i3 = 0;	$i1 = $i0 + $i3;	return $i1
;block_num 5