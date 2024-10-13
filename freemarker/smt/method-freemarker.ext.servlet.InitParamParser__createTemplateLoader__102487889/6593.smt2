(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2556 0)
(declare-sort var1610 0)
(declare-sort var627 0)
(declare-sort var3742 0)
(declare-sort var3872 0)
(declare-sort var3012 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3742_findTemplatePathSettingAssignmentsStart/1995614143 (String) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-fun var3742_normalizeToAbsolutePackagePath/353380571 (String) String)
(declare-fun var3872-init () var3872)
(declare-fun <init>/631687711 (var3872 ClassObject String) void)
(declare-fun cast-from-var3872-to-var3012 (var3872) var3012)
(declare-const null-String String)
(declare-const null-var1610 var1610)
(declare-const null-ClassObject ClassObject)
(declare-const null-var627 var627)
(declare-const var2392 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2392 null-String)))
(declare-const var2398 var1610) ; Statement: r9 := @parameter1: freemarker.template.Configuration 
(assert (not (= var2398 null-var1610)))
(declare-const var1456 ClassObject) ; Statement: r18 := @parameter2: java.lang.Class 
(assert (not (= var1456 null-ClassObject)))
(declare-const var1086 var627) ; Statement: r2 := @parameter3: javax.servlet.ServletContext 
(assert (not (= var1086 null-var627)))
(define-const var3014 Int (var3742_findTemplatePathSettingAssignmentsStart/1995614143 var2392)) ; Statement: i0 = staticinvoke <freemarker.ext.servlet.InitParamParser: int findTemplatePathSettingAssignmentsStart(java.lang.String)>(r0) 
(define-const var2498 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i18 = (int) -1 
 ; Statement: if i0 != $i18 goto $r43 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0) 
