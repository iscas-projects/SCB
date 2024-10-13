(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var368 0)
(declare-sort var2645 0)
(declare-sort var1599 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getPath/-1385219261 (var2645) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/456963423 (var1599 String Int) void)
(declare-fun cast-from-var368-to-var1599 (var368) var1599)
(declare-const null-var368 var368)
(declare-const null-var2645 var2645)
(declare-const var460 var368) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend 
(assert (not (= var460 null-var368)))
(declare-const var3095 var2645) ; Statement: r2 := @parameter0: java.io.File 
(assert (not (= var3095 null-var2645)))
(define-const var323 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var323)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var323!1 String)
(assert (= var323!1 ""))
(assert true)
(define-const var400 String (append/672562846 var323!1 "    ")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("    ") 
(declare-const var323!2 String)
(assert (= var323!2 (str.++ var323!1 "    ")))
(assert true)
(define-const var2317 String (getPath/-1385219261 var3095)) ; Statement: $r3 = virtualinvoke r2.<java.io.File: java.lang.String getPath()>() 
(assert true)
(define-const var1904 String (append/672562846 var400 var2317)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var400!1 String)
(assert (= var400!1 (str.++ var400 var2317)))
(assert true)
(define-const var2117 String (toString/-2075883882 var1904)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/456963423 (cast-from-var368-to-var1599 var460) var2117 4)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend: void log(java.lang.String,int)>($r6, 4) 

(declare-const var460!1 var368)
(declare-const var2117!1 String)
(declare-const var945 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getPath/-1385219261=([java.io.File], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/456963423=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String, int], void), cast-from-var368-to-var1599=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task)}
; {var368=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend, var460=r0, var2645=java.io.File, var3095=r2, var323=$r1, var400=$r4, var2317=$r3, var1904=$r5, var2117=$r6, var1599=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var945=4}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend=var368, r0=var460, java.io.File=var2645, r2=var3095, $r1=var323, $r4=var400, $r3=var2317, $r5=var1904, $r6=var2117, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var1599, 4=var945}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend;	r2 := @parameter0: java.io.File;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("    ");	$r3 = virtualinvoke r2.<java.io.File: java.lang.String getPath()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.Depend: void log(java.lang.String,int)>($r6, 4);	return
;block_num 1