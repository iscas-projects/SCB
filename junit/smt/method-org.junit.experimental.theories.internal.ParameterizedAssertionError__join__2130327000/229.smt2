(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var759 0)
(declare-sort var3261 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var3261_iterator/-1617794947 (var3261) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const null-var3261 var3261)
(declare-const var446 String) ; Statement: r6 := @parameter0: java.lang.String 
(assert (not (= var446 null-String)))
(declare-const var1834 var3261) ; Statement: r1 := @parameter1: java.util.Collection 
(assert (not (= var1834 null-var3261)))
(define-const var1966 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1966)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1966!1 String)
(assert (= var1966!1 ""))
(define-const var802 Iterator (var3261_iterator/-1617794947 var1834)) ; Statement: r2 = interfaceinvoke r1.<java.util.Collection: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var406 Bool (Iterator_hasNext/-1669924200 var802)) ; Statement: $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var406 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var2596 String (toString/-2075883882 var1966!1)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var3261_iterator/-1617794947=([java.util.Collection], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var446=r6, var759=null_type, var3261=java.util.Collection, var1834=r1, var1966=$r0, var802=r2, var406=$z0, var2596=$r3}
; {r6=var446, null_type=var759, java.util.Collection=var3261, r1=var1834, $r0=var1966, r2=var802, $z0=var406, $r3=var2596}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @parameter0: java.lang.String;	r1 := @parameter1: java.util.Collection;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	r2 = interfaceinvoke r1.<java.util.Collection: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 3