(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var510 0)
(declare-sort var1646 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var510_iterator/-912451715 (var510) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun length/-171891354 (String) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var510 var510)
(declare-const null-var1646 var1646)
(declare-const var117 var510) ; Statement: r1 := @parameter0: java.util.List 
(assert (not (= var117 null-var510)))
(define-const var434 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var434)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var434!1 String)
(assert (= var434!1 ""))
(define-const var2420 Iterator (var510_iterator/-912451715 var117)) ; Statement: r2 = interfaceinvoke r1.<java.util.List: java.util.Iterator iterator()>() 
(define-const var1189 var1646 null-var1646) ; Statement: r16 = null 
(assert true) ; Non Conditional
(define-const var2577 Bool (Iterator_hasNext/-1669924200 var2420)) ; Statement: $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $i0 = virtualinvoke $r0.<java.lang.StringBuilder: int length()>() 
(assert (= (ite var2577 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var805 Int (length/-171891354 var434!1)) ; Statement: $i0 = virtualinvoke $r0.<java.lang.StringBuilder: int length()>() 
 ; Statement: if $i0 <= 0 goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (<= var805 0)) ; Cond: $i0 <= 0 
(assert true)
(define-const var466 String (toString/-2075883882 var434!1)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var510_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), length/-171891354=([java.lang.StringBuilder], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var510=java.util.List, var117=r1, var434=$r0, var2420=r2, var1646=org.hibernate.loader.OuterJoinableAssociation, var1189=r16, var2577=$z0, var805=$i0, var466=$r3}
; {java.util.List=var510, r1=var117, $r0=var434, r2=var2420, org.hibernate.loader.OuterJoinableAssociation=var1646, r16=var1189, $z0=var2577, $i0=var805, $r3=var466}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: int length()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: int length()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.util.List;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	r2 = interfaceinvoke r1.<java.util.List: java.util.Iterator iterator()>();	r16 = null;	$z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $i0 = virtualinvoke $r0.<java.lang.StringBuilder: int length()>();	$i0 = virtualinvoke $r0.<java.lang.StringBuilder: int length()>();	if $i0 <= 0 goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 4