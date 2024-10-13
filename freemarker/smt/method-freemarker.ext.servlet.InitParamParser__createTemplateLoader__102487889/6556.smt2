(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2326 0)
(declare-sort var2471 0)
(declare-sort var1207 0)
(declare-sort var1628 0)
(declare-sort var3834 0)
(declare-sort var294 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1628_findTemplatePathSettingAssignmentsStart/1995614143 (String) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-fun var1628_normalizeToAbsolutePackagePath/353380571 (String) String)
(declare-fun var3834-init () var3834)
(declare-fun <init>/631687711 (var3834 ClassObject String) void)
(declare-fun cast-from-var3834-to-var294 (var3834) var294)
(declare-const null-String String)
(declare-const null-var2471 var2471)
(declare-const null-ClassObject ClassObject)
(declare-const null-var1207 var1207)
(declare-const var495 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var495 null-String)))
(declare-const var3261 var2471) ; Statement: r9 := @parameter1: freemarker.template.Configuration 
(assert (not (= var3261 null-var2471)))
(declare-const var2472 ClassObject) ; Statement: r18 := @parameter2: java.lang.Class 
(assert (not (= var2472 null-ClassObject)))
(declare-const var833 var1207) ; Statement: r2 := @parameter3: javax.servlet.ServletContext 
(assert (not (= var833 null-var1207)))
(define-const var3084 Int (var1628_findTemplatePathSettingAssignmentsStart/1995614143 var495)) ; Statement: i0 = staticinvoke <freemarker.ext.servlet.InitParamParser: int findTemplatePathSettingAssignmentsStart(java.lang.String)>(r0) 
(define-const var15 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i18 = (int) -1 
 ; Statement: if i0 != $i18 goto $r43 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0) 
(assert (not (not (= var3084 var15)))) ; Negate: Cond: i0 != $i18  
(define-const var377 String var495) ; Statement: $r43 = r0 
 ; Statement: goto [?= $r36 = virtualinvoke $r43.<java.lang.String: java.lang.String trim()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var92 String (trim/-847153721 var377)) ; Statement: $r36 = virtualinvoke $r43.<java.lang.String: java.lang.String trim()>() 
