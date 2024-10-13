(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1344 0)
(declare-sort var651 0)
(declare-sort var2659 0)
(declare-sort var0 0)
(declare-sort var2993 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var0) void)
(declare-fun cast-from-var1344-to-var0 (var1344) var0)
(declare-fun attemptFileAccess/-1498075858 (var1344) Bool)
(declare-fun var2993_check/-951860758 (String var0) void)
(declare-fun cast-from-var651-to-var0 (var651) var0)
(declare-fun cast-from-String-to-var0 (String) var0)
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun subdirPath/-1498075858 (var1344) String)
(declare-fun servletContext/-1498075858 (var1344) var651)
(declare-const null-var1344 var1344)
(declare-const null-var651 var651)
(declare-const null-String String)
(declare-const var3790 var1344) ; Statement: r0 := @this: freemarker.cache.WebappTemplateLoader 
(assert (not (= var3790 null-var1344)))
(declare-const var3847 var651) ; Statement: r1 := @parameter0: javax.servlet.ServletContext 
(assert (not (= var3847 null-var651)))
(declare-const var1410 String) ; Statement: r8 := @parameter1: java.lang.String 
(assert (not (= var1410 null-String)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var1344-to-var0 var3790))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var3790!1 var1344)
(declare-const var3790!2 var1344)
(assert (not (= var3790!2 null-var1344)))
(assert (= (attemptFileAccess/-1498075858 var3790!2) (ite (= 1 1) true false))) ; Statement: r0.<freemarker.cache.WebappTemplateLoader: boolean attemptFileAccess> = 1 
;(assert (var2993_check/-951860758 "servletContext" (cast-from-var651-to-var0 var3847))) ; Statement: staticinvoke <freemarker.template.utility.NullArgumentException: void check(java.lang.String,java.lang.Object)>("servletContext", r1) 

(declare-const var1349 String)
(declare-const var3847!1 var651)
;(assert (var2993_check/-951860758 "subdirPath" (cast-from-String-to-var0 var1410))) ; Statement: staticinvoke <freemarker.template.utility.NullArgumentException: void check(java.lang.String,java.lang.Object)>("subdirPath", r8) 

(declare-const var1838 String)
(declare-const var1410!1 String)
(assert true)
(define-const var856 String (replace/1524665721 var1410!1 92 47)) ; Statement: r9 = virtualinvoke r8.<java.lang.String: java.lang.String replace(char,char)>(92, 47) 
(assert true)
(define-const var1196 Bool (endsWith/985337093 var856 "/")) ; Statement: $z0 = virtualinvoke r9.<java.lang.String: boolean endsWith(java.lang.String)>("/") 
 ; Statement: if $z0 != 0 goto $z1 = virtualinvoke r9.<java.lang.String: boolean startsWith(java.lang.String)>("/") 
(assert (not (= (ite var1196 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
(define-const var3427 Bool (startsWith/-1785782452 var856 "/")) ; Statement: $z1 = virtualinvoke r9.<java.lang.String: boolean startsWith(java.lang.String)>("/") 
 ; Statement: if $z1 != 0 goto r0.<freemarker.cache.WebappTemplateLoader: java.lang.String subdirPath> = r9 
(assert (not (= (ite var3427 1 0) 0))) ; Cond: $z1 != 0 
(declare-const var3790!3 var1344)
(assert (not (= var3790!3 null-var1344)))
(assert (= (subdirPath/-1498075858 var3790!3) var856)) ; Statement: r0.<freemarker.cache.WebappTemplateLoader: java.lang.String subdirPath> = r9 
(declare-const var3790!4 var1344)
(assert (not (= var3790!4 null-var1344)))
(assert (= (servletContext/-1498075858 var3790!4) var3847!1)) ; Statement: r0.<freemarker.cache.WebappTemplateLoader: javax.servlet.ServletContext servletContext> = r1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var1344-to-var0=([freemarker.cache.WebappTemplateLoader], java.lang.Object), attemptFileAccess/-1498075858=([freemarker.cache.WebappTemplateLoader], boolean), var2993_check/-951860758=([java.lang.String, java.lang.Object], void), cast-from-var651-to-var0=([javax.servlet.ServletContext], java.lang.Object), cast-from-String-to-var0=([java.lang.String], java.lang.Object), replace/1524665721=([java.lang.String, char, char], java.lang.String), endsWith/985337093=([java.lang.String, java.lang.String], boolean), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), subdirPath/-1498075858=([freemarker.cache.WebappTemplateLoader], java.lang.String), servletContext/-1498075858=([freemarker.cache.WebappTemplateLoader], javax.servlet.ServletContext)}
; {var1344=freemarker.cache.WebappTemplateLoader, var3790=r0, var651=javax.servlet.ServletContext, var3847=r1, var1410=r8, var2659=null_type, var0=java.lang.Object, var2993=freemarker.template.utility.NullArgumentException, var1349="servletContext", var1838="subdirPath", var856=r9, var1196=$z0, var3427=$z1}
; {freemarker.cache.WebappTemplateLoader=var1344, r0=var3790, javax.servlet.ServletContext=var651, r1=var3847, r8=var1410, null_type=var2659, java.lang.Object=var0, freemarker.template.utility.NullArgumentException=var2993, "servletContext"=var1349, "subdirPath"=var1838, r9=var856, $z0=var1196, $z1=var3427}
;seq <java.lang.String: java.lang.String replace(char,char)>;	<java.lang.String: boolean endsWith(java.lang.String)>;	<java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String replace(char,char)>": 1,"<java.lang.String: boolean endsWith(java.lang.String)>": 1,"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r0 := @this: freemarker.cache.WebappTemplateLoader;	r1 := @parameter0: javax.servlet.ServletContext;	r8 := @parameter1: java.lang.String;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<freemarker.cache.WebappTemplateLoader: boolean attemptFileAccess> = 1;	staticinvoke <freemarker.template.utility.NullArgumentException: void check(java.lang.String,java.lang.Object)>("servletContext", r1);	staticinvoke <freemarker.template.utility.NullArgumentException: void check(java.lang.String,java.lang.Object)>("subdirPath", r8);	r9 = virtualinvoke r8.<java.lang.String: java.lang.String replace(char,char)>(92, 47);	$z0 = virtualinvoke r9.<java.lang.String: boolean endsWith(java.lang.String)>("/");	if $z0 != 0 goto $z1 = virtualinvoke r9.<java.lang.String: boolean startsWith(java.lang.String)>("/");	$z1 = virtualinvoke r9.<java.lang.String: boolean startsWith(java.lang.String)>("/");	if $z1 != 0 goto r0.<freemarker.cache.WebappTemplateLoader: java.lang.String subdirPath> = r9;	r0.<freemarker.cache.WebappTemplateLoader: java.lang.String subdirPath> = r9;	r0.<freemarker.cache.WebappTemplateLoader: javax.servlet.ServletContext servletContext> = r1;	return
;block_num 3