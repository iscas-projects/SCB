(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3456 0)
(declare-sort var1828 0)
(declare-sort var565 0)
(declare-sort var2791 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun var565_getGroupsMatching/-187402317 (String) var1828)
(declare-fun var1828_iterator/-1617794947 (var1828) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3456 var3456)
(declare-const null-String String)
(declare-const var799 var3456) ; Statement: r7 := @this: com.mysql.cj.jdbc.jmx.ReplicationGroupManager 
(assert (not (= var799 null-var3456)))
(define-const var3681 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var3681 "")) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("") 
(declare-const var3681!1 String)
(assert (= var3681!1 ""))
(define-const var3377 Bool (ite (= 1 0) true false)) ; Statement: z1 = 0 
(define-const var2232 var1828 (var565_getGroupsMatching/-187402317 null-String)) ; Statement: $r1 = staticinvoke <com.mysql.cj.jdbc.ha.ReplicationConnectionGroupManager: java.util.Collection getGroupsMatching(java.lang.String)>(null) 
(define-const var901 Iterator (var1828_iterator/-1617794947 var2232)) ; Statement: r2 = interfaceinvoke $r1.<java.util.Collection: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var3568 Bool (Iterator_hasNext/-1669924200 var901)) ; Statement: $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var3568 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var1045 String (toString/-2075883882 var3681!1)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), var565_getGroupsMatching/-187402317=([java.lang.String], java.util.Collection), var1828_iterator/-1617794947=([java.util.Collection], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3456=com.mysql.cj.jdbc.jmx.ReplicationGroupManager, var799=r7, var3681=$r0, var3377=z1, var1828=java.util.Collection, var565=com.mysql.cj.jdbc.ha.ReplicationConnectionGroupManager, var2791=null_type, var2232=$r1, var901=r2, var3568=$z0, var1045=$r3}
; {com.mysql.cj.jdbc.jmx.ReplicationGroupManager=var3456, r7=var799, $r0=var3681, z1=var3377, java.util.Collection=var1828, com.mysql.cj.jdbc.ha.ReplicationConnectionGroupManager=var565, null_type=var2791, $r1=var2232, r2=var901, $z0=var3568, $r3=var1045}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r7 := @this: com.mysql.cj.jdbc.jmx.ReplicationGroupManager;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("");	z1 = 0;	$r1 = staticinvoke <com.mysql.cj.jdbc.ha.ReplicationConnectionGroupManager: java.util.Collection getGroupsMatching(java.lang.String)>(null);	r2 = interfaceinvoke $r1.<java.util.Collection: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 3