(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1091 0)
(declare-sort var612 0)
(declare-sort var1965 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var1965-init () var1965)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1608543538 (var1965 String) void)
(declare-const null-var1091 var1091)
(declare-const null-String String)
(declare-const var2979 var1091) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Attribute 
(assert (not (= var2979 null-var1091)))
(declare-const var1655 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1655 null-String)))
(assert true)
(define-const var2376 Int (indexOf/-1209756239 var1655 ": ")) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>(": ") 
(define-const var478 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i3 = (int) -1 
 ; Statement: if i0 != $i3 goto $r2 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0) 
(assert (not (not (= var2376 var478)))) ; Negate: Cond: i0 != $i3  
(define-const var2529 var1965 var1965-init) ; Statement: $r11 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ManifestException 
(define-const var1991 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1991)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1991!1 String)
(assert (= var1991!1 ""))
(assert true)
(define-const var1491 String (append/672562846 var1991!1 "Manifest line \u0022")) ; Statement: $r6 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Manifest line \"") 
(declare-const var1991!2 String)
(assert (= var1991!2 (str.++ var1991!1 "Manifest line \u0022")))
(assert true)
(define-const var262 String (append/672562846 var1491 var1655)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var1491!1 String)
(assert (= var1491!1 (str.++ var1491 var1655)))
(assert true)
(define-const var1332 String (append/672562846 var262 "\u0022 is not valid as it does not contain a name and a value separated by \u0027: \u0027")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" is not valid as it does not contain a name and a value separated by \': \'") 
(declare-const var262!1 String)
(assert (= var262!1 (str.++ var262 "\u0022 is not valid as it does not contain a name and a value separated by \u0027: \u0027")))
(assert true)
(define-const var1275 String (toString/-2075883882 var1332)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1608543538 var2529 var1275)) ; Statement: specialinvoke $r11.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ManifestException: void <init>(java.lang.String)>($r9) 

(declare-const var2529!1 var1965)
(declare-const var1275!1 String)
 ; Statement: throw $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1209756239=([java.lang.String, java.lang.String], int), cast-from-Int-to-Int=([int], int), var1965-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ManifestException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1608543538=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ManifestException, java.lang.String], void)}
; {var1091=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Attribute, var2979=r1, var1655=r0, var612=null_type, var2376=i0, var478=$i3, var1965=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ManifestException, var2529=$r11, var1991=$r10, var1491=$r6, var262=$r7, var1332=$r8, var1275=$r9}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Attribute=var1091, r1=var2979, r0=var1655, null_type=var612, i0=var2376, $i3=var478, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ManifestException=var1965, $r11=var2529, $r10=var1991, $r6=var1491, $r7=var262, $r8=var1332, $r9=var1275}
;seq <java.lang.String: int indexOf(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int indexOf(java.lang.String)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Attribute;	r0 := @parameter0: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>(": ");	$i3 = (int) -1;	if i0 != $i3 goto $r2 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0);	$r11 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ManifestException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Manifest line \"");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" is not valid as it does not contain a name and a value separated by \': \'");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r11.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ManifestException: void <init>(java.lang.String)>($r9);	throw $r11
;block_num 2