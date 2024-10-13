(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2773 0)
(declare-sort var168 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var168_iterator/-1617794947 (var168) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2773 var2773)
(declare-const null-var168 var168)
(declare-const var2337 var2773) ; Statement: r6 := @this: freemarker.core.ParseException 
(assert (not (= var2337 null-var2773)))
(declare-const var311 var168) ; Statement: r1 := @parameter0: java.util.Collection 
(assert (not (= var311 null-var168)))
(define-const var1606 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1606)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1606!1 String)
(assert (= var1606!1 ""))
(define-const var2172 Iterator (var168_iterator/-1617794947 var311)) ; Statement: r2 = interfaceinvoke r1.<java.util.Collection: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var2108 Bool (Iterator_hasNext/-1669924200 var2172)) ; Statement: $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var2108 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var2021 String (toString/-2075883882 var1606!1)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var168_iterator/-1617794947=([java.util.Collection], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2773=freemarker.core.ParseException, var2337=r6, var168=java.util.Collection, var311=r1, var1606=$r0, var2172=r2, var2108=$z0, var2021=$r3}
; {freemarker.core.ParseException=var2773, r6=var2337, java.util.Collection=var168, r1=var311, $r0=var1606, r2=var2172, $z0=var2108, $r3=var2021}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: freemarker.core.ParseException;	r1 := @parameter0: java.util.Collection;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	r2 = interfaceinvoke r1.<java.util.Collection: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 3