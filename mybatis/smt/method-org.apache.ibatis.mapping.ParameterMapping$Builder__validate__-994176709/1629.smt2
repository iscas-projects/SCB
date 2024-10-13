(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3440 0)
(declare-sort var53 0)
(declare-sort var2556 0)
(declare-sort var2047 0)
(declare-sort var947 0)
(declare-sort var1129 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var53!class ClassObject)
(declare-fun parameterMapping/2084547934 (var3440) var2556)
(declare-fun var2556_access$500/-2086424374 (var2556) ClassObject)
(declare-fun equals/-1650223740 (var2047 var2047) Bool)
(declare-fun cast-from-ClassObject-to-var2047 (ClassObject) var2047)
(declare-fun var2556_access$800/-1604202854 (var2556) String)
(declare-fun var1129-init () var1129)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var2556_access$200/1168245600 (var2556) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var1129 String) void)
(declare-const null-var3440 var3440)
(declare-const null-String String)
(declare-const var2570 var3440) ; Statement: r0 := @this: org.apache.ibatis.mapping.ParameterMapping$Builder 
(assert (not (= var2570 null-var3440)))
(define-const var2963 ClassObject var53!class) ; Statement: $r3 = class "Ljava/sql/ResultSet;" 
(define-const var626 var2556 (parameterMapping/2084547934 var2570)) ; Statement: $r1 = r0.<org.apache.ibatis.mapping.ParameterMapping$Builder: org.apache.ibatis.mapping.ParameterMapping parameterMapping> 
(define-const var2781 ClassObject (var2556_access$500/-2086424374 var626)) ; Statement: $r2 = staticinvoke <org.apache.ibatis.mapping.ParameterMapping: java.lang.Class access$500(org.apache.ibatis.mapping.ParameterMapping)>($r1) 
(assert true)
(define-const var1951 Bool (equals/-1650223740 (cast-from-ClassObject-to-var2047 var2963) (cast-from-ClassObject-to-var2047 var2781))) ; Statement: $z0 = virtualinvoke $r3.<java.lang.Object: boolean equals(java.lang.Object)>($r2) 
 ; Statement: if $z0 == 0 goto $r4 = r0.<org.apache.ibatis.mapping.ParameterMapping$Builder: org.apache.ibatis.mapping.ParameterMapping parameterMapping> 
(assert (not (= (ite var1951 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var546 var2556 (parameterMapping/2084547934 var2570)) ; Statement: $r23 = r0.<org.apache.ibatis.mapping.ParameterMapping$Builder: org.apache.ibatis.mapping.ParameterMapping parameterMapping> 
(define-const var766 String (var2556_access$800/-1604202854 var546)) ; Statement: $r24 = staticinvoke <org.apache.ibatis.mapping.ParameterMapping: java.lang.String access$800(org.apache.ibatis.mapping.ParameterMapping)>($r23) 
 ; Statement: if $r24 != null goto return 
(assert (not (not (= var766 null-String)))) ; Negate: Cond: $r24 != null  
(define-const var2468 var1129 var1129-init) ; Statement: $r25 = new java.lang.IllegalStateException 
(define-const var1747 String String-init) ; Statement: $r26 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1747)) ; Statement: specialinvoke $r26.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1747!1 String)
(assert (= var1747!1 ""))
(assert true)
(define-const var852 String (append/672562846 var1747!1 "Missing resultmap in property \u0027")) ; Statement: $r29 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Missing resultmap in property \'") 
(declare-const var1747!2 String)
(assert (= var1747!2 (str.++ var1747!1 "Missing resultmap in property \u0027")))
(define-const var3814 var2556 (parameterMapping/2084547934 var2570)) ; Statement: $r27 = r0.<org.apache.ibatis.mapping.ParameterMapping$Builder: org.apache.ibatis.mapping.ParameterMapping parameterMapping> 
(define-const var3867 String (var2556_access$200/1168245600 var3814)) ; Statement: $r28 = staticinvoke <org.apache.ibatis.mapping.ParameterMapping: java.lang.String access$200(org.apache.ibatis.mapping.ParameterMapping)>($r27) 
(assert true)
(define-const var2895 String (append/672562846 var852 var3867)) ; Statement: $r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r28) 
(declare-const var852!1 String)
(assert (= var852!1 (str.++ var852 var3867)))
(assert true)
(define-const var1030 String (append/672562846 var2895 "\u0027.  Parameters of type java.sql.ResultSet require a resultmap.")) ; Statement: $r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'.  Parameters of type java.sql.ResultSet require a resultmap.") 
(declare-const var2895!1 String)
(assert (= var2895!1 (str.++ var2895 "\u0027.  Parameters of type java.sql.ResultSet require a resultmap.")))
(assert true)
(define-const var130 String (toString/-2075883882 var1030)) ; Statement: $r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var2468 var130)) ; Statement: specialinvoke $r25.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r32) 

