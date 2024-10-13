(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var326 0)
(declare-sort var1569 0)
(declare-sort var772 0)
(declare-sort var3970 0)
(declare-sort var1267 0)
(declare-sort var3116 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun myCopy/-951607817 (var326) var772)
(declare-fun getToDir/2002891665 (var772) var3970)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun append/-1031950772 (String var1267) String)
(declare-fun cast-from-var3970-to-var1267 (var3970) var1267)
(declare-fun log/456963423 (var3116 String Int) void)
(declare-fun cast-from-var326-to-var3116 (var326) var3116)
(declare-const null-var326 var326)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var904 var326) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync 
(assert (not (= var904 null-var326)))
(declare-const var3714 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3714 null-Int)))
(declare-const var2836 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var2836 null-String)))
(declare-const var3081 String) ; Statement: r22 := @parameter2: java.lang.String 
(assert (not (= var3081 null-String)))
(declare-const var57 String) ; Statement: r5 := @parameter3: java.lang.String 
(assert (not (= var57 null-String)))
(define-const var3654 var772 (myCopy/-951607817 var904)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync$MyCopy myCopy> 
(assert true)
(define-const var2799 var3970 (getToDir/2002891665 var3654)) ; Statement: r2 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync$MyCopy: java.io.File getToDir()>() 
 ; Statement: if r3 != null goto $r24 = r3 
(assert (not (not (= var2836 null-String)))) ; Negate: Cond: r3 != null  
(define-const var3230 String "") ; Statement: $r24 = "" 
 ; Statement: goto [?= $r4 = new java.lang.StringBuilder] 
(assert true) ; Non Conditional
(define-const var2289 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2289)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2289!1 String)
(assert (= var2289!1 ""))
(assert true)
(define-const var1158 String (append/672562846 var2289!1 var3230)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24) 
(declare-const var2289!2 String)
(assert (= var2289!2 (str.++ var2289!1 var3230)))
 ; Statement: if i0 >= 2 goto $r25 = r5 
(assert (not (>= var3714 2))) ; Negate: Cond: i0 >= 2  
(define-const var616 String var3081) ; Statement: $r25 = r22 
 ; Statement: goto [?= $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r25)] 
(assert true) ; Non Conditional
(assert true)
(define-const var1545 String (append/672562846 var1158 var616)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r25) 
(declare-const var1158!1 String)
(assert (= var1158!1 (str.++ var1158 var616)))
(assert true)
(define-const var3090 String (toString/-2075883882 var1545)) ; Statement: $r23 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: if i0 <= 0 goto $r8 = new java.lang.StringBuilder 
(assert (not (<= var3714 0))) ; Negate: Cond: i0 <= 0  
(define-const var2384 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2384)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2384!1 String)
(assert (= var2384!1 ""))
(assert true)
(define-const var2424 String (append/672562846 var2384!1 "Removed ")) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Removed ") 
(declare-const var2384!2 String)
(assert (= var2384!2 (str.++ var2384!1 "Removed ")))
(assert true)
(define-const var147 String (append/-1001720160 var2424 var3714)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var2424!1 String)
(assert (str.prefixof var2424 var2424!1))
(assert true)
(define-const var3074 String (append/672562846 var147 " ")) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ") 
(declare-const var147!1 String)
(assert (= var147!1 (str.++ var147 " ")))
(assert true)
(define-const var3041 String (append/672562846 var3074 var3090)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23) 
(declare-const var3074!1 String)
(assert (= var3074!1 (str.++ var3074 var3090)))
(assert true)
(define-const var2750 String (append/672562846 var3041 " from ")) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" from ") 
(declare-const var3041!1 String)
(assert (= var3041!1 (str.++ var3041 " from ")))
(assert true)
(define-const var868 String (append/-1031950772 var2750 (cast-from-var3970-to-var1267 var2799))) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var2750!1 String)
(assert (str.prefixof var2750 var2750!1))
(assert true)
(define-const var1648 String (toString/-2075883882 var868)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/456963423 (cast-from-var326-to-var3116 var904) var1648 2)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync: void log(java.lang.String,int)>($r21, 2) 

(declare-const var904!1 var326)
(declare-const var1648!1 String)
(declare-const var1185 Int)
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {myCopy/-951607817=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync$MyCopy), getToDir/2002891665=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync$MyCopy], java.io.File), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3970-to-var1267=([java.io.File], java.lang.Object), log/456963423=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String, int], void), cast-from-var326-to-var3116=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task)}
; {var326=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync, var904=r0, var3714=i0, var2836=r3, var1569=null_type, var3081=r22, var57=r5, var772=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync$MyCopy, var3654=$r1, var3970=java.io.File, var2799=r2, var3230=$r24, var2289=$r4, var1158=$r6, var616=$r25, var1545=$r7, var3090=$r23, var2384=$r14, var2424=$r15, var147=$r16, var3074=$r17, var3041=$r18, var2750=$r19, var1267=java.lang.Object, var868=$r20, var1648=$r21, var3116=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var1185=2}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync=var326, r0=var904, i0=var3714, r3=var2836, null_type=var1569, r22=var3081, r5=var57, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync$MyCopy=var772, $r1=var3654, java.io.File=var3970, r2=var2799, $r24=var3230, $r4=var2289, $r6=var1158, $r25=var616, $r7=var1545, $r23=var3090, $r14=var2384, $r15=var2424, $r16=var147, $r17=var3074, $r18=var3041, $r19=var2750, java.lang.Object=var1267, $r20=var868, $r21=var1648, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var3116, 2=var1185}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync;	i0 := @parameter0: int;	r3 := @parameter1: java.lang.String;	r22 := @parameter2: java.lang.String;	r5 := @parameter3: java.lang.String;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync$MyCopy myCopy>;	r2 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync$MyCopy: java.io.File getToDir()>();	if r3 != null goto $r24 = r3;	$r24 = "";	goto [?= $r4 = new java.lang.StringBuilder];	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24);	if i0 >= 2 goto $r25 = r5;	$r25 = r22;	goto [?= $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r25)];	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r25);	$r23 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	if i0 <= 0 goto $r8 = new java.lang.StringBuilder;	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Removed ");	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" from ");	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync: void log(java.lang.String,int)>($r21, 2);	goto [?= return];	return
;block_num 7