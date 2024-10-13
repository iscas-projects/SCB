(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var926 0)
(declare-sort var314 0)
(declare-sort var2216 0)
(declare-sort var112 0)
(declare-sort var432 0)
(declare-sort var429 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun toLongString/-170932762 (var314) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var112-init () var112)
(declare-fun getLastModified/-1494632928 (var314) Int)
(declare-fun <init>/593337323 (var112 Int) void)
(declare-fun append/-1031950772 (String var432) String)
(declare-fun cast-from-var112-to-var432 (var112) var432)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun verbose/-515343238 (var926) Bool)
(declare-fun log/456963423 (var429 String Int) void)
(declare-fun cast-from-var926-to-var429 (var926) var429)
(declare-const null-var926 var926)
(declare-const null-var314 var314)
(declare-const null-String String)
(declare-const var625 var926) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.DependSet 
(assert (not (= var625 null-var926)))
(declare-const var2955 var314) ; Statement: r2 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource 
(assert (not (= var2955 null-var314)))
(declare-const var2249 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var2249 null-String)))
(define-const var3750 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3750)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3750!1 String)
(assert (= var3750!1 ""))
(assert true)
(define-const var3055 String (toLongString/-170932762 var2955)) ; Statement: $r3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource: java.lang.String toLongString()>() 
(assert true)
(define-const var952 String (append/672562846 var3750!1 var3055)) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3750!2 String)
(assert (= var3750!2 (str.++ var3750!1 var3055)))
(assert true)
(define-const var2516 String (append/672562846 var952 " is ")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is ") 
(declare-const var952!1 String)
(assert (= var952!1 (str.++ var952 " is ")))
(assert true)
(define-const var2648 String (append/672562846 var2516 var2249)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var2516!1 String)
(assert (= var2516!1 (str.++ var2516 var2249)))
(assert true)
(define-const var1067 String (append/672562846 var2648 ", modified at ")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", modified at ") 
(declare-const var2648!1 String)
(assert (= var2648!1 (str.++ var2648 ", modified at ")))
(define-const var2479 var112 var112-init) ; Statement: $r8 = new java.util.Date 
(assert true)
(define-const var3151 Int (getLastModified/-1494632928 var2955)) ; Statement: $l0 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource: long getLastModified()>() 
(assert true)
;(assert (<init>/593337323 var2479 var3151)) ; Statement: specialinvoke $r8.<java.util.Date: void <init>(long)>($l0) 

(declare-const var2479!1 var112)
(declare-const var3151!1 Int)
(assert true)
(define-const var1546 String (append/-1031950772 var1067 (cast-from-var112-to-var432 var2479!1))) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r8) 
(declare-const var1067!1 String)
(assert (str.prefixof var1067 var1067!1))
(assert true)
(define-const var1633 String (toString/-2075883882 var1546)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var935 Bool (verbose/-515343238 var625)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.DependSet: boolean verbose> 
 ; Statement: if $z0 == 0 goto $b1 = 3 
(assert (not (= (ite var935 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var25 Int 2) ; Statement: $b1 = 2 
 ; Statement: goto [?= virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.DependSet: void log(java.lang.String,int)>($r11, $b1)] 
(assert true) ; Non Conditional
(assert true)
;(assert (log/456963423 (cast-from-var926-to-var429 var625) var1633 var25)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.DependSet: void log(java.lang.String,int)>($r11, $b1) 

(declare-const var625!1 var926)
(declare-const var1633!1 String)
(declare-const var25!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), toLongString/-170932762=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var112-init=([], java.util.Date), getLastModified/-1494632928=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource], long), <init>/593337323=([java.util.Date, long], void), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var112-to-var432=([java.util.Date], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), verbose/-515343238=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.DependSet], boolean), log/456963423=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String, int], void), cast-from-var926-to-var429=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.DependSet], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task)}
; {var926=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.DependSet, var625=r0, var314=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource, var2955=r2, var2249=r5, var2216=null_type, var3750=$r1, var3055=$r3, var952=$r4, var2516=$r6, var2648=$r7, var1067=$r9, var112=java.util.Date, var2479=$r8, var3151=$l0, var432=java.lang.Object, var1546=$r10, var1633=$r11, var935=$z0, var25=$b1, var429=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.DependSet=var926, r0=var625, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource=var314, r2=var2955, r5=var2249, null_type=var2216, $r1=var3750, $r3=var3055, $r4=var952, $r6=var2516, $r7=var2648, $r9=var1067, java.util.Date=var112, $r8=var2479, $l0=var3151, java.lang.Object=var432, $r10=var1546, $r11=var1633, $z0=var935, $b1=var25, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var429}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.DependSet;	r2 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource;	r5 := @parameter1: java.lang.String;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource: java.lang.String toLongString()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", modified at ");	$r8 = new java.util.Date;	$l0 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource: long getLastModified()>();	specialinvoke $r8.<java.util.Date: void <init>(long)>($l0);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	$z0 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.DependSet: boolean verbose>;	if $z0 == 0 goto $b1 = 3;	$b1 = 2;	goto [?= virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.DependSet: void log(java.lang.String,int)>($r11, $b1)];	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.DependSet: void log(java.lang.String,int)>($r11, $b1);	return
;block_num 3