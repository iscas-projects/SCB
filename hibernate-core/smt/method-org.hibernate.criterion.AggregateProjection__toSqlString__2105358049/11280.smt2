(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1990 0)
(declare-sort var3474 0)
(declare-sort var2415 0)
(declare-sort var208 0)
(declare-sort var2936 0)
(declare-sort var3175 0)
(declare-sort var900 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getFunction/1868444692 (var1990 var2415) var208)
(declare-fun getPropertyName/1258089501 (var1990) String)
(declare-fun var2415_getType/589875729 (var2415 var3474 String) var2936)
(declare-fun buildFunctionParameterList/780372718 (var1990 var3474 var2415) var3175)
(declare-fun var2415_getFactory/960862227 (var2415) var900)
(declare-fun var208_render/1774982098 (var208 var2936 var3175 var900) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1990 var1990)
(declare-const null-var3474 var3474)
(declare-const null-Int Int)
(declare-const null-var2415 var2415)
(declare-const var566 var1990) ; Statement: r0 := @this: org.hibernate.criterion.AggregateProjection 
(assert (not (= var566 null-var1990)))
(declare-const var2292 var3474) ; Statement: r2 := @parameter0: org.hibernate.Criteria 
(assert (not (= var2292 null-var3474)))
(declare-const var1025 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1025 null-Int)))
(declare-const var2178 var2415) ; Statement: r1 := @parameter2: org.hibernate.criterion.CriteriaQuery 
(assert (not (= var2178 null-var2415)))
(assert true)
(define-const var598 var208 (getFunction/1868444692 var566 var2178)) ; Statement: $r7 = virtualinvoke r0.<org.hibernate.criterion.AggregateProjection: org.hibernate.dialect.function.SQLFunction getFunction(org.hibernate.criterion.CriteriaQuery)>(r1) 
(assert true)
(define-const var943 String (getPropertyName/1258089501 var566)) ; Statement: $r3 = virtualinvoke r0.<org.hibernate.criterion.AggregateProjection: java.lang.String getPropertyName()>() 
(define-const var1669 var2936 (var2415_getType/589875729 var2178 var2292 var943)) ; Statement: $r6 = interfaceinvoke r1.<org.hibernate.criterion.CriteriaQuery: org.hibernate.type.Type getType(org.hibernate.Criteria,java.lang.String)>(r2, $r3) 
(assert true)
(define-const var3787 var3175 (buildFunctionParameterList/780372718 var566 var2292 var2178)) ; Statement: $r5 = virtualinvoke r0.<org.hibernate.criterion.AggregateProjection: java.util.List buildFunctionParameterList(org.hibernate.Criteria,org.hibernate.criterion.CriteriaQuery)>(r2, r1) 
(define-const var3136 var900 (var2415_getFactory/960862227 var2178)) ; Statement: $r4 = interfaceinvoke r1.<org.hibernate.criterion.CriteriaQuery: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>() 
(define-const var768 String (var208_render/1774982098 var598 var1669 var3787 var3136)) ; Statement: r8 = interfaceinvoke $r7.<org.hibernate.dialect.function.SQLFunction: java.lang.String render(org.hibernate.type.Type,java.util.List,org.hibernate.engine.spi.SessionFactoryImplementor)>($r6, $r5, $r4) 
(define-const var3685 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3685)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3685!1 String)
(assert (= var3685!1 ""))
(assert true)
(define-const var2802 String (append/672562846 var3685!1 var768)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r8) 
(declare-const var3685!2 String)
(assert (= var3685!2 (str.++ var3685!1 var768)))
(assert true)
(define-const var1425 String (append/672562846 var2802 " as y")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" as y") 
(declare-const var2802!1 String)
(assert (= var2802!1 (str.++ var2802 " as y")))
(assert true)
(define-const var3730 String (append/-1001720160 var1425 var1025)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var1425!1 String)
(assert (str.prefixof var1425 var1425!1))
(assert true)
(define-const var3165 String (append/-1166366385 var3730 95)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(95) 
(declare-const var3730!1 String)
(assert (str.prefixof var3730 var3730!1))
(assert true)
(define-const var3190 String (toString/-2075883882 var3165)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {getFunction/1868444692=([org.hibernate.criterion.AggregateProjection, org.hibernate.criterion.CriteriaQuery], org.hibernate.dialect.function.SQLFunction), getPropertyName/1258089501=([org.hibernate.criterion.AggregateProjection], java.lang.String), var2415_getType/589875729=([org.hibernate.criterion.CriteriaQuery, org.hibernate.Criteria, java.lang.String], org.hibernate.type.Type), buildFunctionParameterList/780372718=([org.hibernate.criterion.AggregateProjection, org.hibernate.Criteria, org.hibernate.criterion.CriteriaQuery], java.util.List), var2415_getFactory/960862227=([org.hibernate.criterion.CriteriaQuery], org.hibernate.engine.spi.SessionFactoryImplementor), var208_render/1774982098=([org.hibernate.dialect.function.SQLFunction, org.hibernate.type.Type, java.util.List, org.hibernate.engine.spi.SessionFactoryImplementor], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1990=org.hibernate.criterion.AggregateProjection, var566=r0, var3474=org.hibernate.Criteria, var2292=r2, var1025=i0, var2415=org.hibernate.criterion.CriteriaQuery, var2178=r1, var208=org.hibernate.dialect.function.SQLFunction, var598=$r7, var943=$r3, var2936=org.hibernate.type.Type, var1669=$r6, var3175=java.util.List, var3787=$r5, var900=org.hibernate.engine.spi.SessionFactoryImplementor, var3136=$r4, var768=r8, var3685=$r9, var2802=$r10, var1425=$r11, var3730=$r12, var3165=$r13, var3190=$r14}
; {org.hibernate.criterion.AggregateProjection=var1990, r0=var566, org.hibernate.Criteria=var3474, r2=var2292, i0=var1025, org.hibernate.criterion.CriteriaQuery=var2415, r1=var2178, org.hibernate.dialect.function.SQLFunction=var208, $r7=var598, $r3=var943, org.hibernate.type.Type=var2936, $r6=var1669, java.util.List=var3175, $r5=var3787, org.hibernate.engine.spi.SessionFactoryImplementor=var900, $r4=var3136, r8=var768, $r9=var3685, $r10=var2802, $r11=var1425, $r12=var3730, $r13=var3165, $r14=var3190}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.criterion.AggregateProjection;	r2 := @parameter0: org.hibernate.Criteria;	i0 := @parameter1: int;	r1 := @parameter2: org.hibernate.criterion.CriteriaQuery;	$r7 = virtualinvoke r0.<org.hibernate.criterion.AggregateProjection: org.hibernate.dialect.function.SQLFunction getFunction(org.hibernate.criterion.CriteriaQuery)>(r1);	$r3 = virtualinvoke r0.<org.hibernate.criterion.AggregateProjection: java.lang.String getPropertyName()>();	$r6 = interfaceinvoke r1.<org.hibernate.criterion.CriteriaQuery: org.hibernate.type.Type getType(org.hibernate.Criteria,java.lang.String)>(r2, $r3);	$r5 = virtualinvoke r0.<org.hibernate.criterion.AggregateProjection: java.util.List buildFunctionParameterList(org.hibernate.Criteria,org.hibernate.criterion.CriteriaQuery)>(r2, r1);	$r4 = interfaceinvoke r1.<org.hibernate.criterion.CriteriaQuery: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>();	r8 = interfaceinvoke $r7.<org.hibernate.dialect.function.SQLFunction: java.lang.String render(org.hibernate.type.Type,java.util.List,org.hibernate.engine.spi.SessionFactoryImplementor)>($r6, $r5, $r4);	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" as y");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(95);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	return $r14
;block_num 1