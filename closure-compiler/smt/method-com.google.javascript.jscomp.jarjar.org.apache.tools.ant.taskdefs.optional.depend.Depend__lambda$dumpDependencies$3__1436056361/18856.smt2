(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var620 0)
(declare-sort var1784 0)
(declare-sort var1248 0)
(declare-sort var2262 0)
(declare-sort var185 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1248_access$100/-1810595622 (var1248) var2262)
(declare-fun getPath/-1385219261 (var2262) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/456963423 (var185 String Int) void)
(declare-fun cast-from-var620-to-var185 (var620) var185)
(declare-const null-var620 var620)
(declare-const null-String String)
(declare-const null-var1248 var1248)
(declare-const var2680 var620) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend 
(assert (not (= var2680 null-var620)))
(declare-const var1037 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1037 null-String)))
(declare-const var3389 var1248) ; Statement: r5 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend$ClassFileInfo 
(assert (not (= var3389 null-var1248)))
(define-const var3318 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3318)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3318!1 String)
(assert (= var3318!1 ""))
(assert true)
(define-const var3893 String (append/672562846 var3318!1 "    ")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("    ") 
(declare-const var3318!2 String)
(assert (= var3318!2 (str.++ var3318!1 "    ")))
(assert true)
(define-const var1022 String (append/672562846 var3893 var1037)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var3893!1 String)
(assert (= var3893!1 (str.++ var3893 var1037)))
(assert true)
(define-const var1087 String (append/672562846 var1022 " in ")) ; Statement: $r8 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" in ") 
(declare-const var1022!1 String)
(assert (= var1022!1 (str.++ var1022 " in ")))
(define-const var2975 var2262 (var1248_access$100/-1810595622 var3389)) ; Statement: $r6 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend$ClassFileInfo: java.io.File access$100(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend$ClassFileInfo)>(r5) 
(assert true)
(define-const var685 String (getPath/-1385219261 var2975)) ; Statement: $r7 = virtualinvoke $r6.<java.io.File: java.lang.String getPath()>() 
(assert true)
(define-const var3314 String (append/672562846 var1087 var685)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var1087!1 String)
(assert (= var1087!1 (str.++ var1087 var685)))
(assert true)
(define-const var3400 String (toString/-2075883882 var3314)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/456963423 (cast-from-var620-to-var185 var2680) var3400 4)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend: void log(java.lang.String,int)>($r10, 4) 

(declare-const var2680!1 var620)
(declare-const var3400!1 String)
(declare-const var1115 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1248_access$100/-1810595622=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend$ClassFileInfo], java.io.File), getPath/-1385219261=([java.io.File], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/456963423=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String, int], void), cast-from-var620-to-var185=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task)}
; {var620=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend, var2680=r0, var1037=r2, var1784=null_type, var1248=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend$ClassFileInfo, var3389=r5, var3318=$r1, var3893=$r3, var1022=$r4, var1087=$r8, var2262=java.io.File, var2975=$r6, var685=$r7, var3314=$r9, var3400=$r10, var185=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var1115=4}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend=var620, r0=var2680, r2=var1037, null_type=var1784, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend$ClassFileInfo=var1248, r5=var3389, $r1=var3318, $r3=var3893, $r4=var1022, $r8=var1087, java.io.File=var2262, $r6=var2975, $r7=var685, $r9=var3314, $r10=var3400, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var185, 4=var1115}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend;	r2 := @parameter0: java.lang.String;	r5 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend$ClassFileInfo;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("    ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r8 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" in ");	$r6 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend$ClassFileInfo: java.io.File access$100(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend$ClassFileInfo)>(r5);	$r7 = virtualinvoke $r6.<java.io.File: java.lang.String getPath()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend: void log(java.lang.String,int)>($r10, 4);	return
;block_num 1