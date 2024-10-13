(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2808 0)
(declare-sort var1486 0)
(declare-sort var1992 0)
(declare-sort var3152 0)
(declare-sort var2415 0)
(declare-sort var2662 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun this$0/1544553118 (var2808) var1992)
(declare-fun var1992_access$000/1694676865 (var1992) var3152)
(declare-fun var3152_get/1088891777 (var3152 var2415) var2415)
(declare-fun cast-from-String-to-var2415 (String) var2415)
(declare-fun cast-from-var2415-to-var2662 (var2415) var2662)
(declare-fun tuple/1544553118 (var2808) (Array Int var2415))
(declare-fun getPosition/-1381185129 (var2662) Int)
(declare-const null-var2808 var2808)
(declare-const null-String String)
(declare-const null-var2662 var2662)
(declare-const var286 var2808) ; Statement: r0 := @this: org.hibernate.jpa.spi.TupleBuilderTransformer$HqlTupleImpl 
(assert (not (= var286 null-var2808)))
(declare-const var2402 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2402 null-String)))
(define-const var908 var1992 (this$0/1544553118 var286)) ; Statement: $r1 = r0.<org.hibernate.jpa.spi.TupleBuilderTransformer$HqlTupleImpl: org.hibernate.jpa.spi.TupleBuilderTransformer this$0> 
(define-const var1384 var3152 (var1992_access$000/1694676865 var908)) ; Statement: $r3 = staticinvoke <org.hibernate.jpa.spi.TupleBuilderTransformer: java.util.Map access$000(org.hibernate.jpa.spi.TupleBuilderTransformer)>($r1) 
(define-const var329 var2415 (var3152_get/1088891777 var1384 (cast-from-String-to-var2415 var2402))) ; Statement: $r4 = interfaceinvoke $r3.<java.util.Map: java.lang.Object get(java.lang.Object)>(r2) 
(define-const var901 var2662 (cast-from-var2415-to-var2662 var329)) ; Statement: r5 = (org.hibernate.jpa.spi.TupleBuilderTransformer$HqlTupleElementImpl) $r4 
 ; Statement: if r5 != null goto $r6 = r0.<org.hibernate.jpa.spi.TupleBuilderTransformer$HqlTupleImpl: java.lang.Object[] tuple> 
(assert (not (= var901 null-var2662))) ; Cond: r5 != null 
(define-const var1967 (Array Int var2415) (tuple/1544553118 var286)) ; Statement: $r6 = r0.<org.hibernate.jpa.spi.TupleBuilderTransformer$HqlTupleImpl: java.lang.Object[] tuple> 
(assert true)
(define-const var3474 Int (getPosition/-1381185129 var901)) ; Statement: $i0 = virtualinvoke r5.<org.hibernate.jpa.spi.TupleBuilderTransformer$HqlTupleElementImpl: int getPosition()>() 
(define-const var3522 var2415 (select var1967 var3474)) ; Statement: $r7 = $r6[$i0] 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {this$0/1544553118=([org.hibernate.jpa.spi.TupleBuilderTransformer$HqlTupleImpl], org.hibernate.jpa.spi.TupleBuilderTransformer), var1992_access$000/1694676865=([org.hibernate.jpa.spi.TupleBuilderTransformer], java.util.Map), var3152_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var2415=([java.lang.String], java.lang.Object), cast-from-var2415-to-var2662=([java.lang.Object], org.hibernate.jpa.spi.TupleBuilderTransformer$HqlTupleElementImpl), tuple/1544553118=([org.hibernate.jpa.spi.TupleBuilderTransformer$HqlTupleImpl], java.lang.Object[]), getPosition/-1381185129=([org.hibernate.jpa.spi.TupleBuilderTransformer$HqlTupleElementImpl], int)}
; {var2808=org.hibernate.jpa.spi.TupleBuilderTransformer$HqlTupleImpl, var286=r0, var2402=r2, var1486=null_type, var1992=org.hibernate.jpa.spi.TupleBuilderTransformer, var908=$r1, var3152=java.util.Map, var1384=$r3, var2415=java.lang.Object, var329=$r4, var2662=org.hibernate.jpa.spi.TupleBuilderTransformer$HqlTupleElementImpl, var901=r5, var1967=$r6, var3474=$i0, var3522=$r7}
; {org.hibernate.jpa.spi.TupleBuilderTransformer$HqlTupleImpl=var2808, r0=var286, r2=var2402, null_type=var1486, org.hibernate.jpa.spi.TupleBuilderTransformer=var1992, $r1=var908, java.util.Map=var3152, $r3=var1384, java.lang.Object=var2415, $r4=var329, org.hibernate.jpa.spi.TupleBuilderTransformer$HqlTupleElementImpl=var2662, r5=var901, $r6=var1967, $i0=var3474, $r7=var3522}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.jpa.spi.TupleBuilderTransformer$HqlTupleImpl;	r2 := @parameter0: java.lang.String;	$r1 = r0.<org.hibernate.jpa.spi.TupleBuilderTransformer$HqlTupleImpl: org.hibernate.jpa.spi.TupleBuilderTransformer this$0>;	$r3 = staticinvoke <org.hibernate.jpa.spi.TupleBuilderTransformer: java.util.Map access$000(org.hibernate.jpa.spi.TupleBuilderTransformer)>($r1);	$r4 = interfaceinvoke $r3.<java.util.Map: java.lang.Object get(java.lang.Object)>(r2);	r5 = (org.hibernate.jpa.spi.TupleBuilderTransformer$HqlTupleElementImpl) $r4;	if r5 != null goto $r6 = r0.<org.hibernate.jpa.spi.TupleBuilderTransformer$HqlTupleImpl: java.lang.Object[] tuple>;	$r6 = r0.<org.hibernate.jpa.spi.TupleBuilderTransformer$HqlTupleImpl: java.lang.Object[] tuple>;	$i0 = virtualinvoke r5.<org.hibernate.jpa.spi.TupleBuilderTransformer$HqlTupleElementImpl: int getPosition()>();	$r7 = $r6[$i0];	return $r7
;block_num 2