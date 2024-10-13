(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2932 0)
(declare-sort var3526 0)
(declare-sort var2718 0)
(declare-sort var3062 0)
(declare-sort var3781 0)
(declare-sort var3965 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun myCopy/-951607817 (var2932) var2718)
(declare-fun getToDir/2002891665 (var2718) var3062)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun append/-1031950772 (String var3781) String)
(declare-fun cast-from-var3062-to-var3781 (var3062) var3781)
(declare-fun log/456963423 (var3965 String Int) void)
(declare-fun cast-from-var2932-to-var3965 (var2932) var3965)
(declare-const null-var2932 var2932)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var3434 var2932) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync 
(assert (not (= var3434 null-var2932)))
(declare-const var3529 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3529 null-Int)))
(declare-const var2119 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var2119 null-String)))
(declare-const var3040 String) ; Statement: r22 := @parameter2: java.lang.String 
(assert (not (= var3040 null-String)))
(declare-const var1906 String) ; Statement: r5 := @parameter3: java.lang.String 
(assert (not (= var1906 null-String)))
(define-const var612 var2718 (myCopy/-951607817 var3434)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync$MyCopy myCopy> 
(assert true)
(define-const var224 var3062 (getToDir/2002891665 var612)) ; Statement: r2 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync$MyCopy: java.io.File getToDir()>() 
 ; Statement: if r3 != null goto $r24 = r3 
(assert (not (not (= var2119 null-String)))) ; Negate: Cond: r3 != null  
(define-const var995 String "") ; Statement: $r24 = "" 
 ; Statement: goto [?= $r4 = new java.lang.StringBuilder] 
(assert true) ; Non Conditional
(define-const var1936 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1936)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1936!1 String)
(assert (= var1936!1 ""))
(assert true)
(define-const var2237 String (append/672562846 var1936!1 var995)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24) 
(declare-const var1936!2 String)
(assert (= var1936!2 (str.++ var1936!1 var995)))
 ; Statement: if i0 >= 2 goto $r25 = r5 
(assert (>= var3529 2)) ; Cond: i0 >= 2 
(define-const var2233 String var1906) ; Statement: $r25 = r5 
(assert true) ; Non Conditional
(assert true)
(define-const var2453 String (append/672562846 var2237 var2233)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r25) 
(declare-const var2237!1 String)
(assert (= var2237!1 (str.++ var2237 var2233)))
(assert true)
(define-const var1788 String (toString/-2075883882 var2453)) ; Statement: $r23 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: if i0 <= 0 goto $r8 = new java.lang.StringBuilder 
(assert (<= var3529 0)) ; Cond: i0 <= 0 
(define-const var100 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var100)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var100!1 String)
(assert (= var100!1 ""))
(assert true)
(define-const var11 String (append/672562846 var100!1 "NO ")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("NO ") 
(declare-const var100!2 String)
(assert (= var100!2 (str.++ var100!1 "NO ")))
(assert true)
(define-const var870 String (append/672562846 var11 var1788)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23) 
(declare-const var11!1 String)
(assert (= var11!1 (str.++ var11 var1788)))
(assert true)
(define-const var3170 String (append/672562846 var870 " to remove from ")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" to remove from ") 
(declare-const var870!1 String)
(assert (= var870!1 (str.++ var870 " to remove from ")))
(assert true)
(define-const var62 String (append/-1031950772 var3170 (cast-from-var3062-to-var3781 var224))) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var3170!1 String)
(assert (str.prefixof var3170 var3170!1))
(assert true)
(define-const var1913 String (toString/-2075883882 var62)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/456963423 (cast-from-var2932-to-var3965 var3434) var1913 3)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync: void log(java.lang.String,int)>($r13, 3) 

(declare-const var3434!1 var2932)
(declare-const var1913!1 String)
(declare-const var3374 Int)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {myCopy/-951607817=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync$MyCopy), getToDir/2002891665=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync$MyCopy], java.io.File), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3062-to-var3781=([java.io.File], java.lang.Object), log/456963423=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String, int], void), cast-from-var2932-to-var3965=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task)}
; {var2932=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync, var3434=r0, var3529=i0, var2119=r3, var3526=null_type, var3040=r22, var1906=r5, var2718=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync$MyCopy, var612=$r1, var3062=java.io.File, var224=r2, var995=$r24, var1936=$r4, var2237=$r6, var2233=$r25, var2453=$r7, var1788=$r23, var100=$r8, var11=$r9, var870=$r10, var3170=$r11, var3781=java.lang.Object, var62=$r12, var1913=$r13, var3965=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var3374=3}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync=var2932, r0=var3434, i0=var3529, r3=var2119, null_type=var3526, r22=var3040, r5=var1906, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync$MyCopy=var2718, $r1=var612, java.io.File=var3062, r2=var224, $r24=var995, $r4=var1936, $r6=var2237, $r25=var2233, $r7=var2453, $r23=var1788, $r8=var100, $r9=var11, $r10=var870, $r11=var3170, java.lang.Object=var3781, $r12=var62, $r13=var1913, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var3965, 3=var3374}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync;	i0 := @parameter0: int;	r3 := @parameter1: java.lang.String;	r22 := @parameter2: java.lang.String;	r5 := @parameter3: java.lang.String;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync$MyCopy myCopy>;	r2 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync$MyCopy: java.io.File getToDir()>();	if r3 != null goto $r24 = r3;	$r24 = "";	goto [?= $r4 = new java.lang.StringBuilder];	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24);	if i0 >= 2 goto $r25 = r5;	$r25 = r5;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r25);	$r23 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	if i0 <= 0 goto $r8 = new java.lang.StringBuilder;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("NO ");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" to remove from ");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Sync: void log(java.lang.String,int)>($r13, 3);	return
;block_num 7