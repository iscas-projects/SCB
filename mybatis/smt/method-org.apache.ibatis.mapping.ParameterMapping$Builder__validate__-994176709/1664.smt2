(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2880 0)
(declare-sort var1481 0)
(declare-sort var1625 0)
(declare-sort var2927 0)
(declare-sort var1091 0)
(declare-sort var1257 0)
(declare-sort var3870 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var1481!class ClassObject)
(declare-fun parameterMapping/2084547934 (var2880) var1625)
(declare-fun var1625_access$500/-2086424374 (var1625) ClassObject)
(declare-fun equals/-1650223740 (var2927 var2927) Bool)
(declare-fun cast-from-ClassObject-to-var2927 (ClassObject) var2927)
(declare-fun var1625_access$300/-132000040 (var1625) var1091)
(declare-fun var1257-init () var1257)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1625_access$200/1168245600 (var1625) String)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun var1625_access$600/307564044 (var1625) var3870)
(declare-fun append/-1031950772 (String var2927) String)
(declare-fun cast-from-var3870-to-var2927 (var3870) var2927)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var1257 String) void)
(declare-const null-var2880 var2880)
(declare-const null-var1091 var1091)
(declare-const var1212 var2880) ; Statement: r0 := @this: org.apache.ibatis.mapping.ParameterMapping$Builder 
(assert (not (= var1212 null-var2880)))
(define-const var2695 ClassObject var1481!class) ; Statement: $r3 = class "Ljava/sql/ResultSet;" 
(define-const var3380 var1625 (parameterMapping/2084547934 var1212)) ; Statement: $r1 = r0.<org.apache.ibatis.mapping.ParameterMapping$Builder: org.apache.ibatis.mapping.ParameterMapping parameterMapping> 
(define-const var988 ClassObject (var1625_access$500/-2086424374 var3380)) ; Statement: $r2 = staticinvoke <org.apache.ibatis.mapping.ParameterMapping: java.lang.Class access$500(org.apache.ibatis.mapping.ParameterMapping)>($r1) 
(assert true)
(define-const var2635 Bool (equals/-1650223740 (cast-from-ClassObject-to-var2927 var2695) (cast-from-ClassObject-to-var2927 var988))) ; Statement: $z0 = virtualinvoke $r3.<java.lang.Object: boolean equals(java.lang.Object)>($r2) 
 ; Statement: if $z0 == 0 goto $r4 = r0.<org.apache.ibatis.mapping.ParameterMapping$Builder: org.apache.ibatis.mapping.ParameterMapping parameterMapping> 
