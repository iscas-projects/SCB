(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1387 0)
(declare-sort var3720 0)
(declare-sort var842 0)
(declare-sort var2240 0)
(declare-sort var701 0)
(declare-sort var1178 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getResourceAsStream/1805979041 (var842 String var1387) var701)
(declare-fun var1178-init () var1178)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1557872005 (var1178 String) void)
(declare-const null-var1387 var1387)
(declare-const null-String String)
(declare-const var2240-classLoaderWrapper var842)
(declare-const null-var701 var701)
(declare-const var536 var1387) ; Statement: r1 := @parameter0: java.lang.ClassLoader 
(assert (not (= var536 null-var1387)))
(declare-const var2276 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var2276 null-String)))
(define-const var956 var842 var2240-classLoaderWrapper) ; Statement: $r2 = <org.apache.ibatis.io.Resources: org.apache.ibatis.io.ClassLoaderWrapper classLoaderWrapper> 
(assert true)
(define-const var992 var701 (getResourceAsStream/1805979041 var956 var2276 var536)) ; Statement: r3 = virtualinvoke $r2.<org.apache.ibatis.io.ClassLoaderWrapper: java.io.InputStream getResourceAsStream(java.lang.String,java.lang.ClassLoader)>(r0, r1) 
 ; Statement: if r3 != null goto return r3 
(assert (not (not (= var992 null-var701)))) ; Negate: Cond: r3 != null  
(define-const var608 var1178 var1178-init) ; Statement: $r4 = new java.io.IOException 
(define-const var3220 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3220)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3220!1 String)
(assert (= var3220!1 ""))
(assert true)
(define-const var3701 String (append/672562846 var3220!1 "Could not find resource ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not find resource ") 
(declare-const var3220!2 String)
(assert (= var3220!2 (str.++ var3220!1 "Could not find resource ")))
(assert true)
(define-const var1215 String (append/672562846 var3701 var2276)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var3701!1 String)
(assert (= var3701!1 (str.++ var3701 var2276)))
(assert true)
(define-const var1156 String (toString/-2075883882 var1215)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1557872005 var608 var1156)) ; Statement: specialinvoke $r4.<java.io.IOException: void <init>(java.lang.String)>($r8) 

(declare-const var608!1 var1178)
(declare-const var1156!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {getResourceAsStream/1805979041=([org.apache.ibatis.io.ClassLoaderWrapper, java.lang.String, java.lang.ClassLoader], java.io.InputStream), var1178-init=([], java.io.IOException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1557872005=([java.io.IOException, java.lang.String], void)}
; {var1387=java.lang.ClassLoader, var536=r1, var2276=r0, var3720=null_type, var842=org.apache.ibatis.io.ClassLoaderWrapper, var2240=org.apache.ibatis.io.Resources, var956=$r2, var701=java.io.InputStream, var992=r3, var1178=java.io.IOException, var608=$r4, var3220=$r5, var3701=$r6, var1215=$r7, var1156=$r8}
; {java.lang.ClassLoader=var1387, r1=var536, r0=var2276, null_type=var3720, org.apache.ibatis.io.ClassLoaderWrapper=var842, org.apache.ibatis.io.Resources=var2240, $r2=var956, java.io.InputStream=var701, r3=var992, java.io.IOException=var1178, $r4=var608, $r5=var3220, $r6=var3701, $r7=var1215, $r8=var1156}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.ClassLoader;	r0 := @parameter1: java.lang.String;	$r2 = <org.apache.ibatis.io.Resources: org.apache.ibatis.io.ClassLoaderWrapper classLoaderWrapper>;	r3 = virtualinvoke $r2.<org.apache.ibatis.io.ClassLoaderWrapper: java.io.InputStream getResourceAsStream(java.lang.String,java.lang.ClassLoader)>(r0, r1);	if r3 != null goto return r3;	$r4 = new java.io.IOException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not find resource ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<java.io.IOException: void <init>(java.lang.String)>($r8);	throw $r4
;block_num 2