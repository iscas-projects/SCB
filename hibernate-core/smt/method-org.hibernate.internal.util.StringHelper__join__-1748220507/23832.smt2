(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var656 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const null-Iterator Iterator)
(declare-const var811 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var811 null-String)))
(declare-const var2117 Iterator) ; Statement: r1 := @parameter1: java.util.Iterator 
(assert (not (= var2117 null-Iterator)))
(define-const var2693 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2693)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2693!1 String)
(assert (= var2693!1 ""))
(define-const var1130 Bool (Iterator_hasNext/-1669924200 var2117)) ; Statement: $z0 = interfaceinvoke r1.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $z1 = interfaceinvoke r1.<java.util.Iterator: boolean hasNext()>() 
(assert (= (ite var1130 1 0) 0)) ; Cond: $z0 == 0 
(define-const var247 Bool (Iterator_hasNext/-1669924200 var2117)) ; Statement: $z1 = interfaceinvoke r1.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z1 == 0 goto $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var247 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var2057 String (toString/-2075883882 var2693!1)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var811=r3, var656=null_type, var2117=r1, var2693=$r0, var1130=$z0, var247=$z1, var2057=$r2}
; {r3=var811, null_type=var656, r1=var2117, $r0=var2693, $z0=var1130, $z1=var247, $r2=var2057}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @parameter0: java.lang.String;	r1 := @parameter1: java.util.Iterator;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$z0 = interfaceinvoke r1.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $z1 = interfaceinvoke r1.<java.util.Iterator: boolean hasNext()>();	$z1 = interfaceinvoke r1.<java.util.Iterator: boolean hasNext()>();	if $z1 == 0 goto $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 3