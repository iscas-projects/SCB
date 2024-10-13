(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var924 0)
(declare-sort var504 0)
(declare-sort var2698 0)
(declare-sort var1092 0)
(declare-sort var1194 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun node/-78380782 (var924) var2698)
(declare-fun getClass/1258963082 (var1092) ClassObject)
(declare-fun cast-from-var2698-to-var1092 (var2698) var1092)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun var1194_identityHashCode/1096208673 (var1092) Int)
(declare-fun cast-from-var924-to-var1092 (var924) var1092)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-const null-var924 var924)
(declare-const null-Bool Bool)
(declare-const null-String String)
(declare-const var3693 var924) ; Statement: r0 := @this: org.apache.ibatis.ognl.Evaluation 
(assert (not (= var3693 null-var924)))
(declare-const var3730 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var3730 null-Bool)))
(declare-const var1129 Bool) ; Statement: z2 := @parameter1: boolean 
(assert (not (= var1129 null-Bool)))
(declare-const var758 String) ; Statement: r6 := @parameter2: java.lang.String 
(assert (not (= var758 null-String)))
 ; Statement: if z0 == 0 goto $r1 = r0.<org.apache.ibatis.ognl.Evaluation: java.lang.Object source> 
(assert (not (= (ite var3730 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var2829 String String-init) ; Statement: $r34 = new java.lang.StringBuilder 
(define-const var3988 String String-init) ; Statement: $r35 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3988)) ; Statement: specialinvoke $r35.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3988!1 String)
(assert (= var3988!1 ""))
(assert true)
(define-const var2403 String (append/672562846 var3988!1 var758)) ; Statement: $r36 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6) 
(declare-const var3988!2 String)
(assert (= var3988!2 (str.++ var3988!1 var758)))
(assert true)
(define-const var1551 String (append/672562846 var2403 "<")) ; Statement: $r40 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<") 
(declare-const var2403!1 String)
(assert (= var2403!1 (str.++ var2403 "<")))
(define-const var2458 var2698 (node/-78380782 var3693)) ; Statement: $r37 = r0.<org.apache.ibatis.ognl.Evaluation: org.apache.ibatis.ognl.SimpleNode node> 
(assert true)
(define-const var1464 ClassObject (getClass/1258963082 (cast-from-var2698-to-var1092 var2458))) ; Statement: $r38 = virtualinvoke $r37.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var220 String (getName/-1958580599 var1464)) ; Statement: $r39 = virtualinvoke $r38.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1241 String (append/672562846 var1551 var220)) ; Statement: $r41 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r39) 
(declare-const var1551!1 String)
(assert (= var1551!1 (str.++ var1551 var220)))
(assert true)
(define-const var2371 String (append/672562846 var1241 " ")) ; Statement: $r42 = virtualinvoke $r41.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ") 
(declare-const var1241!1 String)
(assert (= var1241!1 (str.++ var1241 " ")))
(define-const var425 Int (var1194_identityHashCode/1096208673 (cast-from-var924-to-var1092 var3693))) ; Statement: $i0 = staticinvoke <java.lang.System: int identityHashCode(java.lang.Object)>(r0) 
(assert true)
(define-const var1965 String (append/-1001720160 var2371 var425)) ; Statement: $r43 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var2371!1 String)
(assert (str.prefixof var2371 var2371!1))
(assert true)
(define-const var3401 String (append/672562846 var1965 ">")) ; Statement: $r44 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">") 
(declare-const var1965!1 String)
(assert (= var1965!1 (str.++ var1965 ">")))
(assert true)
(define-const var1206 String (toString/-2075883882 var3401)) ; Statement: $r45 = virtualinvoke $r44.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1061048412 var2829 var1206)) ; Statement: specialinvoke $r34.<java.lang.StringBuilder: void <init>(java.lang.String)>($r45) 
(declare-const var2829!1 String)
(assert (= var2829!1 var1206))
(define-const var254 String var2829!1) ; Statement: r46 = $r34 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if z2 == 0 goto $r24 = virtualinvoke r46.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var1129 1 0) 0)) ; Cond: z2 == 0 
(assert true)
(define-const var2169 String (toString/-2075883882 var254)) ; Statement: $r24 = virtualinvoke r46.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r24 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), node/-78380782=([org.apache.ibatis.ognl.Evaluation], org.apache.ibatis.ognl.SimpleNode), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var2698-to-var1092=([org.apache.ibatis.ognl.SimpleNode], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), var1194_identityHashCode/1096208673=([java.lang.Object], int), cast-from-var924-to-var1092=([org.apache.ibatis.ognl.Evaluation], java.lang.Object), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void)}
; {var924=org.apache.ibatis.ognl.Evaluation, var3693=r0, var3730=z0, var1129=z2, var758=r6, var504=null_type, var2829=$r34, var3988=$r35, var2403=$r36, var1551=$r40, var2698=org.apache.ibatis.ognl.SimpleNode, var2458=$r37, var1092=java.lang.Object, var1464=$r38, var220=$r39, var1241=$r41, var2371=$r42, var1194=java.lang.System, var425=$i0, var1965=$r43, var3401=$r44, var1206=$r45, var254=r46, var2169=$r24}
; {org.apache.ibatis.ognl.Evaluation=var924, r0=var3693, z0=var3730, z2=var1129, r6=var758, null_type=var504, $r34=var2829, $r35=var3988, $r36=var2403, $r40=var1551, org.apache.ibatis.ognl.SimpleNode=var2698, $r37=var2458, java.lang.Object=var1092, $r38=var1464, $r39=var220, $r41=var1241, $r42=var2371, java.lang.System=var1194, $i0=var425, $r43=var1965, $r44=var3401, $r45=var1206, r46=var254, $r24=var2169}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1}
;stmts r0 := @this: org.apache.ibatis.ognl.Evaluation;	z0 := @parameter0: boolean;	z2 := @parameter1: boolean;	r6 := @parameter2: java.lang.String;	if z0 == 0 goto $r1 = r0.<org.apache.ibatis.ognl.Evaluation: java.lang.Object source>;	$r34 = new java.lang.StringBuilder;	$r35 = new java.lang.StringBuilder;	specialinvoke $r35.<java.lang.StringBuilder: void <init>()>();	$r36 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6);	$r40 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<");	$r37 = r0.<org.apache.ibatis.ognl.Evaluation: org.apache.ibatis.ognl.SimpleNode node>;	$r38 = virtualinvoke $r37.<java.lang.Object: java.lang.Class getClass()>();	$r39 = virtualinvoke $r38.<java.lang.Class: java.lang.String getName()>();	$r41 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r39);	$r42 = virtualinvoke $r41.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");	$i0 = staticinvoke <java.lang.System: int identityHashCode(java.lang.Object)>(r0);	$r43 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r44 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">");	$r45 = virtualinvoke $r44.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r34.<java.lang.StringBuilder: void <init>(java.lang.String)>($r45);	r46 = $r34;	goto [?= (branch)];	if z2 == 0 goto $r24 = virtualinvoke r46.<java.lang.StringBuilder: java.lang.String toString()>();	$r24 = virtualinvoke r46.<java.lang.StringBuilder: java.lang.String toString()>();	return $r24
;block_num 4