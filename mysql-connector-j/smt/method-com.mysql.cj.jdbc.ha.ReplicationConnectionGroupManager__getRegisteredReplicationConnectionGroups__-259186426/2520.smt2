(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var874 0)
(declare-sort var2901 0)
(declare-sort var760 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2901_getGroupsMatching/-187402317 (String) var874)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var874_iterator/-1617794947 (var874) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(define-const var2889 var874 (var2901_getGroupsMatching/-187402317 null-String)) ; Statement: r0 = staticinvoke <com.mysql.cj.jdbc.ha.ReplicationConnectionGroupManager: java.util.Collection getGroupsMatching(java.lang.String)>(null) 
(define-const var1889 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1889)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1889!1 String)
(assert (= var1889!1 ""))
(define-const var1598 String "") ; Statement: r7 = "" 
(define-const var1284 Iterator (var874_iterator/-1617794947 var2889)) ; Statement: r2 = interfaceinvoke r0.<java.util.Collection: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var134 Bool (Iterator_hasNext/-1669924200 var1284)) ; Statement: $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var134 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var1464 String (toString/-2075883882 var1889!1)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var2901_getGroupsMatching/-187402317=([java.lang.String], java.util.Collection), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var874_iterator/-1617794947=([java.util.Collection], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var874=java.util.Collection, var2901=com.mysql.cj.jdbc.ha.ReplicationConnectionGroupManager, var760=null_type, var2889=r0, var1889=$r1, var1598=r7, var1284=r2, var134=$z0, var1464=$r3}
; {java.util.Collection=var874, com.mysql.cj.jdbc.ha.ReplicationConnectionGroupManager=var2901, null_type=var760, r0=var2889, $r1=var1889, r7=var1598, r2=var1284, $z0=var134, $r3=var1464}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 = staticinvoke <com.mysql.cj.jdbc.ha.ReplicationConnectionGroupManager: java.util.Collection getGroupsMatching(java.lang.String)>(null);	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	r7 = "";	r2 = interfaceinvoke r0.<java.util.Collection: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 3