(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2861 0)
(declare-sort var1826 0)
(declare-sort var2173 0)
(declare-sort var17 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getAliasLockIterator/-1072175313 (var2173) Iterator)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2861 var2861)
(declare-const null-String String)
(declare-const null-var2173 var2173)
(declare-const null-var17 var17)
(declare-const var2240 var2861) ; Statement: r21 := @this: org.hibernate.dialect.AbstractTransactSQLDialect 
(assert (not (= var2240 null-var2861)))
(declare-const var2028 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var2028 null-String)))
(declare-const var1336 var2173) ; Statement: r0 := @parameter1: org.hibernate.LockOptions 
(assert (not (= var1336 null-var2173)))
(declare-const var1465 var17) ; Statement: r27 := @parameter2: java.util.Map 
(assert (not (= var1465 null-var17)))
(assert true)
(define-const var2977 Iterator (getAliasLockIterator/-1072175313 var1336)) ; Statement: r1 = virtualinvoke r0.<org.hibernate.LockOptions: java.util.Iterator getAliasLockIterator()>() 
(define-const var2005 String String-init) ; Statement: $r29 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var2005 var2028)) ; Statement: specialinvoke $r29.<java.lang.StringBuilder: void <init>(java.lang.String)>(r3) 
(declare-const var2005!1 String)
(assert (= var2005!1 var2028))
(assert true) ; Non Conditional
(define-const var2281 Bool (Iterator_hasNext/-1669924200 var2977)) ; Statement: $z0 = interfaceinvoke r1.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r4 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var2281 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var1466 String (toString/-2075883882 var2005!1)) ; Statement: $r4 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {getAliasLockIterator/-1072175313=([org.hibernate.LockOptions], java.util.Iterator), String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2861=org.hibernate.dialect.AbstractTransactSQLDialect, var2240=r21, var2028=r3, var1826=null_type, var2173=org.hibernate.LockOptions, var1336=r0, var17=java.util.Map, var1465=r27, var2977=r1, var2005=$r29, var2281=$z0, var1466=$r4}
; {org.hibernate.dialect.AbstractTransactSQLDialect=var2861, r21=var2240, r3=var2028, null_type=var1826, org.hibernate.LockOptions=var2173, r0=var1336, java.util.Map=var17, r27=var1465, r1=var2977, $r29=var2005, $z0=var2281, $r4=var1466}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r21 := @this: org.hibernate.dialect.AbstractTransactSQLDialect;	r3 := @parameter0: java.lang.String;	r0 := @parameter1: org.hibernate.LockOptions;	r27 := @parameter2: java.util.Map;	r1 = virtualinvoke r0.<org.hibernate.LockOptions: java.util.Iterator getAliasLockIterator()>();	$r29 = new java.lang.StringBuilder;	specialinvoke $r29.<java.lang.StringBuilder: void <init>(java.lang.String)>(r3);	$z0 = interfaceinvoke r1.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r4 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 3