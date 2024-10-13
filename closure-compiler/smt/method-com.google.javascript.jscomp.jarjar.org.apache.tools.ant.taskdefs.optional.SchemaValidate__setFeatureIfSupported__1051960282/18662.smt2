(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1005 0)
(declare-sort var2153 0)
(declare-sort var2562 0)
(declare-sort var697 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/456963423 (var697 String Int) void)
(declare-fun cast-from-var1005-to-var697 (var1005) var697)
(declare-const null-var1005 var1005)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var2562 var2562)
(declare-const var334 var1005) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate 
(assert (not (= var334 null-var1005)))
(declare-const var2007 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2007 null-String)))
(declare-const var2601 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var2601 null-Bool)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3479 var2562) ; Statement: $r8 := @caughtexception 
(assert (not (= var3479 null-var2562)))
(define-const var1275 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1275)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1275!1 String)
(assert (= var1275!1 ""))
(assert true)
(define-const var3199 String (append/672562846 var1275!1 "Not recognized: ")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Not recognized: ") 
(declare-const var1275!2 String)
(assert (= var1275!2 (str.++ var1275!1 "Not recognized: ")))
(assert true)
(define-const var2310 String (append/672562846 var3199 var2007)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3199!1 String)
(assert (= var3199!1 (str.++ var3199 var2007)))
(assert true)
(define-const var3646 String (toString/-2075883882 var2310)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/456963423 (cast-from-var1005-to-var697 var334) var3646 3)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate: void log(java.lang.String,int)>($r12, 3) 

(declare-const var334!1 var1005)
(declare-const var3646!1 String)
(declare-const var338 Int)
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/456963423=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String, int], void), cast-from-var1005-to-var697=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task)}
; {var1005=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate, var334=r0, var2007=r1, var2153=null_type, var2601=z0, var2562=org.xml.sax.SAXNotRecognizedException, var3479=$r8, var1275=$r9, var3199=$r10, var2310=$r11, var3646=$r12, var697=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var338=3}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate=var1005, r0=var334, r1=var2007, null_type=var2153, z0=var2601, org.xml.sax.SAXNotRecognizedException=var2562, $r8=var3479, $r9=var1275, $r10=var3199, $r11=var2310, $r12=var3646, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var697, 3=var338}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate;	r1 := @parameter0: java.lang.String;	z0 := @parameter1: boolean;	$r8 := @caughtexception;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Not recognized: ");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate: void log(java.lang.String,int)>($r12, 3);	goto [?= return];	return
;block_num 3