(assert (not (= var3014 var2498))) ; Cond: i0 != $i18 
(assert (and true (and (>= 0 0) (>= (str.len var2392) var3014) (>= var3014 0))))
(define-const var2814 String (substring/-1240304868 var2392 0 var3014)) ; Statement: $r43 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0) 
(assert true) ; Non Conditional
(assert true)
(define-const var3705 String (trim/-847153721 var2814)) ; Statement: $r36 = virtualinvoke $r43.<java.lang.String: java.lang.String trim()>() 
(assert true)
(define-const var1694 Bool (startsWith/-1785782452 var3705 "class://")) ; Statement: $z0 = virtualinvoke $r36.<java.lang.String: boolean startsWith(java.lang.String)>("class://") 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke $r36.<java.lang.String: boolean startsWith(java.lang.String)>("classpath:") 
(assert (not (= (ite var1694 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var563 String "class://") ; Statement: $r34 = "class://" 
(assert true)
(define-const var974 Int (length/-134980193 var563)) ; Statement: $i14 = virtualinvoke $r34.<java.lang.String: int length()>() 
(assert (and true (and (>= var974 0) (>= (str.len var3705) var974))))
(define-const var2834 String (substring/850833817 var3705 var974)) ; Statement: r44 = virtualinvoke $r36.<java.lang.String: java.lang.String substring(int)>($i14) 
(define-const var513 String (var3742_normalizeToAbsolutePackagePath/353380571 var2834)) ; Statement: r45 = staticinvoke <freemarker.ext.servlet.InitParamParser: java.lang.String normalizeToAbsolutePackagePath(java.lang.String)>(r44) 
(define-const var2995 var3872 var3872-init) ; Statement: $r53 = new freemarker.cache.ClassTemplateLoader 
(assert true)
;(assert (<init>/631687711 var2995 var1456 var513)) ; Statement: specialinvoke $r53.<freemarker.cache.ClassTemplateLoader: void <init>(java.lang.Class,java.lang.String)>(r18, r45) 

(declare-const var2995!1 var3872)
(declare-const var1456!1 ClassObject)
(declare-const var513!1 String)
(define-const var941 var3012 (cast-from-var3872-to-var3012 var2995!1)) ; Statement: r46 = $r53 
 ; Statement: goto [?= $i20 = (int) -1] 
(assert true) ; Non Conditional
(define-const var3423 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i20 = (int) -1 
 ; Statement: if i0 == $i20 goto return r46 
(assert (= var3014 var3423)) ; Cond: i0 == $i20 
 ; Statement: return r46 
(check-sat)
(get-model)
(get-unsat-core)
; {var3742_findTemplatePathSettingAssignmentsStart/1995614143=([java.lang.String], int), cast-from-Int-to-Int=([int], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), trim/-847153721=([java.lang.String], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), length/-134980193=([java.lang.String], int), substring/850833817=([java.lang.String, int], java.lang.String), var3742_normalizeToAbsolutePackagePath/353380571=([java.lang.String], java.lang.String), var3872-init=([], freemarker.cache.ClassTemplateLoader), <init>/631687711=([freemarker.cache.ClassTemplateLoader, java.lang.Class, java.lang.String], void), cast-from-var3872-to-var3012=([freemarker.cache.ClassTemplateLoader], freemarker.cache.TemplateLoader)}
; {var2392=r0, var2556=null_type, var1610=freemarker.template.Configuration, var2398=r9, var1456=r18, var627=javax.servlet.ServletContext, var1086=r2, var3742=freemarker.ext.servlet.InitParamParser, var3014=i0, var2498=$i18, var2814=$r43, var3705=$r36, var1694=$z0, var563=$r34, var974=$i14, var2834=r44, var513=r45, var3872=freemarker.cache.ClassTemplateLoader, var2995=$r53, var3012=freemarker.cache.TemplateLoader, var941=r46, var3423=$i20}
; {r0=var2392, null_type=var2556, freemarker.template.Configuration=var1610, r9=var2398, r18=var1456, javax.servlet.ServletContext=var627, r2=var1086, freemarker.ext.servlet.InitParamParser=var3742, i0=var3014, $i18=var2498, $r43=var2814, $r36=var3705, $z0=var1694, $r34=var563, $i14=var974, r44=var2834, r45=var513, freemarker.cache.ClassTemplateLoader=var3872, $r53=var2995, freemarker.cache.TemplateLoader=var3012, r46=var941, $i20=var3423}
;seq <java.lang.String: java.lang.String substring(int,int)>;	<java.lang.String: java.lang.String trim()>;	<java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.String: java.lang.String trim()>": 1,"<java.lang.String: boolean startsWith(java.lang.String)>": 1,"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r9 := @parameter1: freemarker.template.Configuration;	r18 := @parameter2: java.lang.Class;	r2 := @parameter3: javax.servlet.ServletContext;	i0 = staticinvoke <freemarker.ext.servlet.InitParamParser: int findTemplatePathSettingAssignmentsStart(java.lang.String)>(r0);	$i18 = (int) -1;	if i0 != $i18 goto $r43 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0);	$r43 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0);	$r36 = virtualinvoke $r43.<java.lang.String: java.lang.String trim()>();	$z0 = virtualinvoke $r36.<java.lang.String: boolean startsWith(java.lang.String)>("class://");	if $z0 == 0 goto $z1 = virtualinvoke $r36.<java.lang.String: boolean startsWith(java.lang.String)>("classpath:");	$r34 = "class://";	$i14 = virtualinvoke $r34.<java.lang.String: int length()>();	r44 = virtualinvoke $r36.<java.lang.String: java.lang.String substring(int)>($i14);	r45 = staticinvoke <freemarker.ext.servlet.InitParamParser: java.lang.String normalizeToAbsolutePackagePath(java.lang.String)>(r44);	$r53 = new freemarker.cache.ClassTemplateLoader;	specialinvoke $r53.<freemarker.cache.ClassTemplateLoader: void <init>(java.lang.Class,java.lang.String)>(r18, r45);	r46 = $r53;	goto [?= $i20 = (int) -1];	$i20 = (int) -1;	if i0 == $i20 goto return r46;	return r46
;block_num 6