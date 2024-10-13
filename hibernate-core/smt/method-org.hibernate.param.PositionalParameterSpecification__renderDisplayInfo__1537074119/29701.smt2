(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var859 0)
(declare-sort var2192 0)
(declare-sort var1063 0)
(declare-sort var3136 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun label/-2040953771 (var859) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun getExpectedType/1604374374 (var1063) var2192)
(declare-fun cast-from-var859-to-var1063 (var859) var1063)
(declare-fun append/-1031950772 (String var3136) String)
(declare-fun cast-from-var2192-to-var3136 (var2192) var3136)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var859 var859)
(declare-const var1945 var859) ; Statement: r1 := @this: org.hibernate.param.PositionalParameterSpecification 
(assert (not (= var1945 null-var859)))
(define-const var1322 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1322)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1322!1 String)
(assert (= var1322!1 ""))
(assert true)
(define-const var2141 String (append/672562846 var1322!1 "label=")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("label=") 
(declare-const var1322!2 String)
(assert (= var1322!2 (str.++ var1322!1 "label=")))
(define-const var2676 Int (label/-2040953771 var1945)) ; Statement: $i0 = r1.<org.hibernate.param.PositionalParameterSpecification: int label> 
(assert true)
(define-const var3685 String (append/-1001720160 var2141 var2676)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var2141!1 String)
(assert (str.prefixof var2141 var2141!1))
(assert true)
(define-const var1354 String (append/672562846 var3685 ", expectedType=")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", expectedType=") 
(declare-const var3685!1 String)
(assert (= var3685!1 (str.++ var3685 ", expectedType=")))
(assert true)
(define-const var3629 var2192 (getExpectedType/1604374374 (cast-from-var859-to-var1063 var1945))) ; Statement: $r4 = virtualinvoke r1.<org.hibernate.param.PositionalParameterSpecification: org.hibernate.type.Type getExpectedType()>() 
(assert true)
(define-const var3101 String (append/-1031950772 var1354 (cast-from-var2192-to-var3136 var3629))) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4) 
(declare-const var1354!1 String)
(assert (str.prefixof var1354 var1354!1))
(assert true)
(define-const var3705 String (toString/-2075883882 var3101)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), label/-2040953771=([org.hibernate.param.PositionalParameterSpecification], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), getExpectedType/1604374374=([org.hibernate.param.AbstractExplicitParameterSpecification], org.hibernate.type.Type), cast-from-var859-to-var1063=([org.hibernate.param.PositionalParameterSpecification], org.hibernate.param.AbstractExplicitParameterSpecification), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2192-to-var3136=([org.hibernate.type.Type], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var859=org.hibernate.param.PositionalParameterSpecification, var1945=r1, var1322=$r0, var2141=$r2, var2676=$i0, var3685=$r3, var1354=$r5, var2192=org.hibernate.type.Type, var1063=org.hibernate.param.AbstractExplicitParameterSpecification, var3629=$r4, var3136=java.lang.Object, var3101=$r6, var3705=$r7}
; {org.hibernate.param.PositionalParameterSpecification=var859, r1=var1945, $r0=var1322, $r2=var2141, $i0=var2676, $r3=var3685, $r5=var1354, org.hibernate.type.Type=var2192, org.hibernate.param.AbstractExplicitParameterSpecification=var1063, $r4=var3629, java.lang.Object=var3136, $r6=var3101, $r7=var3705}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.param.PositionalParameterSpecification;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("label=");	$i0 = r1.<org.hibernate.param.PositionalParameterSpecification: int label>;	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", expectedType=");	$r4 = virtualinvoke r1.<org.hibernate.param.PositionalParameterSpecification: org.hibernate.type.Type getExpectedType()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1