(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3151 0)
(declare-sort var67 0)
(declare-sort var2546 0)
(declare-sort var3566 0)
(declare-sort var1366 0)
(declare-sort var797 0)
(declare-sort var2914 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun lastIndexOf/679652410 (String Int Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun cast-from-var67-to-var797 (var67) var797)
(declare-fun getExtraFields/-346994490 (var797) (Array Int var2914))
(declare-fun zipDir/1153775803 (var3151 var67 var1366 String Int (Array Int var2914)) void)
(declare-const null-var3151 var3151)
(declare-const null-var67 var67)
(declare-const null-String String)
(declare-const null-var3566 var3566)
(declare-const null-var1366 var1366)
(declare-const null-Int Int)
(declare-const var3765 var3151) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Zip 
(assert (not (= var3765 null-var3151)))
(declare-const var433 var67) ; Statement: r1 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource 
(assert (not (= var433 null-var67)))
(declare-const var723 String) ; Statement: r14 := @parameter1: java.lang.String 
(assert (not (= var723 null-String)))
(declare-const var1292 String) ; Statement: r4 := @parameter2: java.lang.String 
(assert (not (= var1292 null-String)))
(declare-const var836 var3566) ; Statement: r9 := @parameter3: java.io.File 
(assert (not (= var836 null-var3566)))
(declare-const var3849 var1366) ; Statement: r2 := @parameter4: com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipOutputStream 
(assert (not (= var3849 null-var1366)))
(declare-const var1304 Int) ; Statement: i4 := @parameter5: int 
(assert (not (= var1304 null-Int)))
(declare-const var2460 Int) ; Statement: i2 := @parameter6: int 
(assert (not (= var2460 null-Int)))
(assert true)
(define-const var2886 Bool (endsWith/985337093 var723 "/")) ; Statement: $z0 = virtualinvoke r14.<java.lang.String: boolean endsWith(java.lang.String)>("/") 
 ; Statement: if $z0 != 0 goto $i0 = virtualinvoke r14.<java.lang.String: int length()>() 
(assert (not (= (ite var2886 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
(define-const var1063 Int (length/-134980193 var723)) ; Statement: $i0 = virtualinvoke r14.<java.lang.String: int length()>() 
(define-const var1812 Int (- var1063 2)) ; Statement: $i1 = $i0 - 2 
(assert true)
(define-const var2952 Int (lastIndexOf/679652410 var723 47 var1812)) ; Statement: $i5 = virtualinvoke r14.<java.lang.String: int lastIndexOf(int,int)>(47, $i1) 
(define-const var302 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i7 = (int) -1 
 ; Statement: if $i5 == $i7 goto $r17 = new java.lang.StringBuilder 
(assert (= var2952 var302)) ; Cond: $i5 == $i7 
(define-const var1197 String String-init) ; Statement: $r17 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1197)) ; Statement: specialinvoke $r17.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1197!1 String)
(assert (= var1197!1 ""))
(assert true)
(define-const var1290 String (append/672562846 var1197!1 var1292)) ; Statement: $r5 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var1197!2 String)
(assert (= var1197!2 (str.++ var1197!1 var1292)))
(assert true)
(define-const var473 String (append/672562846 var1290 var723)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r14) 
(declare-const var1290!1 String)
(assert (= var1290!1 (str.++ var1290 var723)))
(assert true)
(define-const var2065 String (toString/-2075883882 var473)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var833 Bool false) ; Statement: $z1 = r1 instanceof com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.ZipResource 
 ; Statement: if $z1 == 0 goto $r15 = null 
(assert (not (= (ite var833 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var3640 var797 (cast-from-var67-to-var797 var433)) ; Statement: $r8 = (com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.ZipResource) r1 
(assert true)
(define-const var3038 (Array Int var2914) (getExtraFields/-346994490 var3640)) ; Statement: $r15 = virtualinvoke $r8.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.ZipResource: com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipExtraField[] getExtraFields()>() 
 ; Statement: goto [?= virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Zip: void zipDir(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource,com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipOutputStream,java.lang.String,int,com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipExtraField[])>(r1, r2, $r7, i2, $r15)] 
(assert true) ; Non Conditional
(assert true)
;(assert (zipDir/1153775803 var3765 var433 var3849 var2065 var2460 var3038)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Zip: void zipDir(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource,com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipOutputStream,java.lang.String,int,com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipExtraField[])>(r1, r2, $r7, i2, $r15) 

(declare-const var3765!1 var3151)
(declare-const var433!1 var67)
(declare-const var3849!1 var1366)
(declare-const var2065!1 String)
(declare-const var2460!1 Int)
(declare-const var3038!1 (Array Int var2914))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {endsWith/985337093=([java.lang.String, java.lang.String], boolean), length/-134980193=([java.lang.String], int), lastIndexOf/679652410=([java.lang.String, int, int], int), cast-from-Int-to-Int=([int], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), cast-from-var67-to-var797=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.ZipResource), getExtraFields/-346994490=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.ZipResource], com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipExtraField[]), zipDir/1153775803=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Zip, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource, com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipOutputStream, java.lang.String, int, com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipExtraField[]], void)}
; {var3151=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Zip, var3765=r0, var67=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource, var433=r1, var723=r14, var2546=null_type, var1292=r4, var3566=java.io.File, var836=r9, var1366=com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipOutputStream, var3849=r2, var1304=i4, var2460=i2, var2886=$z0, var1063=$i0, var1812=$i1, var2952=$i5, var302=$i7, var1197=$r17, var1290=$r5, var473=$r6, var2065=$r7, var833=$z1, var797=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.ZipResource, var3640=$r8, var2914=com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipExtraField, var3038=$r15}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Zip=var3151, r0=var3765, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource=var67, r1=var433, r14=var723, null_type=var2546, r4=var1292, java.io.File=var3566, r9=var836, com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipOutputStream=var1366, r2=var3849, i4=var1304, i2=var2460, $z0=var2886, $i0=var1063, $i1=var1812, $i5=var2952, $i7=var302, $r17=var1197, $r5=var1290, $r6=var473, $r7=var2065, $z1=var833, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.ZipResource=var797, $r8=var3640, com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipExtraField=var2914, $r15=var3038}
;seq <java.lang.String: boolean endsWith(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.String: int lastIndexOf(int,int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 1,"<java.lang.String: int length()>": 1,"<java.lang.String: int lastIndexOf(int,int)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Zip;	r1 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource;	r14 := @parameter1: java.lang.String;	r4 := @parameter2: java.lang.String;	r9 := @parameter3: java.io.File;	r2 := @parameter4: com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipOutputStream;	i4 := @parameter5: int;	i2 := @parameter6: int;	$z0 = virtualinvoke r14.<java.lang.String: boolean endsWith(java.lang.String)>("/");	if $z0 != 0 goto $i0 = virtualinvoke r14.<java.lang.String: int length()>();	$i0 = virtualinvoke r14.<java.lang.String: int length()>();	$i1 = $i0 - 2;	$i5 = virtualinvoke r14.<java.lang.String: int lastIndexOf(int,int)>(47, $i1);	$i7 = (int) -1;	if $i5 == $i7 goto $r17 = new java.lang.StringBuilder;	$r17 = new java.lang.StringBuilder;	specialinvoke $r17.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r14);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$z1 = r1 instanceof com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.ZipResource;	if $z1 == 0 goto $r15 = null;	$r8 = (com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.ZipResource) r1;	$r15 = virtualinvoke $r8.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.ZipResource: com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipExtraField[] getExtraFields()>();	goto [?= virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Zip: void zipDir(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource,com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipOutputStream,java.lang.String,int,com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipExtraField[])>(r1, r2, $r7, i2, $r15)];	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Zip: void zipDir(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource,com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipOutputStream,java.lang.String,int,com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipExtraField[])>(r1, r2, $r7, i2, $r15);	return
;block_num 5