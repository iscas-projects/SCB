(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3069 0)
(declare-sort var901 0)
(declare-sort var430 0)
(declare-sort var3599 0)
(declare-sort var2976 0)
(declare-sort var2191 0)
(declare-sort var1350 0)
(declare-sort var2882 0)
(declare-sort var591 0)
(declare-sort var2024 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun stripAbsolutePathSpec/-68748554 (var3069) Bool)
(declare-fun getAllowFilesToEscapeDest/-301074977 (var3069) var2882)
(declare-fun patternsets/-68748554 (var3069) var591)
(declare-fun var1350_mapFileName/-709258719 (var1350 String) (Array Int String))
(declare-fun arr-String-init () (Array Int String))
(declare-fun resolveFile/1596028568 (var901 var430 String) var430)
(declare-fun isLeadingPath/16249964 (var901 var430 var430 Bool) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getCanonicalPath/2030784441 (var430) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/456963423 (var2024 String Int) void)
(declare-fun cast-from-var3069-to-var2024 (var3069) var2024)
(declare-const null-var3069 var3069)
(declare-const null-var901 var901)
(declare-const null-var430 var430)
(declare-const null-var3599 var3599)
(declare-const null-String String)
(declare-const null-var2191 var2191)
(declare-const null-Bool Bool)
(declare-const null-var1350 var1350)
(declare-const var2882-TRUE var2882)
(declare-const null-var591 var591)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var3296 var3069) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Expand 
(assert (not (= var3296 null-var3069)))
(declare-const var2913 var901) ; Statement: r3 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils 
(assert (not (= var2913 null-var901)))
(declare-const var3722 var430) ; Statement: r65 := @parameter1: java.io.File 
(assert (not (= var3722 null-var430)))
(declare-const var1837 var430) ; Statement: r4 := @parameter2: java.io.File 
(assert (not (= var1837 null-var430)))
(declare-const var1741 var3599) ; Statement: r7 := @parameter3: java.io.InputStream 
(assert (not (= var1741 null-var3599)))
(declare-const var1810 String) ; Statement: r66 := @parameter4: java.lang.String 
(assert (not (= var1810 null-String)))
(declare-const var134 var2191) ; Statement: r8 := @parameter5: java.util.Date 
(assert (not (= var134 null-var2191)))
(declare-const var2703 Bool) ; Statement: z4 := @parameter6: boolean 
(assert (not (= var2703 null-Bool)))
(declare-const var1725 var1350) ; Statement: r1 := @parameter7: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileNameMapper 
(assert (not (= var1725 null-var1350)))
(assert true)
(define-const var1789 Bool (isEmpty/-1285796103 var1810)) ; Statement: $z0 = virtualinvoke r66.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto $z21 = 0 
(assert (not (= (ite var1789 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2409 Bool (ite (= 1 0) true false)) ; Statement: $z21 = 0 
(define-const var989 Bool (ite (= 1 0) true false)) ; Statement: $z20 = 0 
(assert true) ; Non Conditional
(define-const var1330 Bool var989) ; Statement: z1 = $z20 
(define-const var1569 Bool (stripAbsolutePathSpec/-68748554 var3296)) ; Statement: $z16 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Expand: boolean stripAbsolutePathSpec> 
 ; Statement: if $z16 == 0 goto $r67 = <java.lang.Boolean: java.lang.Boolean TRUE> 
(assert (= (ite var1569 1 0) 0)) ; Cond: $z16 == 0 
(define-const var673 var2882 var2882-TRUE) ; Statement: $r67 = <java.lang.Boolean: java.lang.Boolean TRUE> 
(assert true)
(define-const var2200 var2882 (getAllowFilesToEscapeDest/-301074977 var3296)) ; Statement: $r68 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Expand: java.lang.Boolean getAllowFilesToEscapeDest()>() 
 ; Statement: if $r67 == $r68 goto $z17 = 1 
(assert (= var673 var2200)) ; Cond: $r67 == $r68 
(define-const var2031 Bool (ite (= 1 1) true false)) ; Statement: $z17 = 1 
 ; Statement: goto [?= z2 = $z17] 
(assert true) ; Non Conditional
(define-const var3239 Bool var2031) ; Statement: z2 = $z17 
(define-const var3015 var591 (patternsets/-68748554 var3296)) ; Statement: $r69 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Expand: java.util.List patternsets> 
 ; Statement: if $r69 == null goto $r83 = interfaceinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileNameMapper: java.lang.String[] mapFileName(java.lang.String)>(r66) 
(assert (= var3015 null-var591)) ; Cond: $r69 == null 
(define-const var572 (Array Int String) (var1350_mapFileName/-709258719 var1725 var1810)) ; Statement: $r83 = interfaceinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileNameMapper: java.lang.String[] mapFileName(java.lang.String)>(r66) 
(define-const var2674 (Array Int String) var572) ; Statement: r84 = $r83 
 ; Statement: if $r83 == null goto $r2 = newarray (java.lang.String)[1] 
(assert (= var572 null-__Array__Int__String__)) ; Cond: $r83 == null 
(define-const var48 (Array Int String) arr-String-init) ; Statement: $r2 = newarray (java.lang.String)[1] 
(declare-const var48!1 (Array Int String))
(assert (not (= var48!1 null-__Array__Int__String__)))
(assert (= (select var48!1 0) var1810)) ; Statement: $r2[0] = r66 
(define-const var2674!1 (Array Int String) var48!1) ; Statement: r84 = $r2 
(assert true) ; Non Conditional
(define-const var2035 String (select var2674!1 0)) ; Statement: $r85 = r84[0] 
(assert true)
(define-const var280 var430 (resolveFile/1596028568 var2913 var1837 var2035)) ; Statement: $r86 = virtualinvoke r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils: java.io.File resolveFile(java.io.File,java.lang.String)>(r4, $r85) 
 ; Statement: if z2 != 0 goto $z3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Expand: boolean overwrite> 
(assert (not (not (= (ite var3239 1 0) 0)))) ; Negate: Cond: z2 != 0  
(assert true)
(define-const var2698 Bool (isLeadingPath/16249964 var2913 var1837 var280 (ite (= 1 1) true false))) ; Statement: $z6 = virtualinvoke r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils: boolean isLeadingPath(java.io.File,java.io.File,boolean)>(r4, $r86, 1) 
 ; Statement: if $z6 != 0 goto $z3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Expand: boolean overwrite> 
(assert (not (not (= (ite var2698 1 0) 0)))) ; Negate: Cond: $z6 != 0  
(define-const var1689 String String-init) ; Statement: $r102 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1689)) ; Statement: specialinvoke $r102.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1689!1 String)
(assert (= var1689!1 ""))
(assert true)
(define-const var3360 String (append/672562846 var1689!1 "skipping ")) ; Statement: $r15 = virtualinvoke $r102.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("skipping ") 
(declare-const var1689!2 String)
(assert (= var1689!2 (str.++ var1689!1 "skipping ")))
(assert true)
(define-const var147 String (append/672562846 var3360 var1810)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r66) 
(declare-const var3360!1 String)
(assert (= var3360!1 (str.++ var3360 var1810)))
(assert true)
(define-const var2020 String (append/672562846 var147 " as its target ")) ; Statement: $r18 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" as its target ") 
(declare-const var147!1 String)
(assert (= var147!1 (str.++ var147 " as its target ")))
(assert true)
(define-const var3087 String (getCanonicalPath/2030784441 var280)) ; Statement: $r17 = virtualinvoke $r86.<java.io.File: java.lang.String getCanonicalPath()>() 
(assert true)
(define-const var642 String (append/672562846 var2020 var3087)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17) 
(declare-const var2020!1 String)
(assert (= var2020!1 (str.++ var2020 var3087)))
(assert true)
(define-const var3395 String (append/672562846 var642 " is outside of ")) ; Statement: $r21 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is outside of ") 
(declare-const var642!1 String)
(assert (= var642!1 (str.++ var642 " is outside of ")))
(assert true)
(define-const var3946 String (getCanonicalPath/2030784441 var1837)) ; Statement: $r20 = virtualinvoke r4.<java.io.File: java.lang.String getCanonicalPath()>() 
(assert true)
(define-const var3066 String (append/672562846 var3395 var3946)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20) 
(declare-const var3395!1 String)
(assert (= var3395!1 (str.++ var3395 var3946)))
(assert true)
(define-const var2039 String (append/672562846 var3066 ".")) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".") 
(declare-const var3066!1 String)
(assert (= var3066!1 (str.++ var3066 ".")))
(assert true)
(define-const var962 String (toString/-2075883882 var2039)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/456963423 (cast-from-var3069-to-var2024 var3296) var962 3)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Expand: void log(java.lang.String,int)>($r24, 3) 

