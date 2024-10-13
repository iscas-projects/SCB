(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3638 0)
(declare-sort var2627 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var2627_getColumnIterator/-1913046240 (var2627) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3638 var3638)
(declare-const null-var2627 var2627)
(declare-const var2646 var3638) ; Statement: r7 := @this: org.hibernate.boot.model.source.internal.hbm.ModelBinder$AbstractPluralAttributeSecondPass 
(assert (not (= var2646 null-var3638)))
(declare-const var3400 var2627) ; Statement: r1 := @parameter0: org.hibernate.mapping.Value 
(assert (not (= var3400 null-var2627)))
(define-const var1868 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1868)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1868!1 String)
(assert (= var1868!1 ""))
(define-const var1083 Iterator (var2627_getColumnIterator/-1913046240 var3400)) ; Statement: r2 = interfaceinvoke r1.<org.hibernate.mapping.Value: java.util.Iterator getColumnIterator()>() 
(assert true) ; Non Conditional
(define-const var2571 Bool (Iterator_hasNext/-1669924200 var1083)) ; Statement: $z1 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z1 == 0 goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var2571 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var3651 String (toString/-2075883882 var1868!1)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var2627_getColumnIterator/-1913046240=([org.hibernate.mapping.Value], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3638=org.hibernate.boot.model.source.internal.hbm.ModelBinder$AbstractPluralAttributeSecondPass, var2646=r7, var2627=org.hibernate.mapping.Value, var3400=r1, var1868=$r0, var1083=r2, var2571=$z1, var3651=$r3}
; {org.hibernate.boot.model.source.internal.hbm.ModelBinder$AbstractPluralAttributeSecondPass=var3638, r7=var2646, org.hibernate.mapping.Value=var2627, r1=var3400, $r0=var1868, r2=var1083, $z1=var2571, $r3=var3651}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r7 := @this: org.hibernate.boot.model.source.internal.hbm.ModelBinder$AbstractPluralAttributeSecondPass;	r1 := @parameter0: org.hibernate.mapping.Value;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	r2 = interfaceinvoke r1.<org.hibernate.mapping.Value: java.util.Iterator getColumnIterator()>();	$z1 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>();	if $z1 == 0 goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 3