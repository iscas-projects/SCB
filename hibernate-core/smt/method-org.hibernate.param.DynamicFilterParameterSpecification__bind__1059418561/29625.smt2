(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var316 0)
(declare-sort var1615 0)
(declare-sort var948 0)
(declare-sort var767 0)
(declare-sort var3360 0)
(declare-sort var3362 0)
(declare-sort var3447 0)
(declare-sort var1653 0)
(declare-sort var3767 0)
(declare-sort var1239 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var1239!class ClassObject)
(declare-fun definedParameterType/1482838954 (var316) var3360)
(declare-fun var767_getFactory/1122061256 (var767) var3362)
(declare-fun var3360_getColumnSpan/269213040 (var3360 var3447) Int)
(declare-fun cast-from-var3362-to-var3447 (var3362) var3447)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun filterName/1482838954 (var316) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun parameterName/1482838954 (var316) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var767_getLoadQueryInfluencers/-159841172 (var767) var1653)
(declare-fun getFilterParameterValue/1085090739 (var1653 String) var3767)
(declare-fun getFilterParameterType/1675639439 (var1653 String) var3360)
(declare-fun isInstance/451912363 (ClassObject var3767) Bool)
(declare-fun bindDynamicParameter/-857656179 (var948 var3360 var3767) void)
(declare-fun var3360_nullSafeSet/98713820 (var3360 var1615 var3767 Int var767) void)
(declare-const null-var316 var316)
(declare-const null-var1615 var1615)
(declare-const null-var948 var948)
(declare-const null-var767 var767)
(declare-const null-Int Int)
(declare-const var1975 var316) ; Statement: r0 := @this: org.hibernate.param.DynamicFilterParameterSpecification 
(assert (not (= var1975 null-var316)))
(declare-const var3706 var1615) ; Statement: r17 := @parameter0: java.sql.PreparedStatement 
(assert (not (= var3706 null-var1615)))
(declare-const var3688 var948) ; Statement: r16 := @parameter1: org.hibernate.engine.spi.QueryParameters 
(assert (not (= var3688 null-var948)))
(declare-const var2668 var767) ; Statement: r1 := @parameter2: org.hibernate.engine.spi.SharedSessionContractImplementor 
(assert (not (= var2668 null-var767)))
(declare-const var1789 Int) ; Statement: i1 := @parameter3: int 
(assert (not (= var1789 null-Int)))
(define-const var2470 var3360 (definedParameterType/1482838954 var1975)) ; Statement: $r2 = r0.<org.hibernate.param.DynamicFilterParameterSpecification: org.hibernate.type.Type definedParameterType> 
(define-const var1953 var3362 (var767_getFactory/1122061256 var2668)) ; Statement: $r3 = interfaceinvoke r1.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>() 
(define-const var3531 Int (var3360_getColumnSpan/269213040 var2470 (cast-from-var3362-to-var3447 var1953))) ; Statement: i0 = interfaceinvoke $r2.<org.hibernate.type.Type: int getColumnSpan(org.hibernate.engine.spi.Mapping)>($r3) 
(define-const var1971 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1971)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1971!1 String)
(assert (= var1971!1 ""))
(define-const var3014 String (filterName/1482838954 var1975)) ; Statement: $r5 = r0.<org.hibernate.param.DynamicFilterParameterSpecification: java.lang.String filterName> 
(assert true)
(define-const var3790 String (append/672562846 var1971!1 var3014)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var1971!2 String)
(assert (= var1971!2 (str.++ var1971!1 var3014)))
(assert true)
(define-const var1579 String (append/-1166366385 var3790 46)) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46) 
(declare-const var3790!1 String)
(assert (str.prefixof var3790 var3790!1))
(define-const var1634 String (parameterName/1482838954 var1975)) ; Statement: $r7 = r0.<org.hibernate.param.DynamicFilterParameterSpecification: java.lang.String parameterName> 
(assert true)
(define-const var2503 String (append/672562846 var1579 var1634)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var1579!1 String)
(assert (= var1579!1 (str.++ var1579 var1634)))
(assert true)
(define-const var783 String (toString/-2075883882 var2503)) ; Statement: r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1385 var1653 (var767_getLoadQueryInfluencers/-159841172 var2668)) ; Statement: $r11 = interfaceinvoke r1.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.spi.LoadQueryInfluencers getLoadQueryInfluencers()>() 
(assert true)
(define-const var3401 var3767 (getFilterParameterValue/1085090739 var1385 var783)) ; Statement: r12 = virtualinvoke $r11.<org.hibernate.engine.spi.LoadQueryInfluencers: java.lang.Object getFilterParameterValue(java.lang.String)>(r10) 
(define-const var2526 var1653 (var767_getLoadQueryInfluencers/-159841172 var2668)) ; Statement: $r13 = interfaceinvoke r1.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.spi.LoadQueryInfluencers getLoadQueryInfluencers()>() 
(assert true)
(define-const var3363 var3360 (getFilterParameterType/1675639439 var2526 var783)) ; Statement: r14 = virtualinvoke $r13.<org.hibernate.engine.spi.LoadQueryInfluencers: org.hibernate.type.Type getFilterParameterType(java.lang.String)>(r10) 
(define-const var1077 ClassObject var1239!class) ; Statement: $r15 = class "Ljava/util/Collection;" 
(assert true)
(define-const var2224 Bool (isInstance/451912363 var1077 var3401)) ; Statement: $z0 = virtualinvoke $r15.<java.lang.Class: boolean isInstance(java.lang.Object)>(r12) 
 ; Statement: if $z0 == 0 goto virtualinvoke r16.<org.hibernate.engine.spi.QueryParameters: void bindDynamicParameter(org.hibernate.type.Type,java.lang.Object)>(r14, r12) 
(assert (= (ite var2224 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
;(assert (bindDynamicParameter/-857656179 var3688 var3363 var3401)) ; Statement: virtualinvoke r16.<org.hibernate.engine.spi.QueryParameters: void bindDynamicParameter(org.hibernate.type.Type,java.lang.Object)>(r14, r12) 

(declare-const var3688!1 var948)
(declare-const var3363!1 var3360)
(declare-const var3401!1 var3767)
(define-const var2218 var3360 (definedParameterType/1482838954 var1975)) ; Statement: $r18 = r0.<org.hibernate.param.DynamicFilterParameterSpecification: org.hibernate.type.Type definedParameterType> 
;(assert (var3360_nullSafeSet/98713820 var2218 var3706 var3401!1 var1789 var2668)) ; Statement: interfaceinvoke $r18.<org.hibernate.type.Type: void nullSafeSet(java.sql.PreparedStatement,java.lang.Object,int,org.hibernate.engine.spi.SharedSessionContractImplementor)>(r17, r12, i1, r1) 

(declare-const var2218!1 var3360)
(declare-const var3706!1 var1615)
(declare-const var3401!2 var3767)
(declare-const var1789!1 Int)
(declare-const var2668!1 var767)
 ; Statement: return i0 
(check-sat)
(get-model)
(get-unsat-core)
; {definedParameterType/1482838954=([org.hibernate.param.DynamicFilterParameterSpecification], org.hibernate.type.Type), var767_getFactory/1122061256=([org.hibernate.engine.spi.SharedSessionContractImplementor], org.hibernate.engine.spi.SessionFactoryImplementor), var3360_getColumnSpan/269213040=([org.hibernate.type.Type, org.hibernate.engine.spi.Mapping], int), cast-from-var3362-to-var3447=([org.hibernate.engine.spi.SessionFactoryImplementor], org.hibernate.engine.spi.Mapping), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), filterName/1482838954=([org.hibernate.param.DynamicFilterParameterSpecification], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), parameterName/1482838954=([org.hibernate.param.DynamicFilterParameterSpecification], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var767_getLoadQueryInfluencers/-159841172=([org.hibernate.engine.spi.SharedSessionContractImplementor], org.hibernate.engine.spi.LoadQueryInfluencers), getFilterParameterValue/1085090739=([org.hibernate.engine.spi.LoadQueryInfluencers, java.lang.String], java.lang.Object), getFilterParameterType/1675639439=([org.hibernate.engine.spi.LoadQueryInfluencers, java.lang.String], org.hibernate.type.Type), isInstance/451912363=([java.lang.Class, java.lang.Object], boolean), bindDynamicParameter/-857656179=([org.hibernate.engine.spi.QueryParameters, org.hibernate.type.Type, java.lang.Object], void), var3360_nullSafeSet/98713820=([org.hibernate.type.Type, java.sql.PreparedStatement, java.lang.Object, int, org.hibernate.engine.spi.SharedSessionContractImplementor], void)}
; {var316=org.hibernate.param.DynamicFilterParameterSpecification, var1975=r0, var1615=java.sql.PreparedStatement, var3706=r17, var948=org.hibernate.engine.spi.QueryParameters, var3688=r16, var767=org.hibernate.engine.spi.SharedSessionContractImplementor, var2668=r1, var1789=i1, var3360=org.hibernate.type.Type, var2470=$r2, var3362=org.hibernate.engine.spi.SessionFactoryImplementor, var1953=$r3, var3447=org.hibernate.engine.spi.Mapping, var3531=i0, var1971=$r4, var3014=$r5, var3790=$r6, var1579=$r8, var1634=$r7, var2503=$r9, var783=r10, var1653=org.hibernate.engine.spi.LoadQueryInfluencers, var1385=$r11, var3767=java.lang.Object, var3401=r12, var2526=$r13, var3363=r14, var1239=java.util.Collection, var1077=$r15, var2224=$z0, var2218=$r18}
; {org.hibernate.param.DynamicFilterParameterSpecification=var316, r0=var1975, java.sql.PreparedStatement=var1615, r17=var3706, org.hibernate.engine.spi.QueryParameters=var948, r16=var3688, org.hibernate.engine.spi.SharedSessionContractImplementor=var767, r1=var2668, i1=var1789, org.hibernate.type.Type=var3360, $r2=var2470, org.hibernate.engine.spi.SessionFactoryImplementor=var3362, $r3=var1953, org.hibernate.engine.spi.Mapping=var3447, i0=var3531, $r4=var1971, $r5=var3014, $r6=var3790, $r8=var1579, $r7=var1634, $r9=var2503, r10=var783, org.hibernate.engine.spi.LoadQueryInfluencers=var1653, $r11=var1385, java.lang.Object=var3767, r12=var3401, $r13=var2526, r14=var3363, java.util.Collection=var1239, $r15=var1077, $z0=var2224, $r18=var2218}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.param.DynamicFilterParameterSpecification;	r17 := @parameter0: java.sql.PreparedStatement;	r16 := @parameter1: org.hibernate.engine.spi.QueryParameters;	r1 := @parameter2: org.hibernate.engine.spi.SharedSessionContractImplementor;	i1 := @parameter3: int;	$r2 = r0.<org.hibernate.param.DynamicFilterParameterSpecification: org.hibernate.type.Type definedParameterType>;	$r3 = interfaceinvoke r1.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>();	i0 = interfaceinvoke $r2.<org.hibernate.type.Type: int getColumnSpan(org.hibernate.engine.spi.Mapping)>($r3);	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = r0.<org.hibernate.param.DynamicFilterParameterSpecification: java.lang.String filterName>;	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46);	$r7 = r0.<org.hibernate.param.DynamicFilterParameterSpecification: java.lang.String parameterName>;	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	$r11 = interfaceinvoke r1.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.spi.LoadQueryInfluencers getLoadQueryInfluencers()>();	r12 = virtualinvoke $r11.<org.hibernate.engine.spi.LoadQueryInfluencers: java.lang.Object getFilterParameterValue(java.lang.String)>(r10);	$r13 = interfaceinvoke r1.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.spi.LoadQueryInfluencers getLoadQueryInfluencers()>();	r14 = virtualinvoke $r13.<org.hibernate.engine.spi.LoadQueryInfluencers: org.hibernate.type.Type getFilterParameterType(java.lang.String)>(r10);	$r15 = class "Ljava/util/Collection;";	$z0 = virtualinvoke $r15.<java.lang.Class: boolean isInstance(java.lang.Object)>(r12);	if $z0 == 0 goto virtualinvoke r16.<org.hibernate.engine.spi.QueryParameters: void bindDynamicParameter(org.hibernate.type.Type,java.lang.Object)>(r14, r12);	virtualinvoke r16.<org.hibernate.engine.spi.QueryParameters: void bindDynamicParameter(org.hibernate.type.Type,java.lang.Object)>(r14, r12);	$r18 = r0.<org.hibernate.param.DynamicFilterParameterSpecification: org.hibernate.type.Type definedParameterType>;	interfaceinvoke $r18.<org.hibernate.type.Type: void nullSafeSet(java.sql.PreparedStatement,java.lang.Object,int,org.hibernate.engine.spi.SharedSessionContractImplementor)>(r17, r12, i1, r1);	return i0
;block_num 2