(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2474 0)
(declare-sort var69 0)
(declare-sort var1416 0)
(declare-sort var3373 0)
(declare-sort var3788 0)
(declare-sort var1219 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1416_getGroupsMatching/898460490 (String) var69)
(declare-fun var3373-init () var3373)
(declare-fun <init>/-201242697 (var3373) void)
(declare-fun var69_iterator/-1617794947 (var69) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var1219_keySet/-712633290 (var1219) var3788)
(declare-fun cast-from-var3373-to-var1219 (var3373) var1219)
(declare-fun var3788_iterator/1911472585 (var3788) Iterator)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const var1611 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1611 null-String)))
(define-const var3211 var69 (var1416_getGroupsMatching/898460490 var1611)) ; Statement: r1 = staticinvoke <com.mysql.cj.jdbc.ConnectionGroupManager: java.util.Collection getGroupsMatching(java.lang.String)>(r0) 
(define-const var1446 var3373 var3373-init) ; Statement: $r2 = new java.util.HashMap 
(assert true)
;(assert (<init>/-201242697 var1446)) ; Statement: specialinvoke $r2.<java.util.HashMap: void <init>()>() 

(declare-const var1446!1 var3373)
(define-const var3378 Iterator (var69_iterator/-1617794947 var3211)) ; Statement: r12 = interfaceinvoke r1.<java.util.Collection: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var3423 Bool (Iterator_hasNext/-1669924200 var3378)) ; Statement: $z0 = interfaceinvoke r12.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r3 = new java.lang.StringBuilder 
(assert (= (ite var3423 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1875 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1875)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1875!1 String)
(assert (= var1875!1 ""))
(define-const var1651 String "") ; Statement: r18 = "" 
(define-const var2041 var3788 (var1219_keySet/-712633290 (cast-from-var3373-to-var1219 var1446!1))) ; Statement: $r4 = interfaceinvoke $r2.<java.util.Map: java.util.Set keySet()>() 
(define-const var3823 Iterator (var3788_iterator/1911472585 var2041)) ; Statement: r19 = interfaceinvoke $r4.<java.util.Set: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var1860 Bool (Iterator_hasNext/-1669924200 var3823)) ; Statement: $z1 = interfaceinvoke r19.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z1 == 0 goto $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var1860 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var652 String (toString/-2075883882 var1875!1)) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {var1416_getGroupsMatching/898460490=([java.lang.String], java.util.Collection), var3373-init=([], java.util.HashMap), <init>/-201242697=([java.util.HashMap], void), var69_iterator/-1617794947=([java.util.Collection], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var1219_keySet/-712633290=([java.util.Map], java.util.Set), cast-from-var3373-to-var1219=([java.util.HashMap], java.util.Map), var3788_iterator/1911472585=([java.util.Set], java.util.Iterator), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1611=r0, var2474=null_type, var69=java.util.Collection, var1416=com.mysql.cj.jdbc.ConnectionGroupManager, var3211=r1, var3373=java.util.HashMap, var1446=$r2, var3378=r12, var3423=$z0, var1875=$r3, var1651=r18, var3788=java.util.Set, var1219=java.util.Map, var2041=$r4, var3823=r19, var1860=$z1, var652=$r5}
; {r0=var1611, null_type=var2474, java.util.Collection=var69, com.mysql.cj.jdbc.ConnectionGroupManager=var1416, r1=var3211, java.util.HashMap=var3373, $r2=var1446, r12=var3378, $z0=var3423, $r3=var1875, r18=var1651, java.util.Set=var3788, java.util.Map=var1219, $r4=var2041, r19=var3823, $z1=var1860, $r5=var652}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 = staticinvoke <com.mysql.cj.jdbc.ConnectionGroupManager: java.util.Collection getGroupsMatching(java.lang.String)>(r0);	$r2 = new java.util.HashMap;	specialinvoke $r2.<java.util.HashMap: void <init>()>();	r12 = interfaceinvoke r1.<java.util.Collection: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r12.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r3 = new java.lang.StringBuilder;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	r18 = "";	$r4 = interfaceinvoke $r2.<java.util.Map: java.util.Set keySet()>();	r19 = interfaceinvoke $r4.<java.util.Set: java.util.Iterator iterator()>();	$z1 = interfaceinvoke r19.<java.util.Iterator: boolean hasNext()>();	if $z1 == 0 goto $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 5