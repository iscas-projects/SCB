(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2145 0)
(declare-sort var1425 0)
(declare-sort var1346 0)
(declare-sort var2706 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/456963423 (var2706 String Int) void)
(declare-fun cast-from-var2145-to-var2706 (var2145) var2706)
(declare-const null-var2145 var2145)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var1346 var1346)
(declare-const var127 var2145) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate 
(assert (not (= var127 null-var2145)))
(declare-const var3490 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3490 null-String)))
(declare-const var2793 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var2793 null-Bool)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1794 var1346) ; Statement: $r3 := @caughtexception 
(assert (not (= var1794 null-var1346)))
(define-const var970 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var970)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var970!1 String)
(assert (= var970!1 ""))
(assert true)
(define-const var3774 String (append/672562846 var970!1 "Not supported: ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Not supported: ") 
(declare-const var970!2 String)
(assert (= var970!2 (str.++ var970!1 "Not supported: ")))
(assert true)
(define-const var795 String (append/672562846 var3774 var3490)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3774!1 String)
(assert (= var3774!1 (str.++ var3774 var3490)))
(assert true)
(define-const var2654 String (toString/-2075883882 var795)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/456963423 (cast-from-var2145-to-var2706 var127) var2654 3)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate: void log(java.lang.String,int)>($r7, 3) 

(declare-const var127!1 var2145)
(declare-const var2654!1 String)
(declare-const var3383 Int)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/456963423=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String, int], void), cast-from-var2145-to-var2706=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task)}
; {var2145=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate, var127=r0, var3490=r1, var1425=null_type, var2793=z0, var1346=org.xml.sax.SAXNotSupportedException, var1794=$r3, var970=$r4, var3774=$r5, var795=$r6, var2654=$r7, var2706=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var3383=3}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate=var2145, r0=var127, r1=var3490, null_type=var1425, z0=var2793, org.xml.sax.SAXNotSupportedException=var1346, $r3=var1794, $r4=var970, $r5=var3774, $r6=var795, $r7=var2654, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var2706, 3=var3383}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate;	r1 := @parameter0: java.lang.String;	z0 := @parameter1: boolean;	$r3 := @caughtexception;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Not supported: ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate: void log(java.lang.String,int)>($r7, 3);	return
;block_num 3