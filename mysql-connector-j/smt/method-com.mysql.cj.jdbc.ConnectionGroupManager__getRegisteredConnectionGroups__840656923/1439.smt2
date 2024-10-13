(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2020 0)
(declare-sort var3704 0)
(declare-sort var1912 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3704_getGroupsMatching/898460490 (String) var2020)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var2020_iterator/-1617794947 (var2020) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(define-const var1065 var2020 (var3704_getGroupsMatching/898460490 null-String)) ; Statement: r0 = staticinvoke <com.mysql.cj.jdbc.ConnectionGroupManager: java.util.Collection getGroupsMatching(java.lang.String)>(null) 
(define-const var698 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var698)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var698!1 String)
(assert (= var698!1 ""))
(define-const var2316 String "") ; Statement: r7 = "" 
(define-const var2539 Iterator (var2020_iterator/-1617794947 var1065)) ; Statement: r2 = interfaceinvoke r0.<java.util.Collection: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var2055 Bool (Iterator_hasNext/-1669924200 var2539)) ; Statement: $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var2055 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var3763 String (toString/-2075883882 var698!1)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var3704_getGroupsMatching/898460490=([java.lang.String], java.util.Collection), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var2020_iterator/-1617794947=([java.util.Collection], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2020=java.util.Collection, var3704=com.mysql.cj.jdbc.ConnectionGroupManager, var1912=null_type, var1065=r0, var698=$r1, var2316=r7, var2539=r2, var2055=$z0, var3763=$r3}
; {java.util.Collection=var2020, com.mysql.cj.jdbc.ConnectionGroupManager=var3704, null_type=var1912, r0=var1065, $r1=var698, r7=var2316, r2=var2539, $z0=var2055, $r3=var3763}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 = staticinvoke <com.mysql.cj.jdbc.ConnectionGroupManager: java.util.Collection getGroupsMatching(java.lang.String)>(null);	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	r7 = "";	r2 = interfaceinvoke r0.<java.util.Collection: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 3