(assert (= (ite var2635 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3460 var1625 (parameterMapping/2084547934 var1212)) ; Statement: $r4 = r0.<org.apache.ibatis.mapping.ParameterMapping$Builder: org.apache.ibatis.mapping.ParameterMapping parameterMapping> 
(define-const var739 var1091 (var1625_access$300/-132000040 var3460)) ; Statement: $r5 = staticinvoke <org.apache.ibatis.mapping.ParameterMapping: org.apache.ibatis.type.TypeHandler access$300(org.apache.ibatis.mapping.ParameterMapping)>($r4) 
 ; Statement: if $r5 != null goto return 
(assert (not (not (= var739 null-var1091)))) ; Negate: Cond: $r5 != null  
(define-const var3162 var1257 var1257-init) ; Statement: $r6 = new java.lang.IllegalStateException 
(define-const var534 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var534)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var534!1 String)
(assert (= var534!1 ""))
(assert true)
(define-const var1711 String (append/672562846 var534!1 "Type handler was null on parameter mapping for property \u0027")) ; Statement: $r10 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Type handler was null on parameter mapping for property \'") 
(declare-const var534!2 String)
(assert (= var534!2 (str.++ var534!1 "Type handler was null on parameter mapping for property \u0027")))
(define-const var2202 var1625 (parameterMapping/2084547934 var1212)) ; Statement: $r8 = r0.<org.apache.ibatis.mapping.ParameterMapping$Builder: org.apache.ibatis.mapping.ParameterMapping parameterMapping> 
(define-const var1225 String (var1625_access$200/1168245600 var2202)) ; Statement: $r9 = staticinvoke <org.apache.ibatis.mapping.ParameterMapping: java.lang.String access$200(org.apache.ibatis.mapping.ParameterMapping)>($r8) 
(assert true)
(define-const var2388 String (append/672562846 var1711 var1225)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var1711!1 String)
(assert (= var1711!1 (str.++ var1711 var1225)))
(assert true)
(define-const var669 String (append/672562846 var2388 "\u0027. It was either not specified and/or could not be found for the javaType (")) ; Statement: $r15 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'. It was either not specified and/or could not be found for the javaType (") 
(declare-const var2388!1 String)
(assert (= var2388!1 (str.++ var2388 "\u0027. It was either not specified and/or could not be found for the javaType (")))
(define-const var1172 var1625 (parameterMapping/2084547934 var1212)) ; Statement: $r12 = r0.<org.apache.ibatis.mapping.ParameterMapping$Builder: org.apache.ibatis.mapping.ParameterMapping parameterMapping> 
(define-const var1042 ClassObject (var1625_access$500/-2086424374 var1172)) ; Statement: $r13 = staticinvoke <org.apache.ibatis.mapping.ParameterMapping: java.lang.Class access$500(org.apache.ibatis.mapping.ParameterMapping)>($r12) 
(assert true)
(define-const var1327 String (getName/-1958580599 var1042)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3891 String (append/672562846 var669 var1327)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14) 
(declare-const var669!1 String)
(assert (= var669!1 (str.++ var669 var1327)))
(assert true)
(define-const var1661 String (append/672562846 var3891 ") : jdbcType (")) ; Statement: $r19 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") : jdbcType (") 
(declare-const var3891!1 String)
(assert (= var3891!1 (str.++ var3891 ") : jdbcType (")))
(define-const var69 var1625 (parameterMapping/2084547934 var1212)) ; Statement: $r17 = r0.<org.apache.ibatis.mapping.ParameterMapping$Builder: org.apache.ibatis.mapping.ParameterMapping parameterMapping> 
(define-const var3489 var3870 (var1625_access$600/307564044 var69)) ; Statement: $r18 = staticinvoke <org.apache.ibatis.mapping.ParameterMapping: org.apache.ibatis.type.JdbcType access$600(org.apache.ibatis.mapping.ParameterMapping)>($r17) 
(assert true)
(define-const var3329 String (append/-1031950772 var1661 (cast-from-var3870-to-var2927 var3489))) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r18) 
(declare-const var1661!1 String)
(assert (str.prefixof var1661 var1661!1))
(assert true)
(define-const var308 String (append/672562846 var3329 ") combination.")) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") combination.") 
(declare-const var3329!1 String)
(assert (= var3329!1 (str.++ var3329 ") combination.")))
(assert true)
(define-const var2688 String (toString/-2075883882 var308)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var3162 var2688)) ; Statement: specialinvoke $r6.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r22) 

