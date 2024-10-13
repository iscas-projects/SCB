(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var327 0)
(declare-sort var1894 0)
(declare-sort var135 0)
(declare-sort var604 0)
(declare-sort var2751 0)
(declare-sort var2612 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getResourceAsURL/-1416270146 (var135 String var327) var2751)
(declare-fun var2612-init () var2612)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1557872005 (var2612 String) void)
(declare-const null-var327 var327)
(declare-const null-String String)
(declare-const var604-classLoaderWrapper var135)
(declare-const null-var2751 var2751)
(declare-const var963 var327) ; Statement: r1 := @parameter0: java.lang.ClassLoader 
(assert (not (= var963 null-var327)))
(declare-const var2148 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var2148 null-String)))
(define-const var3814 var135 var604-classLoaderWrapper) ; Statement: $r2 = <org.apache.ibatis.io.Resources: org.apache.ibatis.io.ClassLoaderWrapper classLoaderWrapper> 
(assert true)
(define-const var113 var2751 (getResourceAsURL/-1416270146 var3814 var2148 var963)) ; Statement: r3 = virtualinvoke $r2.<org.apache.ibatis.io.ClassLoaderWrapper: java.net.URL getResourceAsURL(java.lang.String,java.lang.ClassLoader)>(r0, r1) 
 ; Statement: if r3 != null goto return r3 
(assert (not (not (= var113 null-var2751)))) ; Negate: Cond: r3 != null  
(define-const var3938 var2612 var2612-init) ; Statement: $r4 = new java.io.IOException 
(define-const var1506 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1506)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1506!1 String)
(assert (= var1506!1 ""))
(assert true)
(define-const var3422 String (append/672562846 var1506!1 "Could not find resource ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not find resource ") 
(declare-const var1506!2 String)
(assert (= var1506!2 (str.++ var1506!1 "Could not find resource ")))
(assert true)
(define-const var2289 String (append/672562846 var3422 var2148)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var3422!1 String)
(assert (= var3422!1 (str.++ var3422 var2148)))
(assert true)
(define-const var3656 String (toString/-2075883882 var2289)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1557872005 var3938 var3656)) ; Statement: specialinvoke $r4.<java.io.IOException: void <init>(java.lang.String)>($r8) 

(declare-const var3938!1 var2612)
(declare-const var3656!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {getResourceAsURL/-1416270146=([org.apache.ibatis.io.ClassLoaderWrapper, java.lang.String, java.lang.ClassLoader], java.net.URL), var2612-init=([], java.io.IOException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1557872005=([java.io.IOException, java.lang.String], void)}
; {var327=java.lang.ClassLoader, var963=r1, var2148=r0, var1894=null_type, var135=org.apache.ibatis.io.ClassLoaderWrapper, var604=org.apache.ibatis.io.Resources, var3814=$r2, var2751=java.net.URL, var113=r3, var2612=java.io.IOException, var3938=$r4, var1506=$r5, var3422=$r6, var2289=$r7, var3656=$r8}
; {java.lang.ClassLoader=var327, r1=var963, r0=var2148, null_type=var1894, org.apache.ibatis.io.ClassLoaderWrapper=var135, org.apache.ibatis.io.Resources=var604, $r2=var3814, java.net.URL=var2751, r3=var113, java.io.IOException=var2612, $r4=var3938, $r5=var1506, $r6=var3422, $r7=var2289, $r8=var3656}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.ClassLoader;	r0 := @parameter1: java.lang.String;	$r2 = <org.apache.ibatis.io.Resources: org.apache.ibatis.io.ClassLoaderWrapper classLoaderWrapper>;	r3 = virtualinvoke $r2.<org.apache.ibatis.io.ClassLoaderWrapper: java.net.URL getResourceAsURL(java.lang.String,java.lang.ClassLoader)>(r0, r1);	if r3 != null goto return r3;	$r4 = new java.io.IOException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not find resource ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<java.io.IOException: void <init>(java.lang.String)>($r8);	throw $r4
;block_num 2