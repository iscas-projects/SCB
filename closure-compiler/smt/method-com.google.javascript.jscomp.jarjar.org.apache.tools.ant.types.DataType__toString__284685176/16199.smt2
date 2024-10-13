(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1521 0)
(declare-sort var1330 0)
(declare-sort var3831 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getDescription/1385372521 (var1330) String)
(declare-fun cast-from-var1521-to-var1330 (var1521) var1330)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getDataTypeName/-1724610511 (var1521) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1521 var1521)
(declare-const null-String String)
(declare-const var3346 var1521) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.DataType 
(assert (not (= var3346 null-var1521)))
(assert true)
(define-const var3931 String (getDescription/1385372521 (cast-from-var1521-to-var1330 var3346))) ; Statement: r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.DataType: java.lang.String getDescription()>() 
 ; Statement: if r1 != null goto $r2 = new java.lang.StringBuilder 
(assert (not (= var3931 null-String))) ; Cond: r1 != null 
(define-const var668 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var668)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var668!1 String)
(assert (= var668!1 ""))
(assert true)
(define-const var2092 String (getDataTypeName/-1724610511 var3346)) ; Statement: $r3 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.DataType: java.lang.String getDataTypeName()>() 
(assert true)
(define-const var3270 String (append/672562846 var668!1 var2092)) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var668!2 String)
(assert (= var668!2 (str.++ var668!1 var2092)))
(assert true)
(define-const var2730 String (append/672562846 var3270 " ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ") 
(declare-const var3270!1 String)
(assert (= var3270!1 (str.++ var3270 " ")))
(assert true)
(define-const var1933 String (append/672562846 var2730 var3931)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2730!1 String)
(assert (= var2730!1 (str.++ var2730 var3931)))
(assert true)
(define-const var1551 String (toString/-2075883882 var1933)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {getDescription/1385372521=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent], java.lang.String), cast-from-var1521-to-var1330=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.DataType], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getDataTypeName/-1724610511=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.DataType], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1521=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.DataType, var3346=r0, var1330=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var3931=r1, var3831=null_type, var668=$r2, var2092=$r3, var3270=$r4, var2730=$r5, var1933=$r6, var1551=$r7}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.DataType=var1521, r0=var3346, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var1330, r1=var3931, null_type=var3831, $r2=var668, $r3=var2092, $r4=var3270, $r5=var2730, $r6=var1933, $r7=var1551}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.DataType;	r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.DataType: java.lang.String getDescription()>();	if r1 != null goto $r2 = new java.lang.StringBuilder;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.DataType: java.lang.String getDataTypeName()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 3