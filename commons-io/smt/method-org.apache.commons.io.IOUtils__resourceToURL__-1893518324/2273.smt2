(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2834 0)
(declare-sort var856 0)
(declare-sort var2915 0)
(declare-sort var1559 0)
(declare-sort var2094 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2915!class ClassObject)
(declare-fun getResource/413390302 (ClassObject String) var1559)
(declare-fun var2094-init () var2094)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1557872005 (var2094 String) void)
(declare-const null-String String)
(declare-const null-var856 var856)
(declare-const null-var1559 var1559)
(declare-const var1349 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1349 null-String)))
(declare-const var3418 var856) ; Statement: r0 := @parameter1: java.lang.ClassLoader 
(assert (not (= var3418 null-var856)))
 ; Statement: if r0 != null goto $r8 = virtualinvoke r0.<java.lang.ClassLoader: java.net.URL getResource(java.lang.String)>(r1) 
(assert (not (not (= var3418 null-var856)))) ; Negate: Cond: r0 != null  
(define-const var1632 ClassObject var2915!class) ; Statement: $r7 = class "Lorg/apache/commons/io/IOUtils;" 
(assert true)
(define-const var2369 var1559 (getResource/413390302 var1632 var1349)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.Class: java.net.URL getResource(java.lang.String)>(r1) 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if $r8 != null goto return $r8 
(assert (not (not (= var2369 null-var1559)))) ; Negate: Cond: $r8 != null  
(define-const var531 var2094 var2094-init) ; Statement: $r2 = new java.io.IOException 
(define-const var3651 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3651)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3651!1 String)
(assert (= var3651!1 ""))
(assert true)
(define-const var2354 String (append/672562846 var3651!1 "Resource not found: ")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Resource not found: ") 
(declare-const var3651!2 String)
(assert (= var3651!2 (str.++ var3651!1 "Resource not found: ")))
(assert true)
(define-const var3350 String (append/672562846 var2354 var1349)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2354!1 String)
(assert (= var2354!1 (str.++ var2354 var1349)))
(assert true)
(define-const var3412 String (toString/-2075883882 var3350)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1557872005 var531 var3412)) ; Statement: specialinvoke $r2.<java.io.IOException: void <init>(java.lang.String)>($r6) 

(declare-const var531!1 var2094)
(declare-const var3412!1 String)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {getResource/413390302=([java.lang.Class, java.lang.String], java.net.URL), var2094-init=([], java.io.IOException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1557872005=([java.io.IOException, java.lang.String], void)}
; {var1349=r1, var2834=null_type, var856=java.lang.ClassLoader, var3418=r0, var2915=org.apache.commons.io.IOUtils, var1632=$r7, var1559=java.net.URL, var2369=$r8, var2094=java.io.IOException, var531=$r2, var3651=$r3, var2354=$r4, var3350=$r5, var3412=$r6}
; {r1=var1349, null_type=var2834, java.lang.ClassLoader=var856, r0=var3418, org.apache.commons.io.IOUtils=var2915, $r7=var1632, java.net.URL=var1559, $r8=var2369, java.io.IOException=var2094, $r2=var531, $r3=var3651, $r4=var2354, $r5=var3350, $r6=var3412}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	r0 := @parameter1: java.lang.ClassLoader;	if r0 != null goto $r8 = virtualinvoke r0.<java.lang.ClassLoader: java.net.URL getResource(java.lang.String)>(r1);	$r7 = class "Lorg/apache/commons/io/IOUtils;";	$r8 = virtualinvoke $r7.<java.lang.Class: java.net.URL getResource(java.lang.String)>(r1);	goto [?= (branch)];	if $r8 != null goto return $r8;	$r2 = new java.io.IOException;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Resource not found: ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r2.<java.io.IOException: void <init>(java.lang.String)>($r6);	throw $r2
;block_num 4