(declare-const var3162!1 var1257)
(declare-const var2688!1 String)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {parameterMapping/2084547934=([org.apache.ibatis.mapping.ParameterMapping$Builder], org.apache.ibatis.mapping.ParameterMapping), var1625_access$500/-2086424374=([org.apache.ibatis.mapping.ParameterMapping], java.lang.Class), equals/-1650223740=([java.lang.Object, java.lang.Object], boolean), cast-from-ClassObject-to-var2927=([java.lang.Class], java.lang.Object), var1625_access$300/-132000040=([org.apache.ibatis.mapping.ParameterMapping], org.apache.ibatis.type.TypeHandler), var1257-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1625_access$200/1168245600=([org.apache.ibatis.mapping.ParameterMapping], java.lang.String), getName/-1958580599=([java.lang.Class], java.lang.String), var1625_access$600/307564044=([org.apache.ibatis.mapping.ParameterMapping], org.apache.ibatis.type.JdbcType), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3870-to-var2927=([org.apache.ibatis.type.JdbcType], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var2880=org.apache.ibatis.mapping.ParameterMapping$Builder, var1212=r0, var1481=java.sql.ResultSet, var2695=$r3, var1625=org.apache.ibatis.mapping.ParameterMapping, var3380=$r1, var988=$r2, var2927=java.lang.Object, var2635=$z0, var3460=$r4, var1091=org.apache.ibatis.type.TypeHandler, var739=$r5, var1257=java.lang.IllegalStateException, var3162=$r6, var534=$r7, var1711=$r10, var2202=$r8, var1225=$r9, var2388=$r11, var669=$r15, var1172=$r12, var1042=$r13, var1327=$r14, var3891=$r16, var1661=$r19, var69=$r17, var3870=org.apache.ibatis.type.JdbcType, var3489=$r18, var3329=$r20, var308=$r21, var2688=$r22}
; {org.apache.ibatis.mapping.ParameterMapping$Builder=var2880, r0=var1212, java.sql.ResultSet=var1481, $r3=var2695, org.apache.ibatis.mapping.ParameterMapping=var1625, $r1=var3380, $r2=var988, java.lang.Object=var2927, $z0=var2635, $r4=var3460, org.apache.ibatis.type.TypeHandler=var1091, $r5=var739, java.lang.IllegalStateException=var1257, $r6=var3162, $r7=var534, $r10=var1711, $r8=var2202, $r9=var1225, $r11=var2388, $r15=var669, $r12=var1172, $r13=var1042, $r14=var1327, $r16=var3891, $r19=var1661, $r17=var69, org.apache.ibatis.type.JdbcType=var3870, $r18=var3489, $r20=var3329, $r21=var308, $r22=var2688}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.mapping.ParameterMapping$Builder;	$r3 = class "Ljava/sql/ResultSet;";	$r1 = r0.<org.apache.ibatis.mapping.ParameterMapping$Builder: org.apache.ibatis.mapping.ParameterMapping parameterMapping>;	$r2 = staticinvoke <org.apache.ibatis.mapping.ParameterMapping: java.lang.Class access$500(org.apache.ibatis.mapping.ParameterMapping)>($r1);	$z0 = virtualinvoke $r3.<java.lang.Object: boolean equals(java.lang.Object)>($r2);	if $z0 == 0 goto $r4 = r0.<org.apache.ibatis.mapping.ParameterMapping$Builder: org.apache.ibatis.mapping.ParameterMapping parameterMapping>;	$r4 = r0.<org.apache.ibatis.mapping.ParameterMapping$Builder: org.apache.ibatis.mapping.ParameterMapping parameterMapping>;	$r5 = staticinvoke <org.apache.ibatis.mapping.ParameterMapping: org.apache.ibatis.type.TypeHandler access$300(org.apache.ibatis.mapping.ParameterMapping)>($r4);	if $r5 != null goto return;	$r6 = new java.lang.IllegalStateException;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Type handler was null on parameter mapping for property \'");	$r8 = r0.<org.apache.ibatis.mapping.ParameterMapping$Builder: org.apache.ibatis.mapping.ParameterMapping parameterMapping>;	$r9 = staticinvoke <org.apache.ibatis.mapping.ParameterMapping: java.lang.String access$200(org.apache.ibatis.mapping.ParameterMapping)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r15 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'. It was either not specified and/or could not be found for the javaType (");	$r12 = r0.<org.apache.ibatis.mapping.ParameterMapping$Builder: org.apache.ibatis.mapping.ParameterMapping parameterMapping>;	$r13 = staticinvoke <org.apache.ibatis.mapping.ParameterMapping: java.lang.Class access$500(org.apache.ibatis.mapping.ParameterMapping)>($r12);	$r14 = virtualinvoke $r13.<java.lang.Class: java.lang.String getName()>();	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14);	$r19 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") : jdbcType (");	$r17 = r0.<org.apache.ibatis.mapping.ParameterMapping$Builder: org.apache.ibatis.mapping.ParameterMapping parameterMapping>;	$r18 = staticinvoke <org.apache.ibatis.mapping.ParameterMapping: org.apache.ibatis.type.JdbcType access$600(org.apache.ibatis.mapping.ParameterMapping)>($r17);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r18);	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") combination.");	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r6.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r22);	throw $r6
;block_num 3