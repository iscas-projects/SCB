(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1199 0)
(declare-sort var3780 0)
(declare-sort var3847 0)
(declare-sort var1800 0)
(declare-sort var2344 0)
(declare-sort var1894 0)
(declare-sort var2888 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getDataType/930127954 (var1199) var1800)
(declare-fun var1800_getReturnedClass/-1468116676 (var1800) ClassObject)
(declare-fun getModelType/-951570504 (var3780) ClassObject)
(declare-fun equals/-1650223740 (var3847 var3847) Bool)
(declare-fun cast-from-ClassObject-to-var3847 (ClassObject) var3847)
(declare-fun getAttributeConverter/1526400338 (var3780) var2344)
(declare-fun getLiteralValue/-1337042309 (var1199) var3847)
(declare-fun var1894_toRelationalValue/1403254489 (var1894 var3847) var3847)
(declare-fun cast-from-var2344-to-var1894 (var2344) var1894)
(declare-fun sqlType/-1171327195 (var2888) Int)
(declare-fun cast-from-var3780-to-var2888 (var3780) var2888)
(declare-fun isCharacterData/1232925846 (var1199 Int) Bool)
(declare-fun toString/-522406933 (var3847) String)
(declare-const null-var1199 var1199)
(declare-const null-var3780 var3780)
(declare-const null-var3847 var3847)
(declare-const var689 var1199) ; Statement: r0 := @this: org.hibernate.hql.internal.ast.tree.LiteralNode 
(assert (not (= var689 null-var1199)))
(declare-const var2516 var3780) ; Statement: r2 := @parameter0: org.hibernate.type.descriptor.converter.AttributeConverterTypeAdapter 
(assert (not (= var2516 null-var3780)))
(declare-const var3137 var3847) ; Statement: r19 := @parameter1: java.lang.Object 
(assert (not (= var3137 null-var3847)))
(assert true)
(define-const var2514 var1800 (getDataType/930127954 var689)) ; Statement: $r1 = virtualinvoke r0.<org.hibernate.hql.internal.ast.tree.LiteralNode: org.hibernate.type.Type getDataType()>() 
(define-const var1522 ClassObject (var1800_getReturnedClass/-1468116676 var2514)) ; Statement: $r4 = interfaceinvoke $r1.<org.hibernate.type.Type: java.lang.Class getReturnedClass()>() 
(assert true)
(define-const var1351 ClassObject (getModelType/-951570504 var2516)) ; Statement: $r3 = virtualinvoke r2.<org.hibernate.type.descriptor.converter.AttributeConverterTypeAdapter: java.lang.Class getModelType()>() 
(assert true)
(define-const var1066 Bool (equals/-1650223740 (cast-from-ClassObject-to-var3847 var1522) (cast-from-ClassObject-to-var3847 var1351))) ; Statement: $z0 = virtualinvoke $r4.<java.lang.Object: boolean equals(java.lang.Object)>($r3) 
 ; Statement: if $z0 == 0 goto $r5 = virtualinvoke r0.<org.hibernate.hql.internal.ast.tree.LiteralNode: org.hibernate.type.Type getDataType()>() 
