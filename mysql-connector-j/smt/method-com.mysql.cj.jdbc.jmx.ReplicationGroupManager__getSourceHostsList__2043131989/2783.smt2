(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var592 0)
(declare-sort var825 0)
(declare-sort var504 0)
(declare-sort var2626 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun var2626_getSourceHosts/1824025744 (String) var504)
(declare-fun var504_iterator/-1617794947 (var504) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var592 var592)
(declare-const null-String String)
(declare-const var954 var592) ; Statement: r7 := @this: com.mysql.cj.jdbc.jmx.ReplicationGroupManager 
(assert (not (= var954 null-var592)))
(declare-const var1423 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1423 null-String)))
(define-const var193 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var193 "")) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("") 
(declare-const var193!1 String)
(assert (= var193!1 ""))
(define-const var1656 Bool (ite (= 1 0) true false)) ; Statement: z1 = 0 
(define-const var3148 var504 (var2626_getSourceHosts/1824025744 var1423)) ; Statement: $r2 = staticinvoke <com.mysql.cj.jdbc.ha.ReplicationConnectionGroupManager: java.util.Collection getSourceHosts(java.lang.String)>(r1) 
(define-const var2582 Iterator (var504_iterator/-1617794947 var3148)) ; Statement: r3 = interfaceinvoke $r2.<java.util.Collection: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var702 Bool (Iterator_hasNext/-1669924200 var2582)) ; Statement: $z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var702 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var693 String (toString/-2075883882 var193!1)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), var2626_getSourceHosts/1824025744=([java.lang.String], java.util.Collection), var504_iterator/-1617794947=([java.util.Collection], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var592=com.mysql.cj.jdbc.jmx.ReplicationGroupManager, var954=r7, var1423=r1, var825=null_type, var193=$r0, var1656=z1, var504=java.util.Collection, var2626=com.mysql.cj.jdbc.ha.ReplicationConnectionGroupManager, var3148=$r2, var2582=r3, var702=$z0, var693=$r4}
; {com.mysql.cj.jdbc.jmx.ReplicationGroupManager=var592, r7=var954, r1=var1423, null_type=var825, $r0=var193, z1=var1656, java.util.Collection=var504, com.mysql.cj.jdbc.ha.ReplicationConnectionGroupManager=var2626, $r2=var3148, r3=var2582, $z0=var702, $r4=var693}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r7 := @this: com.mysql.cj.jdbc.jmx.ReplicationGroupManager;	r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("");	z1 = 0;	$r2 = staticinvoke <com.mysql.cj.jdbc.ha.ReplicationConnectionGroupManager: java.util.Collection getSourceHosts(java.lang.String)>(r1);	r3 = interfaceinvoke $r2.<java.util.Collection: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 3