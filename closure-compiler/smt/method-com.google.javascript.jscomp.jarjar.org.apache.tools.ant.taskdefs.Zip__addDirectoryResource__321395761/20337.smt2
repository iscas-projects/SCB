(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2948 0)
(declare-sort var1036 0)
(declare-sort var511 0)
(declare-sort var2947 0)
(declare-sort var3508 0)
(declare-sort var138 0)
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
(declare-fun zipDir/1153775803 (var2948 var1036 var3508 String Int (Array Int var138)) void)
(declare-const null-var2948 var2948)
(declare-const null-var1036 var1036)
(declare-const null-String String)
(declare-const null-var2947 var2947)
(declare-const null-var3508 var3508)
(declare-const null-Int Int)
(declare-const null-__Array__Int__var138__ (Array Int var138))
(declare-const var893 var2948) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Zip 
(assert (not (= var893 null-var2948)))
(declare-const var380 var1036) ; Statement: r1 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource 
(assert (not (= var380 null-var1036)))
(declare-const var2929 String) ; Statement: r14 := @parameter1: java.lang.String 
(assert (not (= var2929 null-String)))
(declare-const var114 String) ; Statement: r4 := @parameter2: java.lang.String 
(assert (not (= var114 null-String)))
(declare-const var702 var2947) ; Statement: r9 := @parameter3: java.io.File 
(assert (not (= var702 null-var2947)))
(declare-const var1030 var3508) ; Statement: r2 := @parameter4: com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipOutputStream 
(assert (not (= var1030 null-var3508)))
(declare-const var3347 Int) ; Statement: i4 := @parameter5: int 
(assert (not (= var3347 null-Int)))
(declare-const var2007 Int) ; Statement: i2 := @parameter6: int 
(assert (not (= var2007 null-Int)))
(assert true)
(define-const var560 Bool (endsWith/985337093 var2929 "/")) ; Statement: $z0 = virtualinvoke r14.<java.lang.String: boolean endsWith(java.lang.String)>("/") 
 ; Statement: if $z0 != 0 goto $i0 = virtualinvoke r14.<java.lang.String: int length()>() 
(assert (not (= (ite var560 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
(define-const var2257 Int (length/-134980193 var2929)) ; Statement: $i0 = virtualinvoke r14.<java.lang.String: int length()>() 
(define-const var3635 Int (- var2257 2)) ; Statement: $i1 = $i0 - 2 
(assert true)
(define-const var3971 Int (lastIndexOf/679652410 var2929 47 var3635)) ; Statement: $i5 = virtualinvoke r14.<java.lang.String: int lastIndexOf(int,int)>(47, $i1) 
(define-const var301 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i7 = (int) -1 
 ; Statement: if $i5 == $i7 goto $r17 = new java.lang.StringBuilder 
(assert (= var3971 var301)) ; Cond: $i5 == $i7 
(define-const var746 String String-init) ; Statement: $r17 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var746)) ; Statement: specialinvoke $r17.<java.lang.StringBuilder: void <init>()>() 
(declare-const var746!1 String)
(assert (= var746!1 ""))
(assert true)
(define-const var1344 String (append/672562846 var746!1 var114)) ; Statement: $r5 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var746!2 String)
(assert (= var746!2 (str.++ var746!1 var114)))
(assert true)
(define-const var2785 String (append/672562846 var1344 var2929)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r14) 
(declare-const var1344!1 String)
(assert (= var1344!1 (str.++ var1344 var2929)))
(assert true)
(define-const var666 String (toString/-2075883882 var2785)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2361 Bool false) ; Statement: $z1 = r1 instanceof com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.ZipResource 
 ; Statement: if $z1 == 0 goto $r15 = null 
(assert (= (ite var2361 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2671 (Array Int var138) null-__Array__Int__var138__) ; Statement: $r15 = null 
(assert true) ; Non Conditional
(assert true)
;(assert (zipDir/1153775803 var893 var380 var1030 var666 var2007 var2671)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Zip: void zipDir(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource,com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipOutputStream,java.lang.String,int,com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipExtraField[])>(r1, r2, $r7, i2, $r15) 

(declare-const var893!1 var2948)
(declare-const var380!1 var1036)
(declare-const var1030!1 var3508)
(declare-const var666!1 String)
(declare-const var2007!1 Int)
(declare-const var2671!1 (Array Int var138))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {endsWith/985337093=([java.lang.String, java.lang.String], boolean), length/-134980193=([java.lang.String], int), lastIndexOf/679652410=([java.lang.String, int, int], int), cast-from-Int-to-Int=([int], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), zipDir/1153775803=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Zip, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource, com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipOutputStream, java.lang.String, int, com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipExtraField[]], void)}
; {var2948=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Zip, var893=r0, var1036=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource, var380=r1, var2929=r14, var511=null_type, var114=r4, var2947=java.io.File, var702=r9, var3508=com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipOutputStream, var1030=r2, var3347=i4, var2007=i2, var560=$z0, var2257=$i0, var3635=$i1, var3971=$i5, var301=$i7, var746=$r17, var1344=$r5, var2785=$r6, var666=$r7, var2361=$z1, var138=com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipExtraField, var2671=$r15}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Zip=var2948, r0=var893, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource=var1036, r1=var380, r14=var2929, null_type=var511, r4=var114, java.io.File=var2947, r9=var702, com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipOutputStream=var3508, r2=var1030, i4=var3347, i2=var2007, $z0=var560, $i0=var2257, $i1=var3635, $i5=var3971, $i7=var301, $r17=var746, $r5=var1344, $r6=var2785, $r7=var666, $z1=var2361, com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipExtraField=var138, $r15=var2671}
;seq <java.lang.String: boolean endsWith(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.String: int lastIndexOf(int,int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 1,"<java.lang.String: int length()>": 1,"<java.lang.String: int lastIndexOf(int,int)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Zip;	r1 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource;	r14 := @parameter1: java.lang.String;	r4 := @parameter2: java.lang.String;	r9 := @parameter3: java.io.File;	r2 := @parameter4: com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipOutputStream;	i4 := @parameter5: int;	i2 := @parameter6: int;	$z0 = virtualinvoke r14.<java.lang.String: boolean endsWith(java.lang.String)>("/");	if $z0 != 0 goto $i0 = virtualinvoke r14.<java.lang.String: int length()>();	$i0 = virtualinvoke r14.<java.lang.String: int length()>();	$i1 = $i0 - 2;	$i5 = virtualinvoke r14.<java.lang.String: int lastIndexOf(int,int)>(47, $i1);	$i7 = (int) -1;	if $i5 == $i7 goto $r17 = new java.lang.StringBuilder;	$r17 = new java.lang.StringBuilder;	specialinvoke $r17.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r14);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$z1 = r1 instanceof com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.ZipResource;	if $z1 == 0 goto $r15 = null;	$r15 = null;	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Zip: void zipDir(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource,com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipOutputStream,java.lang.String,int,com.google.javascript.jscomp.jarjar.org.apache.tools.zip.ZipExtraField[])>(r1, r2, $r7, i2, $r15);	return
;block_num 5