(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3195 0)
(declare-sort var2187 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isReference/-1089173962 (var2187) Bool)
(declare-fun cast-from-var3195-to-var2187 (var3195) var2187)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getDataTypeName/-1724610511 (var2187) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun toString/1668676610 (var3195) String)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3195 var3195)
(declare-const var2784 var3195) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource 
(assert (not (= var2784 null-var3195)))
(assert true)
(define-const var3524 Bool (isReference/-1089173962 (cast-from-var3195-to-var2187 var2784))) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource: boolean isReference()>() 
 ; Statement: if $z0 == 0 goto $r1 = new java.lang.StringBuilder 
(assert (= (ite var3524 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3680 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3680)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3680!1 String)
(assert (= var3680!1 ""))
(assert true)
(define-const var1707 String (getDataTypeName/-1724610511 (cast-from-var3195-to-var2187 var2784))) ; Statement: $r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource: java.lang.String getDataTypeName()>() 
(assert true)
(define-const var2720 String (append/672562846 var3680!1 var1707)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3680!2 String)
(assert (= var3680!2 (str.++ var3680!1 var1707)))
(assert true)
(define-const var1750 String (append/672562846 var2720 " \u0022")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" \"") 
(declare-const var2720!1 String)
(assert (= var2720!1 (str.++ var2720 " \u0022")))
(assert true)
(define-const var882 String (toString/1668676610 var2784)) ; Statement: $r4 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource: java.lang.String toString()>() 
(assert true)
(define-const var985 String (append/672562846 var1750 var882)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var1750!1 String)
(assert (= var1750!1 (str.++ var1750 var882)))
(assert true)
(define-const var617 String (append/-1166366385 var985 34)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34) 
(declare-const var985!1 String)
(assert (str.prefixof var985 var985!1))
(assert true)
(define-const var794 String (toString/-2075883882 var617)) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {isReference/-1089173962=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.DataType], boolean), cast-from-var3195-to-var2187=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.DataType), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getDataTypeName/-1724610511=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.DataType], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/1668676610=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource], java.lang.String), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3195=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource, var2784=r0, var2187=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.DataType, var3524=$z0, var3680=$r1, var1707=$r2, var2720=$r3, var1750=$r5, var882=$r4, var985=$r6, var617=$r7, var794=$r9}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource=var3195, r0=var2784, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.DataType=var2187, $z0=var3524, $r1=var3680, $r2=var1707, $r3=var2720, $r5=var1750, $r4=var882, $r6=var985, $r7=var617, $r9=var794}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource;	$z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource: boolean isReference()>();	if $z0 == 0 goto $r1 = new java.lang.StringBuilder;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource: java.lang.String getDataTypeName()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" \"");	$r4 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource: java.lang.String toString()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34);	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 3