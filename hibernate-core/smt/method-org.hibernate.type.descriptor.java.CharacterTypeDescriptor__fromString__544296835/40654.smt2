(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var606 0)
(declare-sort var767 0)
(declare-sort var149 0)
(declare-sort var1328 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var149-init () var149)
(declare-fun <init>/-790357943 (var149 String) void)
(declare-fun cast-from-var149-to-var1328 (var149) var1328)
(declare-const null-var606 var606)
(declare-const null-String String)
(declare-const var637 var606) ; Statement: r3 := @this: org.hibernate.type.descriptor.java.CharacterTypeDescriptor 
(assert (not (= var637 null-var606)))
(declare-const var2019 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2019 null-String)))
(assert true)
(define-const var3545 Int (length/-134980193 var2019)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i0 == 1 goto $c1 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0) 
(assert (not (= var3545 1))) ; Negate: Cond: $i0 == 1  
(define-const var640 var149 var149-init) ; Statement: $r4 = new org.hibernate.HibernateException 
(assert true)
;(assert (<init>/-790357943 var640 "multiple or zero characters found parsing string")) ; Statement: specialinvoke $r4.<org.hibernate.HibernateException: void <init>(java.lang.String)>("multiple or zero characters found parsing string") 

(declare-const var640!1 var149)
(declare-const var3302 String)
(define-const var2377 var1328 (cast-from-var149-to-var1328 var640!1)) ; Statement: $r5 = (java.lang.Throwable) $r4 
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), var149-init=([], org.hibernate.HibernateException), <init>/-790357943=([org.hibernate.HibernateException, java.lang.String], void), cast-from-var149-to-var1328=([org.hibernate.HibernateException], java.lang.Throwable)}
; {var606=org.hibernate.type.descriptor.java.CharacterTypeDescriptor, var637=r3, var2019=r0, var767=null_type, var3545=$i0, var149=org.hibernate.HibernateException, var640=$r4, var3302="multiple or zero characters found parsing string", var1328=java.lang.Throwable, var2377=$r5}
; {org.hibernate.type.descriptor.java.CharacterTypeDescriptor=var606, r3=var637, r0=var2019, null_type=var767, $i0=var3545, org.hibernate.HibernateException=var149, $r4=var640, "multiple or zero characters found parsing string"=var3302, java.lang.Throwable=var1328, $r5=var2377}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r3 := @this: org.hibernate.type.descriptor.java.CharacterTypeDescriptor;	r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if $i0 == 1 goto $c1 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0);	$r4 = new org.hibernate.HibernateException;	specialinvoke $r4.<org.hibernate.HibernateException: void <init>(java.lang.String)>("multiple or zero characters found parsing string");	$r5 = (java.lang.Throwable) $r4;	throw $r5
;block_num 2