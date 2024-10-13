(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1662 0)
(declare-sort var3604 0)
(declare-sort var2911 0)
(declare-sort var1258 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun var1258_getReplicaHosts/-1609953039 (String) var2911)
(declare-fun var2911_iterator/-1617794947 (var2911) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1662 var1662)
(declare-const null-String String)
(declare-const var738 var1662) ; Statement: r7 := @this: com.mysql.cj.jdbc.jmx.ReplicationGroupManager 
(assert (not (= var738 null-var1662)))
(declare-const var824 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var824 null-String)))
(define-const var2334 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var2334 "")) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("") 
(declare-const var2334!1 String)
(assert (= var2334!1 ""))
(define-const var837 Bool (ite (= 1 0) true false)) ; Statement: z1 = 0 
(define-const var388 var2911 (var1258_getReplicaHosts/-1609953039 var824)) ; Statement: $r2 = staticinvoke <com.mysql.cj.jdbc.ha.ReplicationConnectionGroupManager: java.util.Collection getReplicaHosts(java.lang.String)>(r1) 
(define-const var941 Iterator (var2911_iterator/-1617794947 var388)) ; Statement: r3 = interfaceinvoke $r2.<java.util.Collection: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var517 Bool (Iterator_hasNext/-1669924200 var941)) ; Statement: $z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var517 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var3137 String (toString/-2075883882 var2334!1)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), var1258_getReplicaHosts/-1609953039=([java.lang.String], java.util.Collection), var2911_iterator/-1617794947=([java.util.Collection], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1662=com.mysql.cj.jdbc.jmx.ReplicationGroupManager, var738=r7, var824=r1, var3604=null_type, var2334=$r0, var837=z1, var2911=java.util.Collection, var1258=com.mysql.cj.jdbc.ha.ReplicationConnectionGroupManager, var388=$r2, var941=r3, var517=$z0, var3137=$r4}
; {com.mysql.cj.jdbc.jmx.ReplicationGroupManager=var1662, r7=var738, r1=var824, null_type=var3604, $r0=var2334, z1=var837, java.util.Collection=var2911, com.mysql.cj.jdbc.ha.ReplicationConnectionGroupManager=var1258, $r2=var388, r3=var941, $z0=var517, $r4=var3137}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r7 := @this: com.mysql.cj.jdbc.jmx.ReplicationGroupManager;	r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("");	z1 = 0;	$r2 = staticinvoke <com.mysql.cj.jdbc.ha.ReplicationConnectionGroupManager: java.util.Collection getReplicaHosts(java.lang.String)>(r1);	r3 = interfaceinvoke $r2.<java.util.Collection: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 3