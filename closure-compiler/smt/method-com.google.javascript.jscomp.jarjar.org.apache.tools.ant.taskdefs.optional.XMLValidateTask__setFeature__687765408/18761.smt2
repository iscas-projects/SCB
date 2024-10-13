(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1337 0)
(declare-sort var1889 0)
(declare-sort var2876 0)
(declare-sort var1745 0)
(declare-sort var3683 0)
(declare-sort var269 0)
(declare-sort var2210 0)
(declare-sort var3624 0)
(declare-sort var1404 0)
(declare-sort var376 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-388390247 (String Bool) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/456963423 (var2876 String Int) void)
(declare-fun cast-from-var1337-to-var2876 (var1337) var2876)
(declare-fun xmlReader/-2132854784 (var1337) var1745)
(declare-fun var269-init () var269)
(declare-fun getClass/1258963082 (var2210) ClassObject)
(declare-fun cast-from-var1745-to-var2210 (var1745) var2210)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun getLocation/851674571 (var1404) var3624)
(declare-fun cast-from-var1337-to-var1404 (var1337) var1404)
(declare-fun <init>/1933136886 (var269 String var376 var3624) void)
(declare-fun cast-from-var3683-to-var376 (var3683) var376)
(declare-const null-var1337 var1337)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var3683 var3683)
(declare-const var982 var1337) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.XMLValidateTask 
(assert (not (= var982 null-var1337)))
(declare-const var2041 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2041 null-String)))
(declare-const var2978 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var2978 null-Bool)))
(define-const var445 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var445)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var445!1 String)
(assert (= var445!1 ""))
(assert true)
(define-const var3305 String (append/672562846 var445!1 "Setting feature ")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Setting feature ") 
(declare-const var445!2 String)
(assert (= var445!2 (str.++ var445!1 "Setting feature ")))
(assert true)
(define-const var1926 String (append/672562846 var3305 var2041)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var3305!1 String)
(assert (= var3305!1 (str.++ var3305 var2041)))
(assert true)
(define-const var3297 String (append/672562846 var1926 "=")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("=") 
(declare-const var1926!1 String)
(assert (= var1926!1 (str.++ var1926 "=")))
(assert true)
(define-const var3014 String (append/-388390247 var3297 var2978)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>(z0) 
(declare-const var3297!1 String)
(assert (str.prefixof var3297 var3297!1))
(assert true)
(define-const var734 String (toString/-2075883882 var3014)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/456963423 (cast-from-var1337-to-var2876 var982) var734 4)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.XMLValidateTask: void log(java.lang.String,int)>($r7, 4) 

(declare-const var982!1 var1337)
(declare-const var734!1 String)
(declare-const var1841 Int)
(define-const var2615 var1745 (xmlReader/-2132854784 var982!1)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.XMLValidateTask: org.xml.sax.XMLReader xmlReader> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2173 var3683) ; Statement: $r9 := @caughtexception 
(assert (not (= var2173 null-var3683)))
(define-const var2740 var269 var269-init) ; Statement: $r10 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var2532 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2532)) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2532!1 String)
(assert (= var2532!1 ""))
(assert true)
(define-const var1853 String (append/672562846 var2532!1 "Parser ")) ; Statement: $r15 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Parser ") 
(declare-const var2532!2 String)
(assert (= var2532!2 (str.++ var2532!1 "Parser ")))
(define-const var3277 var1745 (xmlReader/-2132854784 var982!1)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.XMLValidateTask: org.xml.sax.XMLReader xmlReader> 
(assert true)
(define-const var3281 ClassObject (getClass/1258963082 (cast-from-var1745-to-var2210 var3277))) ; Statement: $r13 = virtualinvoke $r12.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var1269 String (getName/-1958580599 var3281)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2577 String (append/672562846 var1853 var1269)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14) 
(declare-const var1853!1 String)
(assert (= var1853!1 (str.++ var1853 var1269)))
(assert true)
(define-const var2174 String (append/672562846 var2577 " doesn\u0027t support feature ")) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" doesn\'t support feature ") 
(declare-const var2577!1 String)
(assert (= var2577!1 (str.++ var2577 " doesn\u0027t support feature ")))
(assert true)
(define-const var2520 String (append/672562846 var2174 var2041)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var2174!1 String)
(assert (= var2174!1 (str.++ var2174 var2041)))
(assert true)
(define-const var2965 String (toString/-2075883882 var2520)) ; Statement: $r20 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var2667 var3624 (getLocation/851674571 (cast-from-var1337-to-var1404 var982!1))) ; Statement: $r19 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.XMLValidateTask: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>() 
(assert true)
;(assert (<init>/1933136886 var2740 var2965 (cast-from-var3683-to-var376 var2173) var2667)) ; Statement: specialinvoke $r10.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r20, $r9, $r19) 

(declare-const var2740!1 var269)
(declare-const var2965!1 String)
(declare-const var2173!1 var3683)
(declare-const var2667!1 var3624)
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-388390247=([java.lang.StringBuilder, boolean], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/456963423=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String, int], void), cast-from-var1337-to-var2876=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.XMLValidateTask], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task), xmlReader/-2132854784=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.XMLValidateTask], org.xml.sax.XMLReader), var269-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var1745-to-var2210=([org.xml.sax.XMLReader], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), getLocation/851674571=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location), cast-from-var1337-to-var1404=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.XMLValidateTask], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent), <init>/1933136886=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, java.lang.Throwable, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location], void), cast-from-var3683-to-var376=([org.xml.sax.SAXNotSupportedException], java.lang.Throwable)}
; {var1337=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.XMLValidateTask, var982=r0, var2041=r2, var1889=null_type, var2978=z0, var445=$r1, var3305=$r3, var1926=$r4, var3297=$r5, var3014=$r6, var734=$r7, var2876=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var1841=4, var1745=org.xml.sax.XMLReader, var2615=$r8, var3683=org.xml.sax.SAXNotSupportedException, var2173=$r9, var269=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var2740=$r10, var2532=$r11, var1853=$r15, var3277=$r12, var2210=java.lang.Object, var3281=$r13, var1269=$r14, var2577=$r16, var2174=$r17, var2520=$r18, var2965=$r20, var3624=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location, var1404=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var2667=$r19, var376=java.lang.Throwable}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.XMLValidateTask=var1337, r0=var982, r2=var2041, null_type=var1889, z0=var2978, $r1=var445, $r3=var3305, $r4=var1926, $r5=var3297, $r6=var3014, $r7=var734, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var2876, 4=var1841, org.xml.sax.XMLReader=var1745, $r8=var2615, org.xml.sax.SAXNotSupportedException=var3683, $r9=var2173, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var269, $r10=var2740, $r11=var2532, $r15=var1853, $r12=var3277, java.lang.Object=var2210, $r13=var3281, $r14=var1269, $r16=var2577, $r17=var2174, $r18=var2520, $r20=var2965, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location=var3624, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var1404, $r19=var2667, java.lang.Throwable=var376}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.XMLValidateTask;	r2 := @parameter0: java.lang.String;	z0 := @parameter1: boolean;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Setting feature ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("=");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>(z0);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.XMLValidateTask: void log(java.lang.String,int)>($r7, 4);	$r8 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.XMLValidateTask: org.xml.sax.XMLReader xmlReader>;	$r9 := @caughtexception;	$r10 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r11 = new java.lang.StringBuilder;	specialinvoke $r11.<java.lang.StringBuilder: void <init>()>();	$r15 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Parser ");	$r12 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.XMLValidateTask: org.xml.sax.XMLReader xmlReader>;	$r13 = virtualinvoke $r12.<java.lang.Object: java.lang.Class getClass()>();	$r14 = virtualinvoke $r13.<java.lang.Class: java.lang.String getName()>();	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" doesn\'t support feature ");	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r20 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	$r19 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.XMLValidateTask: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>();	specialinvoke $r10.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r20, $r9, $r19);	throw $r10
;block_num 2