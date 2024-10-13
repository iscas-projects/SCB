(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1271 0)
(declare-sort var868 0)
(declare-sort var3070 0)
(declare-sort var3835 0)
(declare-sort var738 0)
(declare-sort var126 0)
(declare-sort var3775 0)
(declare-sort var1082 0)
(declare-sort var2292 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3835_findTemplatePathSettingAssignmentsStart/1995614143 (String) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-fun var3835_normalizeToAbsolutePackagePath/353380571 (String) String)
(declare-fun var738-init () var738)
(declare-fun <init>/631687711 (var738 ClassObject String) void)
(declare-fun cast-from-var738-to-var126 (var738) var126)
(declare-fun var1082-init () var1082)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/108076498 (var1082 String var2292) void)
(declare-fun cast-from-var3775-to-var2292 (var3775) var2292)
(declare-const null-String String)
(declare-const null-var868 var868)
(declare-const null-ClassObject ClassObject)
(declare-const null-var3070 var3070)
(declare-const null-var3775 var3775)
(declare-const var2879 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2879 null-String)))
(declare-const var514 var868) ; Statement: r9 := @parameter1: freemarker.template.Configuration 
(assert (not (= var514 null-var868)))
(declare-const var2828 ClassObject) ; Statement: r18 := @parameter2: java.lang.Class 
(assert (not (= var2828 null-ClassObject)))
(declare-const var3612 var3070) ; Statement: r2 := @parameter3: javax.servlet.ServletContext 
(assert (not (= var3612 null-var3070)))
(define-const var2546 Int (var3835_findTemplatePathSettingAssignmentsStart/1995614143 var2879)) ; Statement: i0 = staticinvoke <freemarker.ext.servlet.InitParamParser: int findTemplatePathSettingAssignmentsStart(java.lang.String)>(r0) 
(define-const var548 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i18 = (int) -1 
 ; Statement: if i0 != $i18 goto $r43 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0) 
(assert (not (not (= var2546 var548)))) ; Negate: Cond: i0 != $i18  
(define-const var2865 String var2879) ; Statement: $r43 = r0 
 ; Statement: goto [?= $r36 = virtualinvoke $r43.<java.lang.String: java.lang.String trim()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var2336 String (trim/-847153721 var2865)) ; Statement: $r36 = virtualinvoke $r43.<java.lang.String: java.lang.String trim()>() 
(assert true)
(define-const var1947 Bool (startsWith/-1785782452 var2336 "class://")) ; Statement: $z0 = virtualinvoke $r36.<java.lang.String: boolean startsWith(java.lang.String)>("class://") 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke $r36.<java.lang.String: boolean startsWith(java.lang.String)>("classpath:") 
(assert (not (= (ite var1947 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1178 String "class://") ; Statement: $r34 = "class://" 
(assert true)
(define-const var2964 Int (length/-134980193 var1178)) ; Statement: $i14 = virtualinvoke $r34.<java.lang.String: int length()>() 
(assert (and true (and (>= var2964 0) (>= (str.len var2336) var2964))))
(define-const var3981 String (substring/850833817 var2336 var2964)) ; Statement: r44 = virtualinvoke $r36.<java.lang.String: java.lang.String substring(int)>($i14) 
(define-const var409 String (var3835_normalizeToAbsolutePackagePath/353380571 var3981)) ; Statement: r45 = staticinvoke <freemarker.ext.servlet.InitParamParser: java.lang.String normalizeToAbsolutePackagePath(java.lang.String)>(r44) 
(define-const var2841 var738 var738-init) ; Statement: $r53 = new freemarker.cache.ClassTemplateLoader 
(assert true)
;(assert (<init>/631687711 var2841 var2828 var409)) ; Statement: specialinvoke $r53.<freemarker.cache.ClassTemplateLoader: void <init>(java.lang.Class,java.lang.String)>(r18, r45) 

(declare-const var2841!1 var738)
(declare-const var2828!1 ClassObject)
(declare-const var409!1 String)
(define-const var743 var126 (cast-from-var738-to-var126 var2841!1)) ; Statement: r46 = $r53 
 ; Statement: goto [?= $i20 = (int) -1] 
(assert true) ; Non Conditional
(define-const var3327 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i20 = (int) -1 
 ; Statement: if i0 == $i20 goto return r46 
(assert (not (= var2546 var3327))) ; Negate: Cond: i0 == $i20  
(declare-const var2561 var3775) ; Statement: $r37 := @caughtexception 
(assert (not (= var2561 null-var3775)))
(define-const var1407 var1082 var1082-init) ; Statement: $r65 = new freemarker.ext.servlet.InitParamParser$TemplatePathParsingException 
(define-const var1749 String String-init) ; Statement: $r64 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1749)) ; Statement: specialinvoke $r64.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1749!1 String)
(assert (= var1749!1 ""))
(assert true)
(define-const var3513 String (append/672562846 var1749!1 "Failed to set properties in: ")) ; Statement: $r40 = virtualinvoke $r64.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to set properties in: ") 
(declare-const var1749!2 String)
(assert (= var1749!2 (str.++ var1749!1 "Failed to set properties in: ")))
(assert true)
(define-const var3732 String (append/672562846 var3513 var2879)) ; Statement: $r41 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var3513!1 String)
(assert (= var3513!1 (str.++ var3513 var2879)))
(assert true)
(define-const var2523 String (toString/-2075883882 var3732)) ; Statement: $r42 = virtualinvoke $r41.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/108076498 var1407 var2523 (cast-from-var3775-to-var2292 var2561))) ; Statement: specialinvoke $r65.<freemarker.ext.servlet.InitParamParser$TemplatePathParsingException: void <init>(java.lang.String,java.lang.Throwable)>($r42, $r37) 