(assert true)
(define-const var1862 Bool (startsWith/-1785782452 var92 "class://")) ; Statement: $z0 = virtualinvoke $r36.<java.lang.String: boolean startsWith(java.lang.String)>("class://") 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke $r36.<java.lang.String: boolean startsWith(java.lang.String)>("classpath:") 
(assert (not (= (ite var1862 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3332 String "class://") ; Statement: $r34 = "class://" 
(assert true)
(define-const var3598 Int (length/-134980193 var3332)) ; Statement: $i14 = virtualinvoke $r34.<java.lang.String: int length()>() 
(assert (and true (and (>= var3598 0) (>= (str.len var92) var3598))))
(define-const var924 String (substring/850833817 var92 var3598)) ; Statement: r44 = virtualinvoke $r36.<java.lang.String: java.lang.String substring(int)>($i14) 
(define-const var97 String (var1628_normalizeToAbsolutePackagePath/353380571 var924)) ; Statement: r45 = staticinvoke <freemarker.ext.servlet.InitParamParser: java.lang.String normalizeToAbsolutePackagePath(java.lang.String)>(r44) 
(define-const var56 var3834 var3834-init) ; Statement: $r53 = new freemarker.cache.ClassTemplateLoader 
(assert true)
;(assert (<init>/631687711 var56 var2472 var97)) ; Statement: specialinvoke $r53.<freemarker.cache.ClassTemplateLoader: void <init>(java.lang.Class,java.lang.String)>(r18, r45) 

(declare-const var56!1 var3834)
(declare-const var2472!1 ClassObject)
(declare-const var97!1 String)
(define-const var2975 var294 (cast-from-var3834-to-var294 var56!1)) ; Statement: r46 = $r53 
 ; Statement: goto [?= $i20 = (int) -1] 
(assert true) ; Non Conditional
(define-const var935 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i20 = (int) -1 
 ; Statement: if i0 == $i20 goto return r46 
(assert (= var3084 var935)) ; Cond: i0 == $i20 
 ; Statement: return r46 
(check-sat)
(get-model)
(get-unsat-core)
; {var1628_findTemplatePathSettingAssignmentsStart/1995614143=([java.lang.String], int), cast-from-Int-to-Int=([int], int), trim/-847153721=([java.lang.String], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), length/-134980193=([java.lang.String], int), substring/850833817=([java.lang.String, int], java.lang.String), var1628_normalizeToAbsolutePackagePath/353380571=([java.lang.String], java.lang.String), var3834-init=([], freemarker.cache.ClassTemplateLoader), <init>/631687711=([freemarker.cache.ClassTemplateLoader, java.lang.Class, java.lang.String], void), cast-from-var3834-to-var294=([freemarker.cache.ClassTemplateLoader], freemarker.cache.TemplateLoader)}
; {var495=r0, var2326=null_type, var2471=freemarker.template.Configuration, var3261=r9, var2472=r18, var1207=javax.servlet.ServletContext, var833=r2, var1628=freemarker.ext.servlet.InitParamParser, var3084=i0, var15=$i18, var377=$r43, var92=$r36, var1862=$z0, var3332=$r34, var3598=$i14, var924=r44, var97=r45, var3834=freemarker.cache.ClassTemplateLoader, var56=$r53, var294=freemarker.cache.TemplateLoader, var2975=r46, var935=$i20}
; {r0=var495, null_type=var2326, freemarker.template.Configuration=var2471, r9=var3261, r18=var2472, javax.servlet.ServletContext=var1207, r2=var833, freemarker.ext.servlet.InitParamParser=var1628, i0=var3084, $i18=var15, $r43=var377, $r36=var92, $z0=var1862, $r34=var3332, $i14=var3598, r44=var924, r45=var97, freemarker.cache.ClassTemplateLoader=var3834, $r53=var56, freemarker.cache.TemplateLoader=var294, r46=var2975, $i20=var935}
;seq <java.lang.String: java.lang.String trim()>;	<java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: java.lang.String trim()>": 1,"<java.lang.String: boolean startsWith(java.lang.String)>": 1,"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r9 := @parameter1: freemarker.template.Configuration;	r18 := @parameter2: java.lang.Class;	r2 := @parameter3: javax.servlet.ServletContext;	i0 = staticinvoke <freemarker.ext.servlet.InitParamParser: int findTemplatePathSettingAssignmentsStart(java.lang.String)>(r0);	$i18 = (int) -1;	if i0 != $i18 goto $r43 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0);	$r43 = r0;	goto [?= $r36 = virtualinvoke $r43.<java.lang.String: java.lang.String trim()>()];	$r36 = virtualinvoke $r43.<java.lang.String: java.lang.String trim()>();	$z0 = virtualinvoke $r36.<java.lang.String: boolean startsWith(java.lang.String)>("class://");	if $z0 == 0 goto $z1 = virtualinvoke $r36.<java.lang.String: boolean startsWith(java.lang.String)>("classpath:");	$r34 = "class://";	$i14 = virtualinvoke $r34.<java.lang.String: int length()>();	r44 = virtualinvoke $r36.<java.lang.String: java.lang.String substring(int)>($i14);	r45 = staticinvoke <freemarker.ext.servlet.InitParamParser: java.lang.String normalizeToAbsolutePackagePath(java.lang.String)>(r44);	$r53 = new freemarker.cache.ClassTemplateLoader;	specialinvoke $r53.<freemarker.cache.ClassTemplateLoader: void <init>(java.lang.Class,java.lang.String)>(r18, r45);	r46 = $r53;	goto [?= $i20 = (int) -1];	$i20 = (int) -1;	if i0 == $i20 goto return r46;	return r46
;block_num 6