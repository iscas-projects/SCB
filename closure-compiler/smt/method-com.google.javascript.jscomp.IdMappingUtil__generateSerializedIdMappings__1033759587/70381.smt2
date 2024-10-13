(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1521 0)
(declare-sort var3279 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var1521_entrySet/1101202697 (var1521) var3279)
(declare-fun var3279_iterator/1911472585 (var3279) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1521 var1521)
(declare-const var3087 var1521) ; Statement: r1 := @parameter0: java.util.Map 
(assert (not (= var3087 null-var1521)))
(define-const var3340 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3340)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3340!1 String)
(assert (= var3340!1 ""))
(define-const var3280 var3279 (var1521_entrySet/1101202697 var3087)) ; Statement: $r2 = interfaceinvoke r1.<java.util.Map: java.util.Set entrySet()>() 
(define-const var13 Iterator (var3279_iterator/1911472585 var3280)) ; Statement: r3 = interfaceinvoke $r2.<java.util.Set: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var57 Bool (Iterator_hasNext/-1669924200 var13)) ; Statement: $z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var57 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var3275 String (toString/-2075883882 var3340!1)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var1521_entrySet/1101202697=([java.util.Map], java.util.Set), var3279_iterator/1911472585=([java.util.Set], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1521=java.util.Map, var3087=r1, var3340=$r0, var3279=java.util.Set, var3280=$r2, var13=r3, var57=$z0, var3275=$r4}
; {java.util.Map=var1521, r1=var3087, $r0=var3340, java.util.Set=var3279, $r2=var3280, r3=var13, $z0=var57, $r4=var3275}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.util.Map;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = interfaceinvoke r1.<java.util.Map: java.util.Set entrySet()>();	r3 = interfaceinvoke $r2.<java.util.Set: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 3