(declare-const var1407!1 var1082)
(declare-const var2523!1 String)
(declare-const var2561!1 var3775)
 ; Statement: throw $r65 
(check-sat)
(get-model)
(get-unsat-core)
; {var3835_findTemplatePathSettingAssignmentsStart/1995614143=([java.lang.String], int), cast-from-Int-to-Int=([int], int), trim/-847153721=([java.lang.String], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), length/-134980193=([java.lang.String], int), substring/850833817=([java.lang.String, int], java.lang.String), var3835_normalizeToAbsolutePackagePath/353380571=([java.lang.String], java.lang.String), var738-init=([], freemarker.cache.ClassTemplateLoader), <init>/631687711=([freemarker.cache.ClassTemplateLoader, java.lang.Class, java.lang.String], void), cast-from-var738-to-var126=([freemarker.cache.ClassTemplateLoader], freemarker.cache.TemplateLoader), var1082-init=([], freemarker.ext.servlet.InitParamParser$TemplatePathParsingException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/108076498=([freemarker.ext.servlet.InitParamParser$TemplatePathParsingException, java.lang.String, java.lang.Throwable], void), cast-from-var3775-to-var2292=([java.lang.Exception], java.lang.Throwable)}
; {var2879=r0, var1271=null_type, var868=freemarker.template.Configuration, var514=r9, var2828=r18, var3070=javax.servlet.ServletContext, var3612=r2, var3835=freemarker.ext.servlet.InitParamParser, var2546=i0, var548=$i18, var2865=$r43, var2336=$r36, var1947=$z0, var1178=$r34, var2964=$i14, var3981=r44, var409=r45, var738=freemarker.cache.ClassTemplateLoader, var2841=$r53, var126=freemarker.cache.TemplateLoader, var743=r46, var3327=$i20, var3775=java.lang.Exception, var2561=$r37, var1082=freemarker.ext.servlet.InitParamParser$TemplatePathParsingException, var1407=$r65, var1749=$r64, var3513=$r40, var3732=$r41, var2523=$r42, var2292=java.lang.Throwable}
; {r0=var2879, null_type=var1271, freemarker.template.Configuration=var868, r9=var514, r18=var2828, javax.servlet.ServletContext=var3070, r2=var3612, freemarker.ext.servlet.InitParamParser=var3835, i0=var2546, $i18=var548, $r43=var2865, $r36=var2336, $z0=var1947, $r34=var1178, $i14=var2964, r44=var3981, r45=var409, freemarker.cache.ClassTemplateLoader=var738, $r53=var2841, freemarker.cache.TemplateLoader=var126, r46=var743, $i20=var3327, java.lang.Exception=var3775, $r37=var2561, freemarker.ext.servlet.InitParamParser$TemplatePathParsingException=var1082, $r65=var1407, $r64=var1749, $r40=var3513, $r41=var3732, $r42=var2523, java.lang.Throwable=var2292}
;seq <java.lang.String: java.lang.String trim()>;	<java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: java.lang.String trim()>": 1,"<java.lang.String: boolean startsWith(java.lang.String)>": 1,"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r9 := @parameter1: freemarker.template.Configuration;	r18 := @parameter2: java.lang.Class;	r2 := @parameter3: javax.servlet.ServletContext;	i0 = staticinvoke <freemarker.ext.servlet.InitParamParser: int findTemplatePathSettingAssignmentsStart(java.lang.String)>(r0);	$i18 = (int) -1;	if i0 != $i18 goto $r43 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0);	$r43 = r0;	goto [?= $r36 = virtualinvoke $r43.<java.lang.String: java.lang.String trim()>()];	$r36 = virtualinvoke $r43.<java.lang.String: java.lang.String trim()>();	$z0 = virtualinvoke $r36.<java.lang.String: boolean startsWith(java.lang.String)>("class://");	if $z0 == 0 goto $z1 = virtualinvoke $r36.<java.lang.String: boolean startsWith(java.lang.String)>("classpath:");	$r34 = "class://";	$i14 = virtualinvoke $r34.<java.lang.String: int length()>();	r44 = virtualinvoke $r36.<java.lang.String: java.lang.String substring(int)>($i14);	r45 = staticinvoke <freemarker.ext.servlet.InitParamParser: java.lang.String normalizeToAbsolutePackagePath(java.lang.String)>(r44);	$r53 = new freemarker.cache.ClassTemplateLoader;	specialinvoke $r53.<freemarker.cache.ClassTemplateLoader: void <init>(java.lang.Class,java.lang.String)>(r18, r45);	r46 = $r53;	goto [?= $i20 = (int) -1];	$i20 = (int) -1;	if i0 == $i20 goto return r46;	$r37 := @caughtexception;	$r65 = new freemarker.ext.servlet.InitParamParser$TemplatePathParsingException;	$r64 = new java.lang.StringBuilder;	specialinvoke $r64.<java.lang.StringBuilder: void <init>()>();	$r40 = virtualinvoke $r64.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to set properties in: ");	$r41 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r42 = virtualinvoke $r41.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r65.<freemarker.ext.servlet.InitParamParser$TemplatePathParsingException: void <init>(java.lang.String,java.lang.Throwable)>($r42, $r37);	throw $r65
;block_num 6