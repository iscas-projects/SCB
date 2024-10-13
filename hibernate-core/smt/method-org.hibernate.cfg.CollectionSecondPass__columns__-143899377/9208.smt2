(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var989 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var989_getColumnIterator/-1913046240 (var989) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var989 var989)
(declare-const var2593 var989) ; Statement: r1 := @parameter0: org.hibernate.mapping.Value 
(assert (not (= var2593 null-var989)))
(define-const var3699 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3699)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3699!1 String)
(assert (= var3699!1 ""))
(define-const var2238 Iterator (var989_getColumnIterator/-1913046240 var2593)) ; Statement: r2 = interfaceinvoke r1.<org.hibernate.mapping.Value: java.util.Iterator getColumnIterator()>() 
(assert true) ; Non Conditional
(define-const var1078 Bool (Iterator_hasNext/-1669924200 var2238)) ; Statement: $z1 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z1 == 0 goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var1078 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var3313 String (toString/-2075883882 var3699!1)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var989_getColumnIterator/-1913046240=([org.hibernate.mapping.Value], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var989=org.hibernate.mapping.Value, var2593=r1, var3699=$r0, var2238=r2, var1078=$z1, var3313=$r3}
; {org.hibernate.mapping.Value=var989, r1=var2593, $r0=var3699, r2=var2238, $z1=var1078, $r3=var3313}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: org.hibernate.mapping.Value;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	r2 = interfaceinvoke r1.<org.hibernate.mapping.Value: java.util.Iterator getColumnIterator()>();	$z1 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>();	if $z1 == 0 goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 3