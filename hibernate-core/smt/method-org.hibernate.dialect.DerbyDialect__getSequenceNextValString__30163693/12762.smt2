(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1030 0)
(declare-sort var2717 0)
(declare-sort var2480 0)
(declare-sort var1126 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun supportsSequences/-1652402059 (var1030) Bool)
(declare-fun var2480-init () var2480)
(declare-fun <init>/-1350304819 (var2480 String) void)
(declare-fun cast-from-var2480-to-var1126 (var2480) var1126)
(declare-const null-var1030 var1030)
(declare-const null-String String)
(declare-const var2212 var1030) ; Statement: r0 := @this: org.hibernate.dialect.DerbyDialect 
(assert (not (= var2212 null-var1030)))
(declare-const var2596 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var2596 null-String)))
(assert true)
(define-const var3341 Bool (supportsSequences/-1652402059 var2212)) ; Statement: $z0 = virtualinvoke r0.<org.hibernate.dialect.DerbyDialect: boolean supportsSequences()>() 
 ; Statement: if $z0 == 0 goto $r8 = new org.hibernate.MappingException 
(assert (= (ite var3341 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2777 var2480 var2480-init) ; Statement: $r8 = new org.hibernate.MappingException 
(assert true)
;(assert (<init>/-1350304819 var2777 "Derby does not support sequence prior to release 10.6.1.0")) ; Statement: specialinvoke $r8.<org.hibernate.MappingException: void <init>(java.lang.String)>("Derby does not support sequence prior to release 10.6.1.0") 

(declare-const var2777!1 var2480)
(declare-const var223 String)
(define-const var2143 var1126 (cast-from-var2480-to-var1126 var2777!1)) ; Statement: $r9 = (java.lang.Throwable) $r8 
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {supportsSequences/-1652402059=([org.hibernate.dialect.DerbyDialect], boolean), var2480-init=([], org.hibernate.MappingException), <init>/-1350304819=([org.hibernate.MappingException, java.lang.String], void), cast-from-var2480-to-var1126=([org.hibernate.MappingException], java.lang.Throwable)}
; {var1030=org.hibernate.dialect.DerbyDialect, var2212=r0, var2596=r3, var2717=null_type, var3341=$z0, var2480=org.hibernate.MappingException, var2777=$r8, var223="Derby does not support sequence prior to release 10.6.1.0", var1126=java.lang.Throwable, var2143=$r9}
; {org.hibernate.dialect.DerbyDialect=var1030, r0=var2212, r3=var2596, null_type=var2717, $z0=var3341, org.hibernate.MappingException=var2480, $r8=var2777, "Derby does not support sequence prior to release 10.6.1.0"=var223, java.lang.Throwable=var1126, $r9=var2143}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.dialect.DerbyDialect;	r3 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<org.hibernate.dialect.DerbyDialect: boolean supportsSequences()>();	if $z0 == 0 goto $r8 = new org.hibernate.MappingException;	$r8 = new org.hibernate.MappingException;	specialinvoke $r8.<org.hibernate.MappingException: void <init>(java.lang.String)>("Derby does not support sequence prior to release 10.6.1.0");	$r9 = (java.lang.Throwable) $r8;	throw $r9
;block_num 2