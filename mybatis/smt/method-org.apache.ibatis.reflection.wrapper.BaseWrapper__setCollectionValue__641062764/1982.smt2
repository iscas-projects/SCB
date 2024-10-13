(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1321 0)
(declare-sort var3670 0)
(declare-sort var1258 0)
(declare-sort var1288 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1288-init () var1288)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getIndexedName/-703281680 (var3670) String)
(declare-fun getName/-1907289949 (var3670) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-670718455 (var1288 String) void)
(declare-const null-var1321 var1321)
(declare-const null-var3670 var3670)
(declare-const null-var1258 var1258)
(declare-const var2748 var1321) ; Statement: r44 := @this: org.apache.ibatis.reflection.wrapper.BaseWrapper 
(assert (not (= var2748 null-var1321)))
(declare-const var2306 var3670) ; Statement: r1 := @parameter0: org.apache.ibatis.reflection.property.PropertyTokenizer 
(assert (not (= var2306 null-var3670)))
(declare-const var1630 var1258) ; Statement: r0 := @parameter1: java.lang.Object 
(assert (not (= var1630 null-var1258)))
(declare-const var2892 var1258) ; Statement: r13 := @parameter2: java.lang.Object 
(assert (not (= var2892 null-var1258)))
 ; Statement: if r0 != null goto $z0 = r0 instanceof java.util.Map 
(assert (not (not (= var1630 null-var1258)))) ; Negate: Cond: r0 != null  
(define-const var424 var1288 var1288-init) ; Statement: $r34 = new org.apache.ibatis.reflection.ReflectionException 
(define-const var1488 String String-init) ; Statement: $r35 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1488)) ; Statement: specialinvoke $r35.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1488!1 String)
(assert (= var1488!1 ""))
(assert true)
(define-const var2981 String (append/672562846 var1488!1 "Cannot set the value \u0027")) ; Statement: $r37 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot set the value \'") 
(declare-const var1488!2 String)
(assert (= var1488!2 (str.++ var1488!1 "Cannot set the value \u0027")))
(assert true)
(define-const var1991 String (getIndexedName/-703281680 var2306)) ; Statement: $r36 = virtualinvoke r1.<org.apache.ibatis.reflection.property.PropertyTokenizer: java.lang.String getIndexedName()>() 
(assert true)
(define-const var2791 String (append/672562846 var2981 var1991)) ; Statement: $r38 = virtualinvoke $r37.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r36) 
(declare-const var2981!1 String)
(assert (= var2981!1 (str.++ var2981 var1991)))
(assert true)
(define-const var2118 String (append/672562846 var2791 "\u0027 because the property \u0027")) ; Statement: $r40 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' because the property \'") 
(declare-const var2791!1 String)
(assert (= var2791!1 (str.++ var2791 "\u0027 because the property \u0027")))
(assert true)
(define-const var3792 String (getName/-1907289949 var2306)) ; Statement: $r39 = virtualinvoke r1.<org.apache.ibatis.reflection.property.PropertyTokenizer: java.lang.String getName()>() 
(assert true)
(define-const var2401 String (append/672562846 var2118 var3792)) ; Statement: $r41 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r39) 
(declare-const var2118!1 String)
(assert (= var2118!1 (str.++ var2118 var3792)))
(assert true)
(define-const var1297 String (append/672562846 var2401 "\u0027 is null.")) ; Statement: $r42 = virtualinvoke $r41.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' is null.") 
(declare-const var2401!1 String)
(assert (= var2401!1 (str.++ var2401 "\u0027 is null.")))
(assert true)
(define-const var1140 String (toString/-2075883882 var1297)) ; Statement: $r43 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-670718455 var424 var1140)) ; Statement: specialinvoke $r34.<org.apache.ibatis.reflection.ReflectionException: void <init>(java.lang.String)>($r43) 

(declare-const var424!1 var1288)
(declare-const var1140!1 String)
 ; Statement: throw $r34 
(check-sat)
(get-model)
(get-unsat-core)
; {var1288-init=([], org.apache.ibatis.reflection.ReflectionException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getIndexedName/-703281680=([org.apache.ibatis.reflection.property.PropertyTokenizer], java.lang.String), getName/-1907289949=([org.apache.ibatis.reflection.property.PropertyTokenizer], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-670718455=([org.apache.ibatis.reflection.ReflectionException, java.lang.String], void)}
; {var1321=org.apache.ibatis.reflection.wrapper.BaseWrapper, var2748=r44, var3670=org.apache.ibatis.reflection.property.PropertyTokenizer, var2306=r1, var1258=java.lang.Object, var1630=r0, var2892=r13, var1288=org.apache.ibatis.reflection.ReflectionException, var424=$r34, var1488=$r35, var2981=$r37, var1991=$r36, var2791=$r38, var2118=$r40, var3792=$r39, var2401=$r41, var1297=$r42, var1140=$r43}
; {org.apache.ibatis.reflection.wrapper.BaseWrapper=var1321, r44=var2748, org.apache.ibatis.reflection.property.PropertyTokenizer=var3670, r1=var2306, java.lang.Object=var1258, r0=var1630, r13=var2892, org.apache.ibatis.reflection.ReflectionException=var1288, $r34=var424, $r35=var1488, $r37=var2981, $r36=var1991, $r38=var2791, $r40=var2118, $r39=var3792, $r41=var2401, $r42=var1297, $r43=var1140}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r44 := @this: org.apache.ibatis.reflection.wrapper.BaseWrapper;	r1 := @parameter0: org.apache.ibatis.reflection.property.PropertyTokenizer;	r0 := @parameter1: java.lang.Object;	r13 := @parameter2: java.lang.Object;	if r0 != null goto $z0 = r0 instanceof java.util.Map;	$r34 = new org.apache.ibatis.reflection.ReflectionException;	$r35 = new java.lang.StringBuilder;	specialinvoke $r35.<java.lang.StringBuilder: void <init>()>();	$r37 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot set the value \'");	$r36 = virtualinvoke r1.<org.apache.ibatis.reflection.property.PropertyTokenizer: java.lang.String getIndexedName()>();	$r38 = virtualinvoke $r37.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r36);	$r40 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' because the property \'");	$r39 = virtualinvoke r1.<org.apache.ibatis.reflection.property.PropertyTokenizer: java.lang.String getName()>();	$r41 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r39);	$r42 = virtualinvoke $r41.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' is null.");	$r43 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r34.<org.apache.ibatis.reflection.ReflectionException: void <init>(java.lang.String)>($r43);	throw $r34
;block_num 2