(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1081 0)
(declare-sort var3539 0)
(declare-sort var2622 0)
(declare-sort var1517 0)
(declare-sort var789 0)
(declare-sort var3262 0)
(declare-sort var826 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var789) String)
(declare-fun cast-from-var3539-to-var789 (var3539) var789)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun cast-from-var1517-to-var789 (var1517) var789)
(declare-fun log/1033878336 (var1081 String Int) void)
(declare-fun var3262_getStackTrace/-253691410 (var826) String)
(declare-fun cast-from-var1517-to-var826 (var1517) var826)
(declare-const null-var1081 var1081)
(declare-const null-var3539 var3539)
(declare-const null-String String)
(declare-const null-var1517 var1517)
(declare-const var3061 var1081) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader 
(assert (not (= var3061 null-var1081)))
(declare-const var1754 var3539) ; Statement: r1 := @parameter0: java.io.File 
(assert (not (= var1754 null-var3539)))
(declare-const var1839 String) ; Statement: r4 := @parameter1: java.lang.String 
(assert (not (= var1839 null-String)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2119 var1517) ; Statement: $r25 := @caughtexception 
(assert (not (= var2119 null-var1517)))
(define-const var2889 String String-init) ; Statement: $r26 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2889)) ; Statement: specialinvoke $r26.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2889!1 String)
(assert (= var2889!1 ""))
(assert true)
(define-const var1597 String (append/672562846 var2889!1 "Unable to obtain resource from ")) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to obtain resource from ") 
(declare-const var2889!2 String)
(assert (= var2889!2 (str.++ var2889!1 "Unable to obtain resource from ")))
(assert true)
(define-const var845 String (append/-1031950772 var1597 (cast-from-var3539-to-var789 var1754))) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var1597!1 String)
(assert (str.prefixof var1597 var1597!1))
(assert true)
(define-const var3454 String (append/672562846 var845 ": ")) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ") 
(declare-const var845!1 String)
(assert (= var845!1 (str.++ var845 ": ")))
(assert true)
(define-const var1579 String (toString/-2075883882 var3454)) ; Statement: r40 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1476 String String-init) ; Statement: $r30 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1476)) ; Statement: specialinvoke $r30.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1476!1 String)
(assert (= var1476!1 ""))
(assert true)
(define-const var1105 String (append/672562846 var1476!1 var1579)) ; Statement: $r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r40) 
(declare-const var1476!2 String)
(assert (= var1476!2 (str.++ var1476!1 var1579)))
(assert true)
(define-const var2696 String (append/-1031950772 var1105 (cast-from-var1517-to-var789 var2119))) ; Statement: $r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r25) 
(declare-const var1105!1 String)
(assert (str.prefixof var1105 var1105!1))
(assert true)
(define-const var610 String (toString/-2075883882 var2696)) ; Statement: $r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/1033878336 var3061 var610 1)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader: void log(java.lang.String,int)>($r33, 1) 

(declare-const var3061!1 var1081)
(declare-const var610!1 String)
(declare-const var191 Int)
(define-const var2745 String (var3262_getStackTrace/-253691410 (cast-from-var1517-to-var826 var2119))) ; Statement: $r34 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.StringUtils: java.lang.String getStackTrace(java.lang.Throwable)>($r25) 
(assert true)
;(assert (log/1033878336 var3061!1 var2745 1)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader: void log(java.lang.String,int)>($r34, 1) 

(declare-const var3061!2 var1081)
(declare-const var2745!1 String)
(declare-const var191!1 Int)
(assert true) ; Non Conditional
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3539-to-var789=([java.io.File], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), cast-from-var1517-to-var789=([java.lang.Exception], java.lang.Object), log/1033878336=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader, java.lang.String, int], void), var3262_getStackTrace/-253691410=([java.lang.Throwable], java.lang.String), cast-from-var1517-to-var826=([java.lang.Exception], java.lang.Throwable)}
; {var1081=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader, var3061=r0, var3539=java.io.File, var1754=r1, var1839=r4, var2622=null_type, var1517=java.lang.Exception, var2119=$r25, var2889=$r26, var1597=$r27, var789=java.lang.Object, var845=$r28, var3454=$r29, var1579=r40, var1476=$r30, var1105=$r31, var2696=$r32, var610=$r33, var191=1, var3262=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.StringUtils, var826=java.lang.Throwable, var2745=$r34}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader=var1081, r0=var3061, java.io.File=var3539, r1=var1754, r4=var1839, null_type=var2622, java.lang.Exception=var1517, $r25=var2119, $r26=var2889, $r27=var1597, java.lang.Object=var789, $r28=var845, $r29=var3454, r40=var1579, $r30=var1476, $r31=var1105, $r32=var2696, $r33=var610, 1=var191, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.StringUtils=var3262, java.lang.Throwable=var826, $r34=var2745}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader;	r1 := @parameter0: java.io.File;	r4 := @parameter1: java.lang.String;	$r25 := @caughtexception;	$r26 = new java.lang.StringBuilder;	specialinvoke $r26.<java.lang.StringBuilder: void <init>()>();	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to obtain resource from ");	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ");	r40 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>();	$r30 = new java.lang.StringBuilder;	specialinvoke $r30.<java.lang.StringBuilder: void <init>()>();	$r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r40);	$r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r25);	$r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader: void log(java.lang.String,int)>($r33, 1);	$r34 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.StringUtils: java.lang.String getStackTrace(java.lang.Throwable)>($r25);	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader: void log(java.lang.String,int)>($r34, 1);	return null
;block_num 3