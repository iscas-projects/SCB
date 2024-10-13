(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1639 0)
(declare-sort var1045 0)
(declare-sort var2253 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var2253) void)
(declare-fun cast-from-var1639-to-var2253 (var1639) var2253)
(declare-fun entityName/-1071689626 (var1639) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-fun propertyName/-1071689626 (var1639) String)
(declare-const null-var1639 var1639)
(declare-const null-String String)
(declare-const var2373 var1639) ; Statement: r0 := @this: org.hibernate.property.access.internal.PropertyAccessStrategyBackRefImpl 
(assert (not (= var2373 null-var1639)))
(declare-const var3794 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3794 null-String)))
(declare-const var3106 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var3106 null-String)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var1639-to-var2253 var2373))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var2373!1 var1639)
(declare-const var2373!2 var1639)
(assert (not (= var2373!2 null-var1639)))
(assert (= (entityName/-1071689626 var2373!2) var3106)) ; Statement: r0.<org.hibernate.property.access.internal.PropertyAccessStrategyBackRefImpl: java.lang.String entityName> = r1 
(assert true)
(define-const var1338 Int (length/-134980193 var3106)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var1020 Int (+ var1338 1)) ; Statement: $i1 = $i0 + 1 
(assert (and true (and (>= var1020 0) (>= (str.len var3794) var1020))))
(define-const var1504 String (substring/850833817 var3794 var1020)) ; Statement: $r3 = virtualinvoke r2.<java.lang.String: java.lang.String substring(int)>($i1) 
(declare-const var2373!3 var1639)
(assert (not (= var2373!3 null-var1639)))
(assert (= (propertyName/-1071689626 var2373!3) var1504)) ; Statement: r0.<org.hibernate.property.access.internal.PropertyAccessStrategyBackRefImpl: java.lang.String propertyName> = $r3 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var1639-to-var2253=([org.hibernate.property.access.internal.PropertyAccessStrategyBackRefImpl], java.lang.Object), entityName/-1071689626=([org.hibernate.property.access.internal.PropertyAccessStrategyBackRefImpl], java.lang.String), length/-134980193=([java.lang.String], int), substring/850833817=([java.lang.String, int], java.lang.String), propertyName/-1071689626=([org.hibernate.property.access.internal.PropertyAccessStrategyBackRefImpl], java.lang.String)}
; {var1639=org.hibernate.property.access.internal.PropertyAccessStrategyBackRefImpl, var2373=r0, var3794=r2, var1045=null_type, var3106=r1, var2253=java.lang.Object, var1338=$i0, var1020=$i1, var1504=$r3}
; {org.hibernate.property.access.internal.PropertyAccessStrategyBackRefImpl=var1639, r0=var2373, r2=var3794, null_type=var1045, r1=var3106, java.lang.Object=var2253, $i0=var1338, $i1=var1020, $r3=var1504}
;seq <java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r0 := @this: org.hibernate.property.access.internal.PropertyAccessStrategyBackRefImpl;	r2 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<org.hibernate.property.access.internal.PropertyAccessStrategyBackRefImpl: java.lang.String entityName> = r1;	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	$i1 = $i0 + 1;	$r3 = virtualinvoke r2.<java.lang.String: java.lang.String substring(int)>($i1);	r0.<org.hibernate.property.access.internal.PropertyAccessStrategyBackRefImpl: java.lang.String propertyName> = $r3;	return
;block_num 1