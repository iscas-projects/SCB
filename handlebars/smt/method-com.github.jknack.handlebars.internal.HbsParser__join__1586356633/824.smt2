(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2579 0)
(declare-sort var731 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var731_iterator/-912451715 (var731) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2579 var2579)
(declare-const null-var731 var731)
(declare-const var2620 var2579) ; Statement: r7 := @this: com.github.jknack.handlebars.internal.HbsParser 
(assert (not (= var2620 null-var2579)))
(declare-const var2957 var731) ; Statement: r1 := @parameter0: java.util.List 
(assert (not (= var2957 null-var731)))
(define-const var134 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var134)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var134!1 String)
(assert (= var134!1 ""))
(define-const var1641 Iterator (var731_iterator/-912451715 var2957)) ; Statement: r2 = interfaceinvoke r1.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var682 Bool (Iterator_hasNext/-1669924200 var1641)) ; Statement: $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var682 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var3565 String (toString/-2075883882 var134!1)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var731_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2579=com.github.jknack.handlebars.internal.HbsParser, var2620=r7, var731=java.util.List, var2957=r1, var134=$r0, var1641=r2, var682=$z0, var3565=$r3}
; {com.github.jknack.handlebars.internal.HbsParser=var2579, r7=var2620, java.util.List=var731, r1=var2957, $r0=var134, r2=var1641, $z0=var682, $r3=var3565}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r7 := @this: com.github.jknack.handlebars.internal.HbsParser;	r1 := @parameter0: java.util.List;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	r2 = interfaceinvoke r1.<java.util.List: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 3