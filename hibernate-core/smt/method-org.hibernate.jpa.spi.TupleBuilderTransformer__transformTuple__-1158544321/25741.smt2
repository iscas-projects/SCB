(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1979 0)
(declare-sort var2197 0)
(declare-sort var2319 0)
(declare-sort var3804 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLength-Arr-var2197-1 ((Array Int var2197)) Int)
(declare-fun tupleElements/-461818293 (var1979) var2319)
(declare-fun var2319_size/-959786421 (var2319) Int)
(declare-fun var3804-init () var3804)
(declare-fun <init>/-1391682475 (var3804 var1979 (Array Int var2197)) void)
(declare-const null-var1979 var1979)
(declare-const null-__Array__Int__var2197__ (Array Int var2197))
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var3630 var1979) ; Statement: r1 := @this: org.hibernate.jpa.spi.TupleBuilderTransformer 
(assert (not (= var3630 null-var1979)))
(declare-const var1963 (Array Int var2197)) ; Statement: r0 := @parameter0: java.lang.Object[] 
(assert (not (= var1963 null-__Array__Int__var2197__)))
(declare-const var878 (Array Int String)) ; Statement: r13 := @parameter1: java.lang.String[] 
(assert (not (= var878 null-__Array__Int__String__)))
(define-const var735 Int (getLength-Arr-var2197-1 var1963)) ; Statement: $i1 = lengthof r0 
(define-const var1968 var2319 (tupleElements/-461818293 var3630)) ; Statement: $r2 = r1.<org.hibernate.jpa.spi.TupleBuilderTransformer: java.util.List tupleElements> 
(define-const var257 Int (var2319_size/-959786421 var1968)) ; Statement: $i0 = interfaceinvoke $r2.<java.util.List: int size()>() 
 ; Statement: if $i1 == $i0 goto $r3 = new org.hibernate.jpa.spi.TupleBuilderTransformer$HqlTupleImpl 
(assert (= var735 var257)) ; Cond: $i1 == $i0 
(define-const var1885 var3804 var3804-init) ; Statement: $r3 = new org.hibernate.jpa.spi.TupleBuilderTransformer$HqlTupleImpl 
(assert true)
;(assert (<init>/-1391682475 var1885 var3630 var1963)) ; Statement: specialinvoke $r3.<org.hibernate.jpa.spi.TupleBuilderTransformer$HqlTupleImpl: void <init>(org.hibernate.jpa.spi.TupleBuilderTransformer,java.lang.Object[])>(r1, r0) 

(declare-const var1885!1 var3804)
(declare-const var3630!1 var1979)
(declare-const var1963!1 (Array Int var2197))
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {getLength-Arr-var2197-1=([java.lang.Object[]], int), tupleElements/-461818293=([org.hibernate.jpa.spi.TupleBuilderTransformer], java.util.List), var2319_size/-959786421=([java.util.List], int), var3804-init=([], org.hibernate.jpa.spi.TupleBuilderTransformer$HqlTupleImpl), <init>/-1391682475=([org.hibernate.jpa.spi.TupleBuilderTransformer$HqlTupleImpl, org.hibernate.jpa.spi.TupleBuilderTransformer, java.lang.Object[]], void)}
; {var1979=org.hibernate.jpa.spi.TupleBuilderTransformer, var3630=r1, var2197=java.lang.Object, var1963=r0, var878=r13, var735=$i1, var2319=java.util.List, var1968=$r2, var257=$i0, var3804=org.hibernate.jpa.spi.TupleBuilderTransformer$HqlTupleImpl, var1885=$r3}
; {org.hibernate.jpa.spi.TupleBuilderTransformer=var1979, r1=var3630, java.lang.Object=var2197, r0=var1963, r13=var878, $i1=var735, java.util.List=var2319, $r2=var1968, $i0=var257, org.hibernate.jpa.spi.TupleBuilderTransformer$HqlTupleImpl=var3804, $r3=var1885}
;seq 
;cnt {}
;stmts r1 := @this: org.hibernate.jpa.spi.TupleBuilderTransformer;	r0 := @parameter0: java.lang.Object[];	r13 := @parameter1: java.lang.String[];	$i1 = lengthof r0;	$r2 = r1.<org.hibernate.jpa.spi.TupleBuilderTransformer: java.util.List tupleElements>;	$i0 = interfaceinvoke $r2.<java.util.List: int size()>();	if $i1 == $i0 goto $r3 = new org.hibernate.jpa.spi.TupleBuilderTransformer$HqlTupleImpl;	$r3 = new org.hibernate.jpa.spi.TupleBuilderTransformer$HqlTupleImpl;	specialinvoke $r3.<org.hibernate.jpa.spi.TupleBuilderTransformer$HqlTupleImpl: void <init>(org.hibernate.jpa.spi.TupleBuilderTransformer,java.lang.Object[])>(r1, r0);	return $r3
;block_num 2