(declare-const var3296!1 var3069)
(declare-const var962!1 String)
(declare-const var1460 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {isEmpty/-1285796103=([java.lang.String], boolean), stripAbsolutePathSpec/-68748554=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Expand], boolean), getAllowFilesToEscapeDest/-301074977=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Expand], java.lang.Boolean), patternsets/-68748554=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Expand], java.util.List), var1350_mapFileName/-709258719=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileNameMapper, java.lang.String], java.lang.String[]), arr-String-init=([], java.lang.String[]), resolveFile/1596028568=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils, java.io.File, java.lang.String], java.io.File), isLeadingPath/16249964=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils, java.io.File, java.io.File, boolean], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getCanonicalPath/2030784441=([java.io.File], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/456963423=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String, int], void), cast-from-var3069-to-var2024=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Expand], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task)}
; {var3069=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Expand, var3296=r0, var901=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils, var2913=r3, var430=java.io.File, var3722=r65, var1837=r4, var3599=java.io.InputStream, var1741=r7, var1810=r66, var2976=null_type, var2191=java.util.Date, var134=r8, var2703=z4, var1350=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileNameMapper, var1725=r1, var1789=$z0, var2409=$z21, var989=$z20, var1330=z1, var1569=$z16, var2882=java.lang.Boolean, var673=$r67, var2200=$r68, var2031=$z17, var3239=z2, var591=java.util.List, var3015=$r69, var572=$r83, var2674=r84, var48=$r2, var2035=$r85, var280=$r86, var2698=$z6, var1689=$r102, var3360=$r15, var147=$r16, var2020=$r18, var3087=$r17, var642=$r19, var3395=$r21, var3946=$r20, var3066=$r22, var2039=$r23, var962=$r24, var2024=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var1460=3}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Expand=var3069, r0=var3296, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils=var901, r3=var2913, java.io.File=var430, r65=var3722, r4=var1837, java.io.InputStream=var3599, r7=var1741, r66=var1810, null_type=var2976, java.util.Date=var2191, r8=var134, z4=var2703, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileNameMapper=var1350, r1=var1725, $z0=var1789, $z21=var2409, $z20=var989, z1=var1330, $z16=var1569, java.lang.Boolean=var2882, $r67=var673, $r68=var2200, $z17=var2031, z2=var3239, java.util.List=var591, $r69=var3015, $r83=var572, r84=var2674, $r2=var48, $r85=var2035, $r86=var280, $z6=var2698, $r102=var1689, $r15=var3360, $r16=var147, $r18=var2020, $r17=var3087, $r19=var642, $r21=var3395, $r20=var3946, $r22=var3066, $r23=var2039, $r24=var962, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var2024, 3=var1460}
;seq <java.lang.String: boolean isEmpty()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Expand;	r3 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils;	r65 := @parameter1: java.io.File;	r4 := @parameter2: java.io.File;	r7 := @parameter3: java.io.InputStream;	r66 := @parameter4: java.lang.String;	r8 := @parameter5: java.util.Date;	z4 := @parameter6: boolean;	r1 := @parameter7: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileNameMapper;	$z0 = virtualinvoke r66.<java.lang.String: boolean isEmpty()>();	if $z0 != 0 goto $z21 = 0;	$z21 = 0;	$z20 = 0;	z1 = $z20;	$z16 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Expand: boolean stripAbsolutePathSpec>;	if $z16 == 0 goto $r67 = <java.lang.Boolean: java.lang.Boolean TRUE>;	$r67 = <java.lang.Boolean: java.lang.Boolean TRUE>;	$r68 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Expand: java.lang.Boolean getAllowFilesToEscapeDest()>();	if $r67 == $r68 goto $z17 = 1;	$z17 = 1;	goto [?= z2 = $z17];	z2 = $z17;	$r69 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Expand: java.util.List patternsets>;	if $r69 == null goto $r83 = interfaceinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileNameMapper: java.lang.String[] mapFileName(java.lang.String)>(r66);	$r83 = interfaceinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileNameMapper: java.lang.String[] mapFileName(java.lang.String)>(r66);	r84 = $r83;	if $r83 == null goto $r2 = newarray (java.lang.String)[1];	$r2 = newarray (java.lang.String)[1];	$r2[0] = r66;	r84 = $r2;	$r85 = r84[0];	$r86 = virtualinvoke r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils: java.io.File resolveFile(java.io.File,java.lang.String)>(r4, $r85);	if z2 != 0 goto $z3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Expand: boolean overwrite>;	$z6 = virtualinvoke r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils: boolean isLeadingPath(java.io.File,java.io.File,boolean)>(r4, $r86, 1);	if $z6 != 0 goto $z3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Expand: boolean overwrite>;	$r102 = new java.lang.StringBuilder;	specialinvoke $r102.<java.lang.StringBuilder: void <init>()>();	$r15 = virtualinvoke $r102.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("skipping ");	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r66);	$r18 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" as its target ");	$r17 = virtualinvoke $r86.<java.io.File: java.lang.String getCanonicalPath()>();	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17);	$r21 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is outside of ");	$r20 = virtualinvoke r4.<java.io.File: java.lang.String getCanonicalPath()>();	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20);	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Expand: void log(java.lang.String,int)>($r24, 3);	return
;block_num 11