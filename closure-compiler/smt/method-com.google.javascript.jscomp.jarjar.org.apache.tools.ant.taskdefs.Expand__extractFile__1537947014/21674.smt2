(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var960 0)
(declare-sort var917 0)
(declare-sort var666 0)
(declare-sort var2276 0)
(declare-sort var3109 0)
(declare-sort var2103 0)
(declare-sort var1172 0)
(declare-sort var3533 0)
(declare-sort var414 0)
(declare-sort var860 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun stripAbsolutePathSpec/-68748554 (var960) Bool)
(declare-fun getAllowFilesToEscapeDest/-301074977 (var960) var3533)
(declare-fun patternsets/-68748554 (var960) var414)
(declare-fun var1172_mapFileName/-709258719 (var1172 String) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun resolveFile/1596028568 (var917 var666 String) var666)
(declare-fun isLeadingPath/16249964 (var917 var666 var666 Bool) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getCanonicalPath/2030784441 (var666) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/456963423 (var860 String Int) void)
(declare-fun cast-from-var960-to-var860 (var960) var860)
(declare-const null-var960 var960)
(declare-const null-var917 var917)
(declare-const null-var666 var666)
(declare-const null-var2276 var2276)
(declare-const null-String String)
(declare-const null-var2103 var2103)
(declare-const null-Bool Bool)
(declare-const null-var1172 var1172)
(declare-const var3533-TRUE var3533)
(declare-const null-var414 var414)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var975 var960) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Expand 
(assert (not (= var975 null-var960)))
(declare-const var1058 var917) ; Statement: r3 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils 
(assert (not (= var1058 null-var917)))
(declare-const var474 var666) ; Statement: r65 := @parameter1: java.io.File 
(assert (not (= var474 null-var666)))
(declare-const var44 var666) ; Statement: r4 := @parameter2: java.io.File 
(assert (not (= var44 null-var666)))
(declare-const var3370 var2276) ; Statement: r7 := @parameter3: java.io.InputStream 
(assert (not (= var3370 null-var2276)))
(declare-const var1328 String) ; Statement: r66 := @parameter4: java.lang.String 
(assert (not (= var1328 null-String)))
(declare-const var535 var2103) ; Statement: r8 := @parameter5: java.util.Date 
(assert (not (= var535 null-var2103)))
(declare-const var2389 Bool) ; Statement: z4 := @parameter6: boolean 
(assert (not (= var2389 null-Bool)))
(declare-const var2857 var1172) ; Statement: r1 := @parameter7: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileNameMapper 
(assert (not (= var2857 null-var1172)))
(assert true)
(define-const var538 Bool (isEmpty/-1285796103 var1328)) ; Statement: $z0 = virtualinvoke r66.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto $z21 = 0 
(assert (not (= (ite var538 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3282 Bool (ite (= 1 0) true false)) ; Statement: $z21 = 0 
(define-const var3271 Bool (ite (= 1 0) true false)) ; Statement: $z20 = 0 
(assert true) ; Non Conditional
(define-const var3880 Bool var3271) ; Statement: z1 = $z20 
(define-const var1898 Bool (stripAbsolutePathSpec/-68748554 var975)) ; Statement: $z16 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Expand: boolean stripAbsolutePathSpec> 
 ; Statement: if $z16 == 0 goto $r67 = <java.lang.Boolean: java.lang.Boolean TRUE> 
(assert (= (ite var1898 1 0) 0)) ; Cond: $z16 == 0 
(define-const var2016 var3533 var3533-TRUE) ; Statement: $r67 = <java.lang.Boolean: java.lang.Boolean TRUE> 
(assert true)
(define-const var640 var3533 (getAllowFilesToEscapeDest/-301074977 var975)) ; Statement: $r68 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Expand: java.lang.Boolean getAllowFilesToEscapeDest()>() 
 ; Statement: if $r67 == $r68 goto $z17 = 1 
(assert (= var2016 var640)) ; Cond: $r67 == $r68 
(define-const var2611 Bool (ite (= 1 1) true false)) ; Statement: $z17 = 1 
 ; Statement: goto [?= z2 = $z17] 
(assert true) ; Non Conditional
(define-const var2342 Bool var2611) ; Statement: z2 = $z17 
(define-const var707 var414 (patternsets/-68748554 var975)) ; Statement: $r69 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Expand: java.util.List patternsets> 
 ; Statement: if $r69 == null goto $r83 = interfaceinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileNameMapper: java.lang.String[] mapFileName(java.lang.String)>(r66) 
(assert (= var707 null-var414)) ; Cond: $r69 == null 
(define-const var899 (Array Int String) (var1172_mapFileName/-709258719 var2857 var1328)) ; Statement: $r83 = interfaceinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileNameMapper: java.lang.String[] mapFileName(java.lang.String)>(r66) 
(define-const var3584 (Array Int String) var899) ; Statement: r84 = $r83 
 ; Statement: if $r83 == null goto $r2 = newarray (java.lang.String)[1] 
(assert (not (= var899 null-__Array__Int__String__))) ; Negate: Cond: $r83 == null  
(define-const var57 Int (getLength-Arr-String-1 var899)) ; Statement: $i4 = lengthof $r83 
 ; Statement: if $i4 != 0 goto $r85 = r84[0] 
(assert (not (= var57 0))) ; Cond: $i4 != 0 
(define-const var3144 String (select var3584 0)) ; Statement: $r85 = r84[0] 
(assert true)
(define-const var3325 var666 (resolveFile/1596028568 var1058 var44 var3144)) ; Statement: $r86 = virtualinvoke r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils: java.io.File resolveFile(java.io.File,java.lang.String)>(r4, $r85) 
 ; Statement: if z2 != 0 goto $z3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Expand: boolean overwrite> 
(assert (not (not (= (ite var2342 1 0) 0)))) ; Negate: Cond: z2 != 0  
(assert true)
(define-const var2249 Bool (isLeadingPath/16249964 var1058 var44 var3325 (ite (= 1 1) true false))) ; Statement: $z6 = virtualinvoke r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils: boolean isLeadingPath(java.io.File,java.io.File,boolean)>(r4, $r86, 1) 
 ; Statement: if $z6 != 0 goto $z3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Expand: boolean overwrite> 
(assert (not (not (= (ite var2249 1 0) 0)))) ; Negate: Cond: $z6 != 0  
(define-const var1856 String String-init) ; Statement: $r102 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1856)) ; Statement: specialinvoke $r102.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1856!1 String)
(assert (= var1856!1 ""))
(assert true)
(define-const var380 String (append/672562846 var1856!1 "skipping ")) ; Statement: $r15 = virtualinvoke $r102.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("skipping ") 
(declare-const var1856!2 String)
(assert (= var1856!2 (str.++ var1856!1 "skipping ")))
(assert true)
(define-const var315 String (append/672562846 var380 var1328)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r66) 
(declare-const var380!1 String)
(assert (= var380!1 (str.++ var380 var1328)))
(assert true)
(define-const var2986 String (append/672562846 var315 " as its target ")) ; Statement: $r18 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" as its target ") 
(declare-const var315!1 String)
(assert (= var315!1 (str.++ var315 " as its target ")))
(assert true)
(define-const var3585 String (getCanonicalPath/2030784441 var3325)) ; Statement: $r17 = virtualinvoke $r86.<java.io.File: java.lang.String getCanonicalPath()>() 
(assert true)
(define-const var1011 String (append/672562846 var2986 var3585)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17) 
(declare-const var2986!1 String)
(assert (= var2986!1 (str.++ var2986 var3585)))
(assert true)
(define-const var704 String (append/672562846 var1011 " is outside of ")) ; Statement: $r21 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is outside of ") 
(declare-const var1011!1 String)
(assert (= var1011!1 (str.++ var1011 " is outside of ")))
(assert true)
(define-const var2698 String (getCanonicalPath/2030784441 var44)) ; Statement: $r20 = virtualinvoke r4.<java.io.File: java.lang.String getCanonicalPath()>() 
(assert true)
(define-const var3622 String (append/672562846 var704 var2698)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20) 
(declare-const var704!1 String)
(assert (= var704!1 (str.++ var704 var2698)))
(assert true)
(define-const var1403 String (append/672562846 var3622 ".")) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".") 
(declare-const var3622!1 String)
(assert (= var3622!1 (str.++ var3622 ".")))
(assert true)
(define-const var1724 String (toString/-2075883882 var1403)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/456963423 (cast-from-var960-to-var860 var975) var1724 3)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Expand: void log(java.lang.String,int)>($r24, 3) 

