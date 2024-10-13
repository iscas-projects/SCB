(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1400 0)
(declare-sort var986 0)
(declare-sort var833 0)
(declare-sort var55 0)
(declare-sort var619 0)
(declare-sort var1408 0)
(declare-sort var423 0)
(declare-sort var922 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getRmic/971927745 (var833) var986)
(declare-fun cast-from-var1400-to-var833 (var1400) var833)
(declare-fun log/456963423 (var55 String Int) void)
(declare-fun cast-from-var986-to-var55 (var986) var55)
(declare-fun setupRmicCommand/-1297756785 (var833) var619)
(declare-fun var1400_getRmicClass/-525639669 () ClassObject)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1408-init () var1408)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getLocation/851674571 (var922) var423)
(declare-fun cast-from-var986-to-var922 (var986) var922)
(declare-fun <init>/-469549130 (var1408 String var423) void)
(declare-const null-var1400 var1400)
(declare-const null-ClassObject ClassObject)
(declare-const var1400-RMIC_CLASSNAMES (Array Int String))
(declare-const var2640 var1400) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.rmic.KaffeRmic 
(assert (not (= var2640 null-var1400)))
(assert true)
(define-const var3198 var986 (getRmic/971927745 (cast-from-var1400-to-var833 var2640))) ; Statement: $r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.rmic.KaffeRmic: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Rmic getRmic()>() 
(assert true)
;(assert (log/456963423 (cast-from-var986-to-var55 var3198) "Using Kaffe rmic" 3)) ; Statement: virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Rmic: void log(java.lang.String,int)>("Using Kaffe rmic", 3) 

(declare-const var3198!1 var986)
(declare-const var829 String)
(declare-const var1886 Int)
(assert true)
(define-const var3498 var619 (setupRmicCommand/-1297756785 (cast-from-var1400-to-var833 var2640))) ; Statement: r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.rmic.KaffeRmic: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline setupRmicCommand()>() 
(define-const var1237 ClassObject var1400_getRmicClass/-525639669) ; Statement: r3 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.rmic.KaffeRmic: java.lang.Class getRmicClass()>() 
 ; Statement: if r3 != null goto $r4 = virtualinvoke r3.<java.lang.Class: java.lang.String getName()>() 
(assert (not (not (= var1237 null-ClassObject)))) ; Negate: Cond: r3 != null  
(define-const var3378 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var3378 "Cannot use Kaffe rmic, as it is not available.  None of ")) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>(java.lang.String)>("Cannot use Kaffe rmic, as it is not available.  None of ") 
(declare-const var3378!1 String)
(assert (= var3378!1 "Cannot use Kaffe rmic, as it is not available.  None of "))
(define-const var1585 (Array Int String) var1400-RMIC_CLASSNAMES) ; Statement: r15 = <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.rmic.KaffeRmic: java.lang.String[] RMIC_CLASSNAMES> 
(define-const var2284 Int (getLength-Arr-String-1 var1585)) ; Statement: i3 = lengthof r15 
(define-const var242 Int 0) ; Statement: i5 = 0 
(assert true) ; Non Conditional
 ; Statement: if i5 >= i3 goto virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" have been found. A common solution is to set the environment variable JAVA_HOME or CLASSPATH.") 
(assert (>= var242 var2284)) ; Cond: i5 >= i3 
(assert true)
;(assert (append/672562846 var3378!1 " have been found. A common solution is to set the environment variable JAVA_HOME or CLASSPATH.")) ; Statement: virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" have been found. A common solution is to set the environment variable JAVA_HOME or CLASSPATH.") 
(declare-const var3378!2 String)
(assert (= var3378!2 (str.++ var3378!1 " have been found. A common solution is to set the environment variable JAVA_HOME or CLASSPATH.")))
(define-const var3279 var1408 var1408-init) ; Statement: $r16 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(assert true)
(define-const var2277 String (toString/-2075883882 var3378!2)) ; Statement: $r19 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var2059 var986 (getRmic/971927745 (cast-from-var1400-to-var833 var2640))) ; Statement: $r17 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.rmic.KaffeRmic: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Rmic getRmic()>() 
(assert true)
(define-const var3350 var423 (getLocation/851674571 (cast-from-var986-to-var922 var2059))) ; Statement: $r18 = virtualinvoke $r17.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Rmic: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>() 
(assert true)
;(assert (<init>/-469549130 var3279 var2277 var3350)) ; Statement: specialinvoke $r16.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r19, $r18) 

(declare-const var3279!1 var1408)
(declare-const var2277!1 String)
(declare-const var3350!1 var423)
 ; Statement: throw $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {getRmic/971927745=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.rmic.DefaultRmicAdapter], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Rmic), cast-from-var1400-to-var833=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.rmic.KaffeRmic], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.rmic.DefaultRmicAdapter), log/456963423=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String, int], void), cast-from-var986-to-var55=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Rmic], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task), setupRmicCommand/-1297756785=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.rmic.DefaultRmicAdapter], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline), var1400_getRmicClass/-525639669=([], java.lang.Class), String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), getLength-Arr-String-1=([java.lang.String[]], int), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1408-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getLocation/851674571=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location), cast-from-var986-to-var922=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Rmic], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent), <init>/-469549130=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location], void)}
; {var1400=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.rmic.KaffeRmic, var2640=r0, var986=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Rmic, var833=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.rmic.DefaultRmicAdapter, var3198=$r1, var55=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var829="Using Kaffe rmic", var1886=3, var619=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline, var3498=r2, var1237=r3, var3378=$r14, var1585=r15, var2284=i3, var242=i5, var1408=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var3279=$r16, var2277=$r19, var2059=$r17, var423=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location, var922=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var3350=$r18}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.rmic.KaffeRmic=var1400, r0=var2640, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Rmic=var986, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.rmic.DefaultRmicAdapter=var833, $r1=var3198, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var55, "Using Kaffe rmic"=var829, 3=var1886, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline=var619, r2=var3498, r3=var1237, $r14=var3378, r15=var1585, i3=var2284, i5=var242, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var1408, $r16=var3279, $r19=var2277, $r17=var2059, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location=var423, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var922, $r18=var3350}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.rmic.KaffeRmic;	$r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.rmic.KaffeRmic: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Rmic getRmic()>();	virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Rmic: void log(java.lang.String,int)>("Using Kaffe rmic", 3);	r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.rmic.KaffeRmic: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline setupRmicCommand()>();	r3 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.rmic.KaffeRmic: java.lang.Class getRmicClass()>();	if r3 != null goto $r4 = virtualinvoke r3.<java.lang.Class: java.lang.String getName()>();	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>(java.lang.String)>("Cannot use Kaffe rmic, as it is not available.  None of ");	r15 = <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.rmic.KaffeRmic: java.lang.String[] RMIC_CLASSNAMES>;	i3 = lengthof r15;	i5 = 0;	if i5 >= i3 goto virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" have been found. A common solution is to set the environment variable JAVA_HOME or CLASSPATH.");	virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" have been found. A common solution is to set the environment variable JAVA_HOME or CLASSPATH.");	$r16 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r19 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	$r17 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.rmic.KaffeRmic: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Rmic getRmic()>();	$r18 = virtualinvoke $r17.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Rmic: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>();	specialinvoke $r16.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r19, $r18);	throw $r16
;block_num 4