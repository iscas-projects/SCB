(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3587 0)
(declare-sort var420 0)
(declare-sort var134 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var134) void)
(declare-fun cast-from-var3587-to-var134 (var3587) var134)
(declare-fun entityName/-1130545024 (var3587) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-fun propertyName/-1130545024 (var3587) String)
(declare-const null-var3587 var3587)
(declare-const null-String String)
(declare-const var1503 var3587) ; Statement: r0 := @this: org.hibernate.property.access.internal.PropertyAccessStrategyIndexBackRefImpl 
(assert (not (= var1503 null-var3587)))
(declare-const var3550 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3550 null-String)))
(declare-const var1253 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1253 null-String)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var3587-to-var134 var1503))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var1503!1 var3587)
(declare-const var1503!2 var3587)
(assert (not (= var1503!2 null-var3587)))
(assert (= (entityName/-1130545024 var1503!2) var1253)) ; Statement: r0.<org.hibernate.property.access.internal.PropertyAccessStrategyIndexBackRefImpl: java.lang.String entityName> = r1 
(assert true)
(define-const var1963 Int (length/-134980193 var1253)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var1078 Int (+ var1963 1)) ; Statement: $i1 = $i0 + 1 
(assert (not (and true (and (>= var1078 0) (>= (str.len var3550) var1078)))))
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var3587-to-var134=([org.hibernate.property.access.internal.PropertyAccessStrategyIndexBackRefImpl], java.lang.Object), entityName/-1130545024=([org.hibernate.property.access.internal.PropertyAccessStrategyIndexBackRefImpl], java.lang.String), length/-134980193=([java.lang.String], int), substring/850833817=([java.lang.String, int], java.lang.String), propertyName/-1130545024=([org.hibernate.property.access.internal.PropertyAccessStrategyIndexBackRefImpl], java.lang.String)}
; {var3587=org.hibernate.property.access.internal.PropertyAccessStrategyIndexBackRefImpl, var1503=r0, var3550=r2, var420=null_type, var1253=r1, var134=java.lang.Object, var1963=$i0, var1078=$i1, var3902=$r3}
; {org.hibernate.property.access.internal.PropertyAccessStrategyIndexBackRefImpl=var3587, r0=var1503, r2=var3550, null_type=var420, r1=var1253, java.lang.Object=var134, $i0=var1963, $i1=var1078, $r3=var3902}
;seq <java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r0 := @this: org.hibernate.property.access.internal.PropertyAccessStrategyIndexBackRefImpl;	r2 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<org.hibernate.property.access.internal.PropertyAccessStrategyIndexBackRefImpl: java.lang.String entityName> = r1;	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	$i1 = $i0 + 1;	$r3 = virtualinvoke r2.<java.lang.String: java.lang.String substring(int)>($i1);	r0.<org.hibernate.property.access.internal.PropertyAccessStrategyIndexBackRefImpl: java.lang.String propertyName> = $r3;	return
;block_num 1