(assert (not (= (ite var1066 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var2788 var2344 (getAttributeConverter/1526400338 var2516)) ; Statement: r27 = virtualinvoke r2.<org.hibernate.type.descriptor.converter.AttributeConverterTypeAdapter: org.hibernate.metamodel.model.convert.spi.JpaAttributeConverter getAttributeConverter()>() 
(assert true)
(define-const var2330 var3847 (getLiteralValue/-1337042309 var689)) ; Statement: $r28 = virtualinvoke r0.<org.hibernate.hql.internal.ast.tree.LiteralNode: java.lang.Object getLiteralValue()>() 
(define-const var2694 var3847 (var1894_toRelationalValue/1403254489 (cast-from-var2344-to-var1894 var2788) var2330)) ; Statement: r29 = interfaceinvoke r27.<org.hibernate.metamodel.model.convert.spi.JpaAttributeConverter: java.lang.Object toRelationalValue(java.lang.Object)>($r28) 
(assert true)
(define-const var255 Int (sqlType/-1171327195 (cast-from-var3780-to-var2888 var2516))) ; Statement: $i1 = virtualinvoke r2.<org.hibernate.type.descriptor.converter.AttributeConverterTypeAdapter: int sqlType()>() 
(assert true)
(define-const var3936 Bool (isCharacterData/1232925846 var689 var255)) ; Statement: $z3 = specialinvoke r0.<org.hibernate.hql.internal.ast.tree.LiteralNode: boolean isCharacterData(int)>($i1) 
 ; Statement: if $z3 == 0 goto $r30 = virtualinvoke r29.<java.lang.Object: java.lang.String toString()>() 
(assert (= (ite var3936 1 0) 0)) ; Cond: $z3 == 0 
(assert true)
(define-const var2880 String (toString/-522406933 var2694)) ; Statement: $r30 = virtualinvoke r29.<java.lang.Object: java.lang.String toString()>() 
 ; Statement: return $r30 
(check-sat)
(get-model)
(get-unsat-core)
; {getDataType/930127954=([org.hibernate.hql.internal.ast.tree.LiteralNode], org.hibernate.type.Type), var1800_getReturnedClass/-1468116676=([org.hibernate.type.Type], java.lang.Class), getModelType/-951570504=([org.hibernate.type.descriptor.converter.AttributeConverterTypeAdapter], java.lang.Class), equals/-1650223740=([java.lang.Object, java.lang.Object], boolean), cast-from-ClassObject-to-var3847=([java.lang.Class], java.lang.Object), getAttributeConverter/1526400338=([org.hibernate.type.descriptor.converter.AttributeConverterTypeAdapter], org.hibernate.metamodel.model.convert.spi.JpaAttributeConverter), getLiteralValue/-1337042309=([org.hibernate.hql.internal.ast.tree.LiteralNode], java.lang.Object), var1894_toRelationalValue/1403254489=([org.hibernate.metamodel.model.convert.spi.BasicValueConverter, java.lang.Object], java.lang.Object), cast-from-var2344-to-var1894=([org.hibernate.metamodel.model.convert.spi.JpaAttributeConverter], org.hibernate.metamodel.model.convert.spi.BasicValueConverter), sqlType/-1171327195=([org.hibernate.type.AbstractSingleColumnStandardBasicType], int), cast-from-var3780-to-var2888=([org.hibernate.type.descriptor.converter.AttributeConverterTypeAdapter], org.hibernate.type.AbstractSingleColumnStandardBasicType), isCharacterData/1232925846=([org.hibernate.hql.internal.ast.tree.LiteralNode, int], boolean), toString/-522406933=([java.lang.Object], java.lang.String)}
; {var1199=org.hibernate.hql.internal.ast.tree.LiteralNode, var689=r0, var3780=org.hibernate.type.descriptor.converter.AttributeConverterTypeAdapter, var2516=r2, var3847=java.lang.Object, var3137=r19, var1800=org.hibernate.type.Type, var2514=$r1, var1522=$r4, var1351=$r3, var1066=$z0, var2344=org.hibernate.metamodel.model.convert.spi.JpaAttributeConverter, var2788=r27, var2330=$r28, var1894=org.hibernate.metamodel.model.convert.spi.BasicValueConverter, var2694=r29, var2888=org.hibernate.type.AbstractSingleColumnStandardBasicType, var255=$i1, var3936=$z3, var2880=$r30}
; {org.hibernate.hql.internal.ast.tree.LiteralNode=var1199, r0=var689, org.hibernate.type.descriptor.converter.AttributeConverterTypeAdapter=var3780, r2=var2516, java.lang.Object=var3847, r19=var3137, org.hibernate.type.Type=var1800, $r1=var2514, $r4=var1522, $r3=var1351, $z0=var1066, org.hibernate.metamodel.model.convert.spi.JpaAttributeConverter=var2344, r27=var2788, $r28=var2330, org.hibernate.metamodel.model.convert.spi.BasicValueConverter=var1894, r29=var2694, org.hibernate.type.AbstractSingleColumnStandardBasicType=var2888, $i1=var255, $z3=var3936, $r30=var2880}
;seq <java.lang.Object: java.lang.String toString()>
;cnt {}
;stmts r0 := @this: org.hibernate.hql.internal.ast.tree.LiteralNode;	r2 := @parameter0: org.hibernate.type.descriptor.converter.AttributeConverterTypeAdapter;	r19 := @parameter1: java.lang.Object;	$r1 = virtualinvoke r0.<org.hibernate.hql.internal.ast.tree.LiteralNode: org.hibernate.type.Type getDataType()>();	$r4 = interfaceinvoke $r1.<org.hibernate.type.Type: java.lang.Class getReturnedClass()>();	$r3 = virtualinvoke r2.<org.hibernate.type.descriptor.converter.AttributeConverterTypeAdapter: java.lang.Class getModelType()>();	$z0 = virtualinvoke $r4.<java.lang.Object: boolean equals(java.lang.Object)>($r3);	if $z0 == 0 goto $r5 = virtualinvoke r0.<org.hibernate.hql.internal.ast.tree.LiteralNode: org.hibernate.type.Type getDataType()>();	r27 = virtualinvoke r2.<org.hibernate.type.descriptor.converter.AttributeConverterTypeAdapter: org.hibernate.metamodel.model.convert.spi.JpaAttributeConverter getAttributeConverter()>();	$r28 = virtualinvoke r0.<org.hibernate.hql.internal.ast.tree.LiteralNode: java.lang.Object getLiteralValue()>();	r29 = interfaceinvoke r27.<org.hibernate.metamodel.model.convert.spi.JpaAttributeConverter: java.lang.Object toRelationalValue(java.lang.Object)>($r28);	$i1 = virtualinvoke r2.<org.hibernate.type.descriptor.converter.AttributeConverterTypeAdapter: int sqlType()>();	$z3 = specialinvoke r0.<org.hibernate.hql.internal.ast.tree.LiteralNode: boolean isCharacterData(int)>($i1);	if $z3 == 0 goto $r30 = virtualinvoke r29.<java.lang.Object: java.lang.String toString()>();	$r30 = virtualinvoke r29.<java.lang.Object: java.lang.String toString()>();	return $r30
;block_num 3