(declare-const var975!1 var960)
(declare-const var1724!1 String)
(declare-const var2174 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {isEmpty/-1285796103=([java.lang.String], boolean), stripAbsolutePathSpec/-68748554=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Expand], boolean), getAllowFilesToEscapeDest/-301074977=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Expand], java.lang.Boolean), patternsets/-68748554=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Expand], java.util.List), var1172_mapFileName/-709258719=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileNameMapper, java.lang.String], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int), resolveFile/1596028568=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils, java.io.File, java.lang.String], java.io.File), isLeadingPath/16249964=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils, java.io.File, java.io.File, boolean], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getCanonicalPath/2030784441=([java.io.File], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/456963423=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String, int], void), cast-from-var960-to-var860=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Expand], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task)}
; {var960=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Expand, var975=r0, var917=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils, var1058=r3, var666=java.io.File, var474=r65, var44=r4, var2276=java.io.InputStream, var3370=r7, var1328=r66, var3109=null_type, var2103=java.util.Date, var535=r8, var2389=z4, var1172=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileNameMapper, var2857=r1, var538=$z0, var3282=$z21, var3271=$z20, var3880=z1, var1898=$z16, var3533=java.lang.Boolean, var2016=$r67, var640=$r68, var2611=$z17, var2342=z2, var414=java.util.List, var707=$r69, var899=$r83, var3584=r84, var57=$i4, var3144=$r85, var3325=$r86, var2249=$z6, var1856=$r102, var380=$r15, var315=$r16, var2986=$r18, var3585=$r17, var1011=$r19, var704=$r21, var2698=$r20, var3622=$r22, var1403=$r23, var1724=$r24, var860=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var2174=3}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Expand=var960, r0=var975, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils=var917, r3=var1058, java.io.File=var666, r65=var474, r4=var44, java.io.InputStream=var2276, r7=var3370, r66=var1328, null_type=var3109, java.util.Date=var2103, r8=var535, z4=var2389, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileNameMapper=var1172, r1=var2857, $z0=var538, $z21=var3282, $z20=var3271, z1=var3880, $z16=var1898, java.lang.Boolean=var3533, $r67=var2016, $r68=var640, $z17=var2611, z2=var2342, java.util.List=var414, $r69=var707, $r83=var899, r84=var3584, $i4=var57, $r85=var3144, $r86=var3325, $z6=var2249, $r102=var1856, $r15=var380, $r16=var315, $r18=var2986, $r17=var3585, $r19=var1011, $r21=var704, $r20=var2698, $r22=var3622, $r23=var1403, $r24=var1724, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var860, 3=var2174}
;seq <java.lang.String: boolean isEmpty()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Expand;	r3 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils;	r65 := @parameter1: java.io.File;	r4 := @parameter2: java.io.File;	r7 := @parameter3: java.io.InputStream;	r66 := @parameter4: java.lang.String;	r8 := @parameter5: java.util.Date;	z4 := @parameter6: boolean;	r1 := @parameter7: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileNameMapper;	$z0 = virtualinvoke r66.<java.lang.String: boolean isEmpty()>();	if $z0 != 0 goto $z21 = 0;	$z21 = 0;	$z20 = 0;	z1 = $z20;	$z16 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Expand: boolean stripAbsolutePathSpec>;	if $z16 == 0 goto $r67 = <java.lang.Boolean: java.lang.Boolean TRUE>;	$r67 = <java.lang.Boolean: java.lang.Boolean TRUE>;	$r68 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Expand: java.lang.Boolean getAllowFilesToEscapeDest()>();	if $r67 == $r68 goto $z17 = 1;	$z17 = 1;	goto [?= z2 = $z17];	z2 = $z17;	$r69 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Expand: java.util.List patternsets>;	if $r69 == null goto $r83 = interfaceinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileNameMapper: java.lang.String[] mapFileName(java.lang.String)>(r66);	$r83 = interfaceinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileNameMapper: java.lang.String[] mapFileName(java.lang.String)>(r66);	r84 = $r83;	if $r83 == null goto $r2 = newarray (java.lang.String)[1];	$i4 = lengthof $r83;	if $i4 != 0 goto $r85 = r84[0];	$r85 = r84[0];	$r86 = virtualinvoke r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils: java.io.File resolveFile(java.io.File,java.lang.String)>(r4, $r85);	if z2 != 0 goto $z3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Expand: boolean overwrite>;	$z6 = virtualinvoke r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils: boolean isLeadingPath(java.io.File,java.io.File,boolean)>(r4, $r86, 1);	if $z6 != 0 goto $z3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Expand: boolean overwrite>;	$r102 = new java.lang.StringBuilder;	specialinvoke $r102.<java.lang.StringBuilder: void <init>()>();	$r15 = virtualinvoke $r102.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("skipping ");	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r66);	$r18 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" as its target ");	$r17 = virtualinvoke $r86.<java.io.File: java.lang.String getCanonicalPath()>();	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17);	$r21 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is outside of ");	$r20 = virtualinvoke r4.<java.io.File: java.lang.String getCanonicalPath()>();	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20);	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Expand: void log(java.lang.String,int)>($r24, 3);	return
;block_num 11