(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var572 0)
(declare-sort var3595 0)
(declare-sort var192 0)
(declare-sort var3535 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var192_getProperty/258823597 (String) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/456963423 (var3535 String Int) void)
(declare-fun cast-from-var572-to-var3535 (var572) var3535)
(declare-fun os/-952026131 (var572) String)
(define-fun contains/1009244746 ((s String) (subs String)) Bool (str.contains s subs))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-const null-var572 var572)
(declare-const null-String String)
(declare-const var2649 var572) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Exec 
(assert (not (= var2649 null-var572)))
(declare-const var2133 String) ; Statement: r91 := @parameter0: java.lang.String 
(assert (not (= var2133 null-String)))
(define-const var338 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i3 = (int) -1 
(define-const var1123 Int var338) ; Statement: i1 = $i3 
(define-const var3835 String (var192_getProperty/258823597 "os.name")) ; Statement: r0 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("os.name") 
(define-const var96 String String-init) ; Statement: $r99 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var96)) ; Statement: specialinvoke $r99.<java.lang.StringBuilder: void <init>()>() 
(declare-const var96!1 String)
(assert (= var96!1 ""))
(assert true)
(define-const var472 String (append/672562846 var96!1 "Myos = ")) ; Statement: $r3 = virtualinvoke $r99.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Myos = ") 
(declare-const var96!2 String)
(assert (= var96!2 (str.++ var96!1 "Myos = ")))
(assert true)
(define-const var99 String (append/672562846 var472 var3835)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var472!1 String)
(assert (= var472!1 (str.++ var472 var3835)))
(assert true)
(define-const var1984 String (toString/-2075883882 var99)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/456963423 (cast-from-var572-to-var3535 var2649) var1984 3)) ; Statement: virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Exec: void log(java.lang.String,int)>($r5, 3) 

(declare-const var2649!1 var572)
(declare-const var1984!1 String)
(declare-const var3283 Int)
(define-const var1597 String (os/-952026131 var2649!1)) ; Statement: $r6 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Exec: java.lang.String os> 
 ; Statement: if $r6 == null goto $r7 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Exec: java.io.File dir> 
(assert (not (= var1597 null-String))) ; Negate: Cond: $r6 == null  
(define-const var1741 String (os/-952026131 var2649!1)) ; Statement: $r77 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Exec: java.lang.String os> 
(assert true)
(define-const var881 Bool (contains/1009244746 var1741 (cast-from-String-to-String var3835))) ; Statement: $z4 = virtualinvoke $r77.<java.lang.String: boolean contains(java.lang.CharSequence)>(r0) 
 ; Statement: if $z4 != 0 goto $r7 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Exec: java.io.File dir> 
(assert (not (not (= (ite var881 1 0) 0)))) ; Negate: Cond: $z4 != 0  
(define-const var3278 String String-init) ; Statement: $r100 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3278)) ; Statement: specialinvoke $r100.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3278!1 String)
(assert (= var3278!1 ""))
(assert true)
(define-const var603 String (append/672562846 var3278!1 "Not found in ")) ; Statement: $r80 = virtualinvoke $r100.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Not found in ") 
(declare-const var3278!2 String)
(assert (= var3278!2 (str.++ var3278!1 "Not found in ")))
(define-const var1328 String (os/-952026131 var2649!1)) ; Statement: $r79 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Exec: java.lang.String os> 
(assert true)
(define-const var51 String (append/672562846 var603 var1328)) ; Statement: $r81 = virtualinvoke $r80.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r79) 
(declare-const var603!1 String)
(assert (= var603!1 (str.++ var603 var1328)))
(assert true)
(define-const var1719 String (toString/-2075883882 var51)) ; Statement: $r82 = virtualinvoke $r81.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/456963423 (cast-from-var572-to-var3535 var2649!1) var1719 3)) ; Statement: virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Exec: void log(java.lang.String,int)>($r82, 3) 

(declare-const var2649!2 var572)
(declare-const var1719!1 String)
(declare-const var3283!1 Int)
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([int], int), var192_getProperty/258823597=([java.lang.String], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/456963423=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String, int], void), cast-from-var572-to-var3535=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Exec], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task), os/-952026131=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Exec], java.lang.String), contains/1009244746=([java.lang.String, java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence)}
; {var572=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Exec, var2649=r1, var2133=r91, var3595=null_type, var338=$i3, var1123=i1, var192=java.lang.System, var3835=r0, var96=$r99, var472=$r3, var99=$r4, var1984=$r5, var3535=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var3283=3, var1597=$r6, var1741=$r77, var881=$z4, var3278=$r100, var603=$r80, var1328=$r79, var51=$r81, var1719=$r82}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Exec=var572, r1=var2649, r91=var2133, null_type=var3595, $i3=var338, i1=var1123, java.lang.System=var192, r0=var3835, $r99=var96, $r3=var472, $r4=var99, $r5=var1984, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var3535, 3=var3283, $r6=var1597, $r77=var1741, $z4=var881, $r100=var3278, $r80=var603, $r79=var1328, $r81=var51, $r82=var1719}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: boolean contains(java.lang.CharSequence)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.String: boolean contains(java.lang.CharSequence)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Exec;	r91 := @parameter0: java.lang.String;	$i3 = (int) -1;	i1 = $i3;	r0 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("os.name");	$r99 = new java.lang.StringBuilder;	specialinvoke $r99.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r99.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Myos = ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Exec: void log(java.lang.String,int)>($r5, 3);	$r6 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Exec: java.lang.String os>;	if $r6 == null goto $r7 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Exec: java.io.File dir>;	$r77 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Exec: java.lang.String os>;	$z4 = virtualinvoke $r77.<java.lang.String: boolean contains(java.lang.CharSequence)>(r0);	if $z4 != 0 goto $r7 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Exec: java.io.File dir>;	$r100 = new java.lang.StringBuilder;	specialinvoke $r100.<java.lang.StringBuilder: void <init>()>();	$r80 = virtualinvoke $r100.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Not found in ");	$r79 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Exec: java.lang.String os>;	$r81 = virtualinvoke $r80.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r79);	$r82 = virtualinvoke $r81.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Exec: void log(java.lang.String,int)>($r82, 3);	return 0
;block_num 3