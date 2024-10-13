(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1955 0)
(declare-sort var3338 0)
(declare-sort var999 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun availableSettings/-576726194 (var1955) var3338)
(declare-fun var3338_values/371402559 (var3338) var999)
(declare-fun var999_iterator/-1617794947 (var999) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1955 var1955)
(declare-const var2343 var1955) ; Statement: r1 := @this: jdk.jfr.internal.SettingsManager 
(assert (not (= var2343 null-var1955)))
(define-const var1686 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1686)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1686!1 String)
(assert (= var1686!1 ""))
(define-const var328 var3338 (availableSettings/-576726194 var2343)) ; Statement: $r2 = r1.<jdk.jfr.internal.SettingsManager: java.util.Map availableSettings> 
(define-const var1279 var999 (var3338_values/371402559 var328)) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map: java.util.Collection values()>() 
(define-const var2898 Iterator (var999_iterator/-1617794947 var1279)) ; Statement: r4 = interfaceinvoke $r3.<java.util.Collection: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var2649 Bool (Iterator_hasNext/-1669924200 var2898)) ; Statement: $z0 = interfaceinvoke r4.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var2649 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var704 String (toString/-2075883882 var1686!1)) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), availableSettings/-576726194=([jdk.jfr.internal.SettingsManager], java.util.Map), var3338_values/371402559=([java.util.Map], java.util.Collection), var999_iterator/-1617794947=([java.util.Collection], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1955=jdk.jfr.internal.SettingsManager, var2343=r1, var1686=$r0, var3338=java.util.Map, var328=$r2, var999=java.util.Collection, var1279=$r3, var2898=r4, var2649=$z0, var704=$r5}
; {jdk.jfr.internal.SettingsManager=var1955, r1=var2343, $r0=var1686, java.util.Map=var3338, $r2=var328, java.util.Collection=var999, $r3=var1279, r4=var2898, $z0=var2649, $r5=var704}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.jfr.internal.SettingsManager;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<jdk.jfr.internal.SettingsManager: java.util.Map availableSettings>;	$r3 = interfaceinvoke $r2.<java.util.Map: java.util.Collection values()>();	r4 = interfaceinvoke $r3.<java.util.Collection: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r4.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 3