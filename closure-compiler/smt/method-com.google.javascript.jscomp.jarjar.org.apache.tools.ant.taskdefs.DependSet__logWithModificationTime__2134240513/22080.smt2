(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var399 0)
(declare-sort var3665 0)
(declare-sort var360 0)
(declare-sort var484 0)
(declare-sort var1680 0)
(declare-sort var2354 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun toLongString/-170932762 (var3665) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var484-init () var484)
(declare-fun getLastModified/-1494632928 (var3665) Int)
(declare-fun <init>/593337323 (var484 Int) void)
(declare-fun append/-1031950772 (String var1680) String)
(declare-fun cast-from-var484-to-var1680 (var484) var1680)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun verbose/-515343238 (var399) Bool)
(declare-fun log/456963423 (var2354 String Int) void)
(declare-fun cast-from-var399-to-var2354 (var399) var2354)
(declare-const null-var399 var399)
(declare-const null-var3665 var3665)
(declare-const null-String String)
(declare-const var2012 var399) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.DependSet 
(assert (not (= var2012 null-var399)))
(declare-const var1138 var3665) ; Statement: r2 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource 
(assert (not (= var1138 null-var3665)))
(declare-const var1202 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var1202 null-String)))
(define-const var2639 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2639)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2639!1 String)
(assert (= var2639!1 ""))
(assert true)
(define-const var660 String (toLongString/-170932762 var1138)) ; Statement: $r3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource: java.lang.String toLongString()>() 
(assert true)
(define-const var712 String (append/672562846 var2639!1 var660)) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2639!2 String)
(assert (= var2639!2 (str.++ var2639!1 var660)))
(assert true)
(define-const var3859 String (append/672562846 var712 " is ")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is ") 
(declare-const var712!1 String)
(assert (= var712!1 (str.++ var712 " is ")))
(assert true)
(define-const var739 String (append/672562846 var3859 var1202)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var3859!1 String)
(assert (= var3859!1 (str.++ var3859 var1202)))
(assert true)
(define-const var2861 String (append/672562846 var739 ", modified at ")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", modified at ") 
(declare-const var739!1 String)
(assert (= var739!1 (str.++ var739 ", modified at ")))
(define-const var2843 var484 var484-init) ; Statement: $r8 = new java.util.Date 
(assert true)
(define-const var768 Int (getLastModified/-1494632928 var1138)) ; Statement: $l0 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource: long getLastModified()>() 
(assert true)
;(assert (<init>/593337323 var2843 var768)) ; Statement: specialinvoke $r8.<java.util.Date: void <init>(long)>($l0) 

(declare-const var2843!1 var484)
(declare-const var768!1 Int)
(assert true)
(define-const var815 String (append/-1031950772 var2861 (cast-from-var484-to-var1680 var2843!1))) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r8) 
(declare-const var2861!1 String)
(assert (str.prefixof var2861 var2861!1))
(assert true)
(define-const var600 String (toString/-2075883882 var815)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1796 Bool (verbose/-515343238 var2012)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.DependSet: boolean verbose> 
 ; Statement: if $z0 == 0 goto $b1 = 3 
(assert (= (ite var1796 1 0) 0)) ; Cond: $z0 == 0 
(define-const var61 Int 3) ; Statement: $b1 = 3 
(assert true) ; Non Conditional
(assert true)
;(assert (log/456963423 (cast-from-var399-to-var2354 var2012) var600 var61)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.DependSet: void log(java.lang.String,int)>($r11, $b1) 

(declare-const var2012!1 var399)
(declare-const var600!1 String)
(declare-const var61!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), toLongString/-170932762=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var484-init=([], java.util.Date), getLastModified/-1494632928=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource], long), <init>/593337323=([java.util.Date, long], void), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var484-to-var1680=([java.util.Date], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), verbose/-515343238=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.DependSet], boolean), log/456963423=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String, int], void), cast-from-var399-to-var2354=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.DependSet], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task)}
; {var399=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.DependSet, var2012=r0, var3665=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource, var1138=r2, var1202=r5, var360=null_type, var2639=$r1, var660=$r3, var712=$r4, var3859=$r6, var739=$r7, var2861=$r9, var484=java.util.Date, var2843=$r8, var768=$l0, var1680=java.lang.Object, var815=$r10, var600=$r11, var1796=$z0, var61=$b1, var2354=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.DependSet=var399, r0=var2012, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource=var3665, r2=var1138, r5=var1202, null_type=var360, $r1=var2639, $r3=var660, $r4=var712, $r6=var3859, $r7=var739, $r9=var2861, java.util.Date=var484, $r8=var2843, $l0=var768, java.lang.Object=var1680, $r10=var815, $r11=var600, $z0=var1796, $b1=var61, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var2354}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.DependSet;	r2 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource;	r5 := @parameter1: java.lang.String;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource: java.lang.String toLongString()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", modified at ");	$r8 = new java.util.Date;	$l0 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource: long getLastModified()>();	specialinvoke $r8.<java.util.Date: void <init>(long)>($l0);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	$z0 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.DependSet: boolean verbose>;	if $z0 == 0 goto $b1 = 3;	$b1 = 3;	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.DependSet: void log(java.lang.String,int)>($r11, $b1);	return
;block_num 3