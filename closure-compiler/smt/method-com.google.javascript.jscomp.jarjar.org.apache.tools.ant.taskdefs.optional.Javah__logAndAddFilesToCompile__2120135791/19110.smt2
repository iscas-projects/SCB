(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3505 0)
(declare-sort var2352 0)
(declare-sort var2659 0)
(declare-sort var862 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun describeArguments/-1721057376 (var2352) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/456963423 (var2659 String Int) void)
(declare-fun cast-from-var3505-to-var2659 (var3505) var2659)
(declare-fun getClasses/-2072163446 (var3505) (Array Int String))
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun arr-var862-init () (Array Int var862))
(declare-fun String_format/1339386452 (String (Array Int var862)) String)
(declare-const null-var3505 var3505)
(declare-const null-var2352 var2352)
(declare-const var298 var3505) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Javah 
(assert (not (= var298 null-var3505)))
(declare-const var184 var2352) ; Statement: r2 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline 
(assert (not (= var184 null-var2352)))
(define-const var2961 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2961)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2961!1 String)
(assert (= var2961!1 ""))
(assert true)
(define-const var214 String (append/672562846 var2961!1 "Compilation ")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Compilation ") 
(declare-const var2961!2 String)
(assert (= var2961!2 (str.++ var2961!1 "Compilation ")))
(assert true)
(define-const var1864 String (describeArguments/-1721057376 var184)) ; Statement: $r3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline: java.lang.String describeArguments()>() 
(assert true)
(define-const var818 String (append/672562846 var214 var1864)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var214!1 String)
(assert (= var214!1 (str.++ var214 var1864)))
(assert true)
(define-const var2197 String (toString/-2075883882 var818)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/456963423 (cast-from-var3505-to-var2659 var298) var2197 3)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Javah: void log(java.lang.String,int)>($r6, 3) 

(declare-const var298!1 var3505)
(declare-const var2197!1 String)
(declare-const var2235 Int)
(assert true)
(define-const var2415 (Array Int String) (getClasses/-2072163446 var298!1)) ; Statement: r7 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Javah: java.lang.String[] getClasses()>() 
(define-const var438 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var438 "Class")) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>(java.lang.String)>("Class") 
(declare-const var438!1 String)
(assert (= var438!1 "Class"))
(define-const var3236 Int (getLength-Arr-String-1 var2415)) ; Statement: $i0 = lengthof r7 
 ; Statement: if $i0 <= 1 goto $r9 = newarray (java.lang.Object)[0] 
(assert (<= var3236 1)) ; Cond: $i0 <= 1 
(define-const var1823 (Array Int var862) arr-var862-init) ; Statement: $r9 = newarray (java.lang.Object)[0] 
(define-const var1744 String (String_format/1339386452 " to be compiled:%n" var1823)) ; Statement: $r10 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>(" to be compiled:%n", $r9) 
(assert true)
;(assert (append/672562846 var438!1 var1744)) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var438!2 String)
(assert (= var438!2 (str.++ var438!1 var1744)))
(define-const var456 Int (getLength-Arr-String-1 var2415)) ; Statement: $i1 = lengthof r7 
(define-const var2628 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
 ; Statement: if i2 >= $i1 goto $r11 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var2628 var456)) ; Cond: i2 >= $i1 
(assert true)
(define-const var1405 String (toString/-2075883882 var438!2)) ; Statement: $r11 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/456963423 (cast-from-var3505-to-var2659 var298!1) var1405 3)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Javah: void log(java.lang.String,int)>($r11, 3) 

(declare-const var298!2 var3505)
(declare-const var1405!1 String)
(declare-const var2235!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), describeArguments/-1721057376=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/456963423=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String, int], void), cast-from-var3505-to-var2659=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Javah], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task), getClasses/-2072163446=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Javah], java.lang.String[]), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), getLength-Arr-String-1=([java.lang.String[]], int), arr-var862-init=([], java.lang.Object[]), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var3505=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Javah, var298=r0, var2352=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline, var184=r2, var2961=$r1, var214=$r4, var1864=$r3, var818=$r5, var2197=$r6, var2659=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var2235=3, var2415=r7, var438=$r8, var3236=$i0, var862=java.lang.Object, var1823=$r9, var1744=$r10, var456=$i1, var2628=i2, var1405=$r11}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Javah=var3505, r0=var298, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline=var2352, r2=var184, $r1=var2961, $r4=var214, $r3=var1864, $r5=var818, $r6=var2197, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var2659, 3=var2235, r7=var2415, $r8=var438, $i0=var3236, java.lang.Object=var862, $r9=var1823, $r10=var1744, $i1=var456, i2=var2628, $r11=var1405}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Javah;	r2 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Compilation ");	$r3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline: java.lang.String describeArguments()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Javah: void log(java.lang.String,int)>($r6, 3);	r7 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Javah: java.lang.String[] getClasses()>();	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>(java.lang.String)>("Class");	$i0 = lengthof r7;	if $i0 <= 1 goto $r9 = newarray (java.lang.Object)[0];	$r9 = newarray (java.lang.Object)[0];	$r10 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>(" to be compiled:%n", $r9);	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$i1 = lengthof r7;	i2 = 0;	if i2 >= $i1 goto $r11 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	$r11 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Javah: void log(java.lang.String,int)>($r11, 3);	return
;block_num 4