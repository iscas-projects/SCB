(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3021 0)
(declare-sort var406 0)
(declare-sort var1285 0)
(declare-sort var1435 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1435_lineSeparator/-342590142 () String)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun length/-171891354 (String) Int)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun size/-1825798970 (var406) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/2093317233 (var3021 String Int) void)
(declare-const null-var3021 var3021)
(declare-const null-var406 var406)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1464 var3021) ; Statement: r7 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project 
(assert (not (= var1464 null-var3021)))
(declare-const var3448 var406) ; Statement: r6 := @parameter1: java.util.Vector 
(assert (not (= var3448 null-var406)))
(declare-const var1531 var406) ; Statement: r11 := @parameter2: java.util.Vector 
(assert (not (= var1531 null-var406)))
(declare-const var2638 var406) ; Statement: r12 := @parameter3: java.util.Vector 
(assert (not (= var2638 null-var406)))
(declare-const var3052 String) ; Statement: r3 := @parameter4: java.lang.String 
(assert (not (= var3052 null-String)))
(declare-const var3896 Int) ; Statement: i0 := @parameter5: int 
(assert (not (= var3896 null-Int)))
(define-const var2081 String var1435_lineSeparator/-342590142) ; Statement: r0 = staticinvoke <java.lang.System: java.lang.String lineSeparator()>() 
(define-const var2412 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var2412 "    ")) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>(java.lang.String)>("    ") 
(declare-const var2412!1 String)
(assert (= var2412!1 "    "))
(assert true) ; Non Conditional
(assert true)
(define-const var3725 Int (length/-171891354 var2412!1)) ; Statement: $i1 = virtualinvoke $r1.<java.lang.StringBuilder: int length()>() 
 ; Statement: if $i1 > i0 goto $r2 = new java.lang.StringBuilder 
(assert (> var3725 var3896)) ; Cond: $i1 > i0 
(define-const var139 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var139)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var139!1 String)
(assert (= var139!1 ""))
(assert true)
(define-const var2605 String (append/672562846 var139!1 var3052)) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var139!2 String)
(assert (= var139!2 (str.++ var139!1 var3052)))
(assert true)
(define-const var555 String (append/672562846 var2605 var2081)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var2605!1 String)
(assert (= var2605!1 (str.++ var2605 var2081)))
(assert true)
;(assert (append/672562846 var555 var2081)) ; Statement: virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var555!1 String)
(assert (= var555!1 (str.++ var555 var2081)))
(assert true)
(define-const var1190 Int (size/-1825798970 var3448)) ; Statement: i2 = virtualinvoke r6.<java.util.Vector: int size()>() 
(define-const var479 Int 0) ; Statement: i6 = 0 
(assert true) ; Non Conditional
 ; Statement: if i6 >= i2 goto $r8 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var479 var1190)) ; Cond: i6 >= i2 
(assert true)
(define-const var1273 String (toString/-2075883882 var139!2)) ; Statement: $r8 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/2093317233 var1464 var1273 1)) ; Statement: virtualinvoke r7.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: void log(java.lang.String,int)>($r8, 1) 

(declare-const var1464!1 var3021)
(declare-const var1273!1 String)
(declare-const var97 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var1435_lineSeparator/-342590142=([], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), length/-171891354=([java.lang.StringBuilder], int), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), size/-1825798970=([java.util.Vector], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/2093317233=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, java.lang.String, int], void)}
; {var3021=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var1464=r7, var406=java.util.Vector, var3448=r6, var1531=r11, var2638=r12, var3052=r3, var1285=null_type, var3896=i0, var1435=java.lang.System, var2081=r0, var2412=$r1, var3725=$i1, var139=$r2, var2605=$r4, var555=$r5, var1190=i2, var479=i6, var1273=$r8, var97=1}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var3021, r7=var1464, java.util.Vector=var406, r6=var3448, r11=var1531, r12=var2638, r3=var3052, null_type=var1285, i0=var3896, java.lang.System=var1435, r0=var2081, $r1=var2412, $i1=var3725, $r2=var139, $r4=var2605, $r5=var555, i2=var1190, i6=var479, $r8=var1273, 1=var97}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: int length()>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r7 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project;	r6 := @parameter1: java.util.Vector;	r11 := @parameter2: java.util.Vector;	r12 := @parameter3: java.util.Vector;	r3 := @parameter4: java.lang.String;	i0 := @parameter5: int;	r0 = staticinvoke <java.lang.System: java.lang.String lineSeparator()>();	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>(java.lang.String)>("    ");	$i1 = virtualinvoke $r1.<java.lang.StringBuilder: int length()>();	if $i1 > i0 goto $r2 = new java.lang.StringBuilder;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	i2 = virtualinvoke r6.<java.util.Vector: int size()>();	i6 = 0;	if i6 >= i2 goto $r8 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r7.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: void log(java.lang.String,int)>($r8, 1);	return
;block_num 5