(declare-const var2468!1 var1129)
(declare-const var130!1 String)
 ; Statement: throw $r25 
(check-sat)
(get-model)
(get-unsat-core)
; {parameterMapping/2084547934=([org.apache.ibatis.mapping.ParameterMapping$Builder], org.apache.ibatis.mapping.ParameterMapping), var2556_access$500/-2086424374=([org.apache.ibatis.mapping.ParameterMapping], java.lang.Class), equals/-1650223740=([java.lang.Object, java.lang.Object], boolean), cast-from-ClassObject-to-var2047=([java.lang.Class], java.lang.Object), var2556_access$800/-1604202854=([org.apache.ibatis.mapping.ParameterMapping], java.lang.String), var1129-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var2556_access$200/1168245600=([org.apache.ibatis.mapping.ParameterMapping], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var3440=org.apache.ibatis.mapping.ParameterMapping$Builder, var2570=r0, var53=java.sql.ResultSet, var2963=$r3, var2556=org.apache.ibatis.mapping.ParameterMapping, var626=$r1, var2781=$r2, var2047=java.lang.Object, var1951=$z0, var546=$r23, var766=$r24, var947=null_type, var1129=java.lang.IllegalStateException, var2468=$r25, var1747=$r26, var852=$r29, var3814=$r27, var3867=$r28, var2895=$r30, var1030=$r31, var130=$r32}
; {org.apache.ibatis.mapping.ParameterMapping$Builder=var3440, r0=var2570, java.sql.ResultSet=var53, $r3=var2963, org.apache.ibatis.mapping.ParameterMapping=var2556, $r1=var626, $r2=var2781, java.lang.Object=var2047, $z0=var1951, $r23=var546, $r24=var766, null_type=var947, java.lang.IllegalStateException=var1129, $r25=var2468, $r26=var1747, $r29=var852, $r27=var3814, $r28=var3867, $r30=var2895, $r31=var1030, $r32=var130}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.mapping.ParameterMapping$Builder;	$r3 = class "Ljava/sql/ResultSet;";	$r1 = r0.<org.apache.ibatis.mapping.ParameterMapping$Builder: org.apache.ibatis.mapping.ParameterMapping parameterMapping>;	$r2 = staticinvoke <org.apache.ibatis.mapping.ParameterMapping: java.lang.Class access$500(org.apache.ibatis.mapping.ParameterMapping)>($r1);	$z0 = virtualinvoke $r3.<java.lang.Object: boolean equals(java.lang.Object)>($r2);	if $z0 == 0 goto $r4 = r0.<org.apache.ibatis.mapping.ParameterMapping$Builder: org.apache.ibatis.mapping.ParameterMapping parameterMapping>;	$r23 = r0.<org.apache.ibatis.mapping.ParameterMapping$Builder: org.apache.ibatis.mapping.ParameterMapping parameterMapping>;	$r24 = staticinvoke <org.apache.ibatis.mapping.ParameterMapping: java.lang.String access$800(org.apache.ibatis.mapping.ParameterMapping)>($r23);	if $r24 != null goto return;	$r25 = new java.lang.IllegalStateException;	$r26 = new java.lang.StringBuilder;	specialinvoke $r26.<java.lang.StringBuilder: void <init>()>();	$r29 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Missing resultmap in property \'");	$r27 = r0.<org.apache.ibatis.mapping.ParameterMapping$Builder: org.apache.ibatis.mapping.ParameterMapping parameterMapping>;	$r28 = staticinvoke <org.apache.ibatis.mapping.ParameterMapping: java.lang.String access$200(org.apache.ibatis.mapping.ParameterMapping)>($r27);	$r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r28);	$r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'.  Parameters of type java.sql.ResultSet require a resultmap.");	$r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r25.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r32);	throw $r25
;block_num 3