(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1756 0)
(declare-sort var2461 0)
(declare-sort var94 0)
(declare-sort var221 0)
(declare-sort var1850 0)
(declare-sort var3150 0)
(declare-sort var3094 0)
(declare-sort var570 0)
(declare-sort var223 0)
(declare-sort var2428 0)
(declare-sort var1807 0)
(declare-sort var907 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2461_getConfiguration/587546293 (var2461) var221)
(declare-fun command/-72260659 (var1756) var1850)
(declare-fun getName/-1244095687 (var1850) String)
(declare-fun getMappedStatement/-1635696400 (var221 String) var3150)
(declare-fun getStatementType/-933256659 (var3150) var3094)
(declare-fun equals/1194252418 (var570 var94) Bool)
(declare-fun cast-from-var3094-to-var570 (var3094) var570)
(declare-fun cast-from-var3094-to-var94 (var3094) var94)
(declare-fun getResultMaps/653399377 (var3150) var2428)
(declare-fun var2428_get/-1216255739 (var2428 Int) var94)
(declare-fun cast-from-var94-to-var1807 (var94) var1807)
(declare-fun getType/-1803666768 (var1807) ClassObject)
(declare-fun equals/-1650223740 (var94 var94) Bool)
(declare-fun cast-from-ClassObject-to-var94 (ClassObject) var94)
(declare-fun var907-init () var907)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1937591867 (var907 String) void)
(declare-const null-var1756 var1756)
(declare-const null-var2461 var2461)
(declare-const null-__Array__Int__var94__ (Array Int var94))
(declare-const var3094-CALLABLE var3094)
(declare-const var223-TYPE ClassObject)
(declare-const var3305 var1756) ; Statement: r1 := @this: org.apache.ibatis.binding.MapperMethod 
(assert (not (= var3305 null-var1756)))
(declare-const var3666 var2461) ; Statement: r0 := @parameter0: org.apache.ibatis.session.SqlSession 
(assert (not (= var3666 null-var2461)))
(declare-const var295 (Array Int var94)) ; Statement: r8 := @parameter1: java.lang.Object[] 
(assert (not (= var295 null-__Array__Int__var94__)))
(define-const var3043 var221 (var2461_getConfiguration/587546293 var3666)) ; Statement: $r4 = interfaceinvoke r0.<org.apache.ibatis.session.SqlSession: org.apache.ibatis.session.Configuration getConfiguration()>() 
(define-const var2464 var1850 (command/-72260659 var3305)) ; Statement: $r2 = r1.<org.apache.ibatis.binding.MapperMethod: org.apache.ibatis.binding.MapperMethod$SqlCommand command> 
(assert true)
(define-const var912 String (getName/-1244095687 var2464)) ; Statement: $r3 = virtualinvoke $r2.<org.apache.ibatis.binding.MapperMethod$SqlCommand: java.lang.String getName()>() 
(assert true)
(define-const var1621 var3150 (getMappedStatement/-1635696400 var3043 var912)) ; Statement: r5 = virtualinvoke $r4.<org.apache.ibatis.session.Configuration: org.apache.ibatis.mapping.MappedStatement getMappedStatement(java.lang.String)>($r3) 
(define-const var1093 var3094 var3094-CALLABLE) ; Statement: $r6 = <org.apache.ibatis.mapping.StatementType: org.apache.ibatis.mapping.StatementType CALLABLE> 
(assert true)
(define-const var561 var3094 (getStatementType/-933256659 var1621)) ; Statement: $r7 = virtualinvoke r5.<org.apache.ibatis.mapping.MappedStatement: org.apache.ibatis.mapping.StatementType getStatementType()>() 
(assert true)
(define-const var3502 Bool (equals/1194252418 (cast-from-var3094-to-var570 var1093) (cast-from-var3094-to-var94 var561))) ; Statement: $z0 = virtualinvoke $r6.<org.apache.ibatis.mapping.StatementType: boolean equals(java.lang.Object)>($r7) 
 ; Statement: if $z0 != 0 goto $r9 = r1.<org.apache.ibatis.binding.MapperMethod: org.apache.ibatis.binding.MapperMethod$MethodSignature method> 
(assert (not (not (= (ite var3502 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var3689 ClassObject var223-TYPE) ; Statement: $r21 = <java.lang.Void: java.lang.Class TYPE> 
(assert true)
(define-const var1255 var2428 (getResultMaps/653399377 var1621)) ; Statement: $r22 = virtualinvoke r5.<org.apache.ibatis.mapping.MappedStatement: java.util.List getResultMaps()>() 
(define-const var56 var94 (var2428_get/-1216255739 var1255 0)) ; Statement: $r23 = interfaceinvoke $r22.<java.util.List: java.lang.Object get(int)>(0) 
(define-const var1441 var1807 (cast-from-var94-to-var1807 var56)) ; Statement: $r24 = (org.apache.ibatis.mapping.ResultMap) $r23 
(assert true)
(define-const var661 ClassObject (getType/-1803666768 var1441)) ; Statement: $r25 = virtualinvoke $r24.<org.apache.ibatis.mapping.ResultMap: java.lang.Class getType()>() 
(assert true)
(define-const var3710 Bool (equals/-1650223740 (cast-from-ClassObject-to-var94 var3689) (cast-from-ClassObject-to-var94 var661))) ; Statement: $z2 = virtualinvoke $r21.<java.lang.Object: boolean equals(java.lang.Object)>($r25) 
 ; Statement: if $z2 == 0 goto $r9 = r1.<org.apache.ibatis.binding.MapperMethod: org.apache.ibatis.binding.MapperMethod$MethodSignature method> 
(assert (not (= (ite var3710 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var2514 var907 var907-init) ; Statement: $r27 = new org.apache.ibatis.binding.BindingException 
(define-const var2986 String String-init) ; Statement: $r28 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2986)) ; Statement: specialinvoke $r28.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2986!1 String)
(assert (= var2986!1 ""))
(assert true)
(define-const var2168 String (append/672562846 var2986!1 "method ")) ; Statement: $r31 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("method ") 
(declare-const var2986!2 String)
(assert (= var2986!2 (str.++ var2986!1 "method ")))
(define-const var3752 var1850 (command/-72260659 var3305)) ; Statement: $r29 = r1.<org.apache.ibatis.binding.MapperMethod: org.apache.ibatis.binding.MapperMethod$SqlCommand command> 
(assert true)
(define-const var1139 String (getName/-1244095687 var3752)) ; Statement: $r30 = virtualinvoke $r29.<org.apache.ibatis.binding.MapperMethod$SqlCommand: java.lang.String getName()>() 
(assert true)
(define-const var765 String (append/672562846 var2168 var1139)) ; Statement: $r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r30) 
(declare-const var2168!1 String)
(assert (= var2168!1 (str.++ var2168 var1139)))
(assert true)
(define-const var424 String (append/672562846 var765 " needs either a @ResultMap annotation, a @ResultType annotation, or a resultType attribute in XML so a ResultHandler can be used as a parameter.")) ; Statement: $r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" needs either a @ResultMap annotation, a @ResultType annotation, or a resultType attribute in XML so a ResultHandler can be used as a parameter.") 
(declare-const var765!1 String)
(assert (= var765!1 (str.++ var765 " needs either a @ResultMap annotation, a @ResultType annotation, or a resultType attribute in XML so a ResultHandler can be used as a parameter.")))
(assert true)
(define-const var2943 String (toString/-2075883882 var424)) ; Statement: $r34 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1937591867 var2514 var2943)) ; Statement: specialinvoke $r27.<org.apache.ibatis.binding.BindingException: void <init>(java.lang.String)>($r34) 

(declare-const var2514!1 var907)
(declare-const var2943!1 String)
 ; Statement: throw $r27 
(check-sat)
(get-model)
(get-unsat-core)
; {var2461_getConfiguration/587546293=([org.apache.ibatis.session.SqlSession], org.apache.ibatis.session.Configuration), command/-72260659=([org.apache.ibatis.binding.MapperMethod], org.apache.ibatis.binding.MapperMethod$SqlCommand), getName/-1244095687=([org.apache.ibatis.binding.MapperMethod$SqlCommand], java.lang.String), getMappedStatement/-1635696400=([org.apache.ibatis.session.Configuration, java.lang.String], org.apache.ibatis.mapping.MappedStatement), getStatementType/-933256659=([org.apache.ibatis.mapping.MappedStatement], org.apache.ibatis.mapping.StatementType), equals/1194252418=([java.lang.Enum, java.lang.Object], boolean), cast-from-var3094-to-var570=([org.apache.ibatis.mapping.StatementType], java.lang.Enum), cast-from-var3094-to-var94=([org.apache.ibatis.mapping.StatementType], java.lang.Object), getResultMaps/653399377=([org.apache.ibatis.mapping.MappedStatement], java.util.List), var2428_get/-1216255739=([java.util.List, int], java.lang.Object), cast-from-var94-to-var1807=([java.lang.Object], org.apache.ibatis.mapping.ResultMap), getType/-1803666768=([org.apache.ibatis.mapping.ResultMap], java.lang.Class), equals/-1650223740=([java.lang.Object, java.lang.Object], boolean), cast-from-ClassObject-to-var94=([java.lang.Class], java.lang.Object), var907-init=([], org.apache.ibatis.binding.BindingException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1937591867=([org.apache.ibatis.binding.BindingException, java.lang.String], void)}
; {var1756=org.apache.ibatis.binding.MapperMethod, var3305=r1, var2461=org.apache.ibatis.session.SqlSession, var3666=r0, var94=java.lang.Object, var295=r8, var221=org.apache.ibatis.session.Configuration, var3043=$r4, var1850=org.apache.ibatis.binding.MapperMethod$SqlCommand, var2464=$r2, var912=$r3, var3150=org.apache.ibatis.mapping.MappedStatement, var1621=r5, var3094=org.apache.ibatis.mapping.StatementType, var1093=$r6, var561=$r7, var570=java.lang.Enum, var3502=$z0, var223=java.lang.Void, var3689=$r21, var2428=java.util.List, var1255=$r22, var56=$r23, var1807=org.apache.ibatis.mapping.ResultMap, var1441=$r24, var661=$r25, var3710=$z2, var907=org.apache.ibatis.binding.BindingException, var2514=$r27, var2986=$r28, var2168=$r31, var3752=$r29, var1139=$r30, var765=$r32, var424=$r33, var2943=$r34}
; {org.apache.ibatis.binding.MapperMethod=var1756, r1=var3305, org.apache.ibatis.session.SqlSession=var2461, r0=var3666, java.lang.Object=var94, r8=var295, org.apache.ibatis.session.Configuration=var221, $r4=var3043, org.apache.ibatis.binding.MapperMethod$SqlCommand=var1850, $r2=var2464, $r3=var912, org.apache.ibatis.mapping.MappedStatement=var3150, r5=var1621, org.apache.ibatis.mapping.StatementType=var3094, $r6=var1093, $r7=var561, java.lang.Enum=var570, $z0=var3502, java.lang.Void=var223, $r21=var3689, java.util.List=var2428, $r22=var1255, $r23=var56, org.apache.ibatis.mapping.ResultMap=var1807, $r24=var1441, $r25=var661, $z2=var3710, org.apache.ibatis.binding.BindingException=var907, $r27=var2514, $r28=var2986, $r31=var2168, $r29=var3752, $r30=var1139, $r32=var765, $r33=var424, $r34=var2943}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.binding.MapperMethod;	r0 := @parameter0: org.apache.ibatis.session.SqlSession;	r8 := @parameter1: java.lang.Object[];	$r4 = interfaceinvoke r0.<org.apache.ibatis.session.SqlSession: org.apache.ibatis.session.Configuration getConfiguration()>();	$r2 = r1.<org.apache.ibatis.binding.MapperMethod: org.apache.ibatis.binding.MapperMethod$SqlCommand command>;	$r3 = virtualinvoke $r2.<org.apache.ibatis.binding.MapperMethod$SqlCommand: java.lang.String getName()>();	r5 = virtualinvoke $r4.<org.apache.ibatis.session.Configuration: org.apache.ibatis.mapping.MappedStatement getMappedStatement(java.lang.String)>($r3);	$r6 = <org.apache.ibatis.mapping.StatementType: org.apache.ibatis.mapping.StatementType CALLABLE>;	$r7 = virtualinvoke r5.<org.apache.ibatis.mapping.MappedStatement: org.apache.ibatis.mapping.StatementType getStatementType()>();	$z0 = virtualinvoke $r6.<org.apache.ibatis.mapping.StatementType: boolean equals(java.lang.Object)>($r7);	if $z0 != 0 goto $r9 = r1.<org.apache.ibatis.binding.MapperMethod: org.apache.ibatis.binding.MapperMethod$MethodSignature method>;	$r21 = <java.lang.Void: java.lang.Class TYPE>;	$r22 = virtualinvoke r5.<org.apache.ibatis.mapping.MappedStatement: java.util.List getResultMaps()>();	$r23 = interfaceinvoke $r22.<java.util.List: java.lang.Object get(int)>(0);	$r24 = (org.apache.ibatis.mapping.ResultMap) $r23;	$r25 = virtualinvoke $r24.<org.apache.ibatis.mapping.ResultMap: java.lang.Class getType()>();	$z2 = virtualinvoke $r21.<java.lang.Object: boolean equals(java.lang.Object)>($r25);	if $z2 == 0 goto $r9 = r1.<org.apache.ibatis.binding.MapperMethod: org.apache.ibatis.binding.MapperMethod$MethodSignature method>;	$r27 = new org.apache.ibatis.binding.BindingException;	$r28 = new java.lang.StringBuilder;	specialinvoke $r28.<java.lang.StringBuilder: void <init>()>();	$r31 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("method ");	$r29 = r1.<org.apache.ibatis.binding.MapperMethod: org.apache.ibatis.binding.MapperMethod$SqlCommand command>;	$r30 = virtualinvoke $r29.<org.apache.ibatis.binding.MapperMethod$SqlCommand: java.lang.String getName()>();	$r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r30);	$r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" needs either a @ResultMap annotation, a @ResultType annotation, or a resultType attribute in XML so a ResultHandler can be used as a parameter.");	$r34 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r27.<org.apache.ibatis.binding.BindingException: void <init>(java.lang.String)>($r34);	throw $r27
;block_num 3