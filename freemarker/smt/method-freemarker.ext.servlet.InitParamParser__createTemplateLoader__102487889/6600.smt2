(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var537 0)
(declare-sort var1524 0)
(declare-sort var2563 0)
(declare-sort var3935 0)
(declare-sort var2090 0)
(declare-sort var2000 0)
(declare-sort var2898 0)
(declare-sort var3249 0)
(declare-sort var1185 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3935_findTemplatePathSettingAssignmentsStart/1995614143 (String) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-fun var3935_normalizeToAbsolutePackagePath/353380571 (String) String)
(declare-fun var2090-init () var2090)
(declare-fun <init>/631687711 (var2090 ClassObject String) void)
(declare-fun cast-from-var2090-to-var2000 (var2090) var2000)
(declare-fun var3249-init () var3249)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/108076498 (var3249 String var1185) void)
(declare-fun cast-from-var2898-to-var1185 (var2898) var1185)
(declare-const null-String String)
(declare-const null-var1524 var1524)
(declare-const null-ClassObject ClassObject)
(declare-const null-var2563 var2563)
(declare-const null-var2898 var2898)
(declare-const var3869 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3869 null-String)))
(declare-const var1934 var1524) ; Statement: r9 := @parameter1: freemarker.template.Configuration 
(assert (not (= var1934 null-var1524)))
(declare-const var2270 ClassObject) ; Statement: r18 := @parameter2: java.lang.Class 
(assert (not (= var2270 null-ClassObject)))
(declare-const var3942 var2563) ; Statement: r2 := @parameter3: javax.servlet.ServletContext 
(assert (not (= var3942 null-var2563)))
(define-const var2556 Int (var3935_findTemplatePathSettingAssignmentsStart/1995614143 var3869)) ; Statement: i0 = staticinvoke <freemarker.ext.servlet.InitParamParser: int findTemplatePathSettingAssignmentsStart(java.lang.String)>(r0) 
(define-const var3905 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i18 = (int) -1 
 ; Statement: if i0 != $i18 goto $r43 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0) 
(assert (not (= var2556 var3905))) ; Cond: i0 != $i18 
(assert (and true (and (>= 0 0) (>= (str.len var3869) var2556) (>= var2556 0))))
(define-const var2884 String (substring/-1240304868 var3869 0 var2556)) ; Statement: $r43 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0) 
(assert true) ; Non Conditional
(assert true)
(define-const var2646 String (trim/-847153721 var2884)) ; Statement: $r36 = virtualinvoke $r43.<java.lang.String: java.lang.String trim()>() 
(assert true)
(define-const var2834 Bool (startsWith/-1785782452 var2646 "class://")) ; Statement: $z0 = virtualinvoke $r36.<java.lang.String: boolean startsWith(java.lang.String)>("class://") 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke $r36.<java.lang.String: boolean startsWith(java.lang.String)>("classpath:") 
(assert (not (= (ite var2834 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2940 String "class://") ; Statement: $r34 = "class://" 
(assert true)
(define-const var3680 Int (length/-134980193 var2940)) ; Statement: $i14 = virtualinvoke $r34.<java.lang.String: int length()>() 
(assert (and true (and (>= var3680 0) (>= (str.len var2646) var3680))))
(define-const var3871 String (substring/850833817 var2646 var3680)) ; Statement: r44 = virtualinvoke $r36.<java.lang.String: java.lang.String substring(int)>($i14) 
(define-const var1374 String (var3935_normalizeToAbsolutePackagePath/353380571 var3871)) ; Statement: r45 = staticinvoke <freemarker.ext.servlet.InitParamParser: java.lang.String normalizeToAbsolutePackagePath(java.lang.String)>(r44) 
(define-const var1396 var2090 var2090-init) ; Statement: $r53 = new freemarker.cache.ClassTemplateLoader 
(assert true)
;(assert (<init>/631687711 var1396 var2270 var1374)) ; Statement: specialinvoke $r53.<freemarker.cache.ClassTemplateLoader: void <init>(java.lang.Class,java.lang.String)>(r18, r45) 

(declare-const var1396!1 var2090)
(declare-const var2270!1 ClassObject)
(declare-const var1374!1 String)
(define-const var1969 var2000 (cast-from-var2090-to-var2000 var1396!1)) ; Statement: r46 = $r53 
 ; Statement: goto [?= $i20 = (int) -1] 
(assert true) ; Non Conditional
(define-const var2392 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i20 = (int) -1 
 ; Statement: if i0 == $i20 goto return r46 
(assert (not (= var2556 var2392))) ; Negate: Cond: i0 == $i20  
(declare-const var1244 var2898) ; Statement: $r37 := @caughtexception 
(assert (not (= var1244 null-var2898)))
(define-const var2650 var3249 var3249-init) ; Statement: $r65 = new freemarker.ext.servlet.InitParamParser$TemplatePathParsingException 
(define-const var3415 String String-init) ; Statement: $r64 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3415)) ; Statement: specialinvoke $r64.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3415!1 String)
(assert (= var3415!1 ""))
(assert true)
(define-const var316 String (append/672562846 var3415!1 "Failed to set properties in: ")) ; Statement: $r40 = virtualinvoke $r64.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to set properties in: ") 
(declare-const var3415!2 String)
(assert (= var3415!2 (str.++ var3415!1 "Failed to set properties in: ")))
(assert true)
(define-const var1477 String (append/672562846 var316 var3869)) ; Statement: $r41 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var316!1 String)
(assert (= var316!1 (str.++ var316 var3869)))
(assert true)
(define-const var3911 String (toString/-2075883882 var1477)) ; Statement: $r42 = virtualinvoke $r41.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/108076498 var2650 var3911 (cast-from-var2898-to-var1185 var1244))) ; Statement: specialinvoke $r65.<freemarker.ext.servlet.InitParamParser$TemplatePathParsingException: void <init>(java.lang.String,java.lang.Throwable)>($r42, $r37) 

(declare-const var2650!1 var3249)
(declare-const var3911!1 String)
(declare-const var1244!1 var2898)
 ; Statement: throw $r65 
(check-sat)
(get-model)
(get-unsat-core)
; {var3935_findTemplatePathSettingAssignmentsStart/1995614143=([java.lang.String], int), cast-from-Int-to-Int=([int], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), trim/-847153721=([java.lang.String], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), length/-134980193=([java.lang.String], int), substring/850833817=([java.lang.String, int], java.lang.String), var3935_normalizeToAbsolutePackagePath/353380571=([java.lang.String], java.lang.String), var2090-init=([], freemarker.cache.ClassTemplateLoader), <init>/631687711=([freemarker.cache.ClassTemplateLoader, java.lang.Class, java.lang.String], void), cast-from-var2090-to-var2000=([freemarker.cache.ClassTemplateLoader], freemarker.cache.TemplateLoader), var3249-init=([], freemarker.ext.servlet.InitParamParser$TemplatePathParsingException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/108076498=([freemarker.ext.servlet.InitParamParser$TemplatePathParsingException, java.lang.String, java.lang.Throwable], void), cast-from-var2898-to-var1185=([java.lang.Exception], java.lang.Throwable)}
; {var3869=r0, var537=null_type, var1524=freemarker.template.Configuration, var1934=r9, var2270=r18, var2563=javax.servlet.ServletContext, var3942=r2, var3935=freemarker.ext.servlet.InitParamParser, var2556=i0, var3905=$i18, var2884=$r43, var2646=$r36, var2834=$z0, var2940=$r34, var3680=$i14, var3871=r44, var1374=r45, var2090=freemarker.cache.ClassTemplateLoader, var1396=$r53, var2000=freemarker.cache.TemplateLoader, var1969=r46, var2392=$i20, var2898=java.lang.Exception, var1244=$r37, var3249=freemarker.ext.servlet.InitParamParser$TemplatePathParsingException, var2650=$r65, var3415=$r64, var316=$r40, var1477=$r41, var3911=$r42, var1185=java.lang.Throwable}
; {r0=var3869, null_type=var537, freemarker.template.Configuration=var1524, r9=var1934, r18=var2270, javax.servlet.ServletContext=var2563, r2=var3942, freemarker.ext.servlet.InitParamParser=var3935, i0=var2556, $i18=var3905, $r43=var2884, $r36=var2646, $z0=var2834, $r34=var2940, $i14=var3680, r44=var3871, r45=var1374, freemarker.cache.ClassTemplateLoader=var2090, $r53=var1396, freemarker.cache.TemplateLoader=var2000, r46=var1969, $i20=var2392, java.lang.Exception=var2898, $r37=var1244, freemarker.ext.servlet.InitParamParser$TemplatePathParsingException=var3249, $r65=var2650, $r64=var3415, $r40=var316, $r41=var1477, $r42=var3911, java.lang.Throwable=var1185}
;seq <java.lang.String: java.lang.String substring(int,int)>;	<java.lang.String: java.lang.String trim()>;	<java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.String: java.lang.String trim()>": 1,"<java.lang.String: boolean startsWith(java.lang.String)>": 1,"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r9 := @parameter1: freemarker.template.Configuration;	r18 := @parameter2: java.lang.Class;	r2 := @parameter3: javax.servlet.ServletContext;	i0 = staticinvoke <freemarker.ext.servlet.InitParamParser: int findTemplatePathSettingAssignmentsStart(java.lang.String)>(r0);	$i18 = (int) -1;	if i0 != $i18 goto $r43 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0);	$r43 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0);	$r36 = virtualinvoke $r43.<java.lang.String: java.lang.String trim()>();	$z0 = virtualinvoke $r36.<java.lang.String: boolean startsWith(java.lang.String)>("class://");	if $z0 == 0 goto $z1 = virtualinvoke $r36.<java.lang.String: boolean startsWith(java.lang.String)>("classpath:");	$r34 = "class://";	$i14 = virtualinvoke $r34.<java.lang.String: int length()>();	r44 = virtualinvoke $r36.<java.lang.String: java.lang.String substring(int)>($i14);	r45 = staticinvoke <freemarker.ext.servlet.InitParamParser: java.lang.String normalizeToAbsolutePackagePath(java.lang.String)>(r44);	$r53 = new freemarker.cache.ClassTemplateLoader;	specialinvoke $r53.<freemarker.cache.ClassTemplateLoader: void <init>(java.lang.Class,java.lang.String)>(r18, r45);	r46 = $r53;	goto [?= $i20 = (int) -1];	$i20 = (int) -1;	if i0 == $i20 goto return r46;	$r37 := @caughtexception;	$r65 = new freemarker.ext.servlet.InitParamParser$TemplatePathParsingException;	$r64 = new java.lang.StringBuilder;	specialinvoke $r64.<java.lang.StringBuilder: void <init>()>();	$r40 = virtualinvoke $r64.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to set properties in: ");	$r41 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r42 = virtualinvoke $r41.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r65.<freemarker.ext.servlet.InitParamParser$TemplatePathParsingException: void <init>(java.lang.String,java.lang.Throwable)>($r42, $r37);	throw $r65
;block_num 6