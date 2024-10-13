(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1729 0)
(declare-sort var1162 0)
(declare-sort var3153 0)
(declare-sort var3934 0)
(declare-sort var252 0)
(declare-sort var3485 0)
(declare-sort var2491 0)
(declare-sort var966 0)
(declare-sort var2426 0)
(declare-sort var1338 0)
(declare-sort var3776 0)
(declare-sort var3577 0)
(declare-sort var2991 0)
(declare-sort var2390 0)
(declare-sort var538 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun init/-2107142243 (var1162) void)
(declare-fun var3153_getPropertyHelper/-1365933400 (var1162) var3153)
(declare-fun var3934-init () var3934)
(declare-fun definedProps/1023218296 (var1729) var252)
(declare-fun <init>/-1344032113 (var3934 var3485) void)
(declare-fun cast-from-var252-to-var3485 (var252) var3485)
(declare-fun var2491-init () var2491)
(declare-fun getExpanders/1641447889 (var3153) var2426)
(declare-fun <init>/826651871 (var2491 var1162 var966 var2426) void)
(declare-fun resolveAllProperties/-352412719 (var2491 var3485 String Bool) void)
(declare-fun cast-from-var3934-to-var3485 (var3934) var3485)
(declare-fun var3577_bootstrap$/141367924 (var1162) var3776)
(declare-fun var3485_forEach/1471512036 (var3485 var3776) void)
(declare-fun buildFile/1023218296 (var1729) var2991)
(declare-fun getAbsolutePath/-802773300 (var2991) String)
(declare-fun setUserProperty/-1892470165 (var1162 String String) void)
(declare-fun targets/1023218296 (var1729) var2390)
(declare-fun String_join/1594745010 (String var538) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun cast-from-var2390-to-var538 (var2390) var538)
(declare-const null-var1729 var1729)
(declare-const null-var1162 var1162)
(declare-const var1729-NOPROPERTIES var966)
(declare-const null-NullType var1338)
(declare-const null-String String)
(declare-const var2478 var1729) ; Statement: r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Main 
(assert (not (= var2478 null-var1729)))
(declare-const var1184 var1162) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project 
(assert (not (= var1184 null-var1162)))
(assert true)
;(assert (init/-2107142243 var1184)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: void init()>() 

(declare-const var1184!1 var1162)
(define-const var3490 var3153 (var3153_getPropertyHelper/-1365933400 var1184!1)) ; Statement: r1 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.PropertyHelper: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.PropertyHelper getPropertyHelper(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project)>(r0) 
(define-const var181 var3934 var3934-init) ; Statement: $r2 = new java.util.HashMap 
(define-const var3878 var252 (definedProps/1023218296 var2478)) ; Statement: $r4 = r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Main: java.util.Properties definedProps> 
(assert true)
;(assert (<init>/-1344032113 var181 (cast-from-var252-to-var3485 var3878))) ; Statement: specialinvoke $r2.<java.util.HashMap: void <init>(java.util.Map)>($r4) 

(declare-const var181!1 var3934)
(declare-const var3878!1 var252)
(define-const var3627 var2491 var2491-init) ; Statement: $r5 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.property.ResolvePropertyMap 
(define-const var3532 var966 var1729-NOPROPERTIES) ; Statement: $r6 = <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Main: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.property.GetProperty NOPROPERTIES> 
(assert true)
(define-const var19 var2426 (getExpanders/1641447889 var3490)) ; Statement: $r7 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.PropertyHelper: java.util.Collection getExpanders()>() 
(assert true)
;(assert (<init>/826651871 var3627 var1184!1 var3532 var19)) ; Statement: specialinvoke $r5.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.property.ResolvePropertyMap: void <init>(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.property.GetProperty,java.util.Collection)>(r0, $r6, $r7) 

(declare-const var3627!1 var2491)
(declare-const var1184!2 var1162)
(declare-const var3532!1 var966)
(declare-const var19!1 var2426)
(assert true)
;(assert (resolveAllProperties/-352412719 var3627!1 (cast-from-var3934-to-var3485 var181!1) null-String (ite (= 1 0) true false))) ; Statement: virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.property.ResolvePropertyMap: void resolveAllProperties(java.util.Map,java.lang.String,boolean)>($r2, null, 0) 

(declare-const var3627!2 var2491)
(declare-const var181!2 var3934)
(declare-const var3965 var1338)
(declare-const var2409 Int)
(define-const var2317 var3776 (var3577_bootstrap$/141367924 var1184!2)) ; Statement: $r8 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Main$lambda_setProperties_5__621: java.util.function.BiConsumer bootstrap$(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project)>(r0) 
;(assert (var3485_forEach/1471512036 (cast-from-var3934-to-var3485 var181!2) var2317)) ; Statement: interfaceinvoke $r2.<java.util.Map: void forEach(java.util.function.BiConsumer)>($r8) 

(declare-const var181!3 var3934)
(declare-const var2317!1 var3776)
(define-const var988 var2991 (buildFile/1023218296 var2478)) ; Statement: $r9 = r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Main: java.io.File buildFile> 
(assert true)
(define-const var522 String (getAbsolutePath/-802773300 var988)) ; Statement: $r10 = virtualinvoke $r9.<java.io.File: java.lang.String getAbsolutePath()>() 
(assert true)
;(assert (setUserProperty/-1892470165 var1184!2 "ant.file" var522)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: void setUserProperty(java.lang.String,java.lang.String)>("ant.file", $r10) 

(declare-const var1184!3 var1162)
(declare-const var3955 String)
(declare-const var522!1 String)
(assert true)
;(assert (setUserProperty/-1892470165 var1184!3 "ant.file.type" "file")) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: void setUserProperty(java.lang.String,java.lang.String)>("ant.file.type", "file") 

(declare-const var1184!4 var1162)
(declare-const var3500 String)
(declare-const var2298 String)
(define-const var2801 var2390 (targets/1023218296 var2478)) ; Statement: $r11 = r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Main: java.util.Vector targets> 
(define-const var258 String (String_join/1594745010 (cast-from-String-to-String ",") (cast-from-var2390-to-var538 var2801))) ; Statement: $r12 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.Iterable)>(",", $r11) 
(assert true)
;(assert (setUserProperty/-1892470165 var1184!4 "ant.project.invoked-targets" var258)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: void setUserProperty(java.lang.String,java.lang.String)>("ant.project.invoked-targets", $r12) 

(declare-const var1184!5 var1162)
(declare-const var3388 String)
(declare-const var258!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {init/-2107142243=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project], void), var3153_getPropertyHelper/-1365933400=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.PropertyHelper), var3934-init=([], java.util.HashMap), definedProps/1023218296=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Main], java.util.Properties), <init>/-1344032113=([java.util.HashMap, java.util.Map], void), cast-from-var252-to-var3485=([java.util.Properties], java.util.Map), var2491-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.property.ResolvePropertyMap), getExpanders/1641447889=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.PropertyHelper], java.util.Collection), <init>/826651871=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.property.ResolvePropertyMap, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.property.GetProperty, java.util.Collection], void), resolveAllProperties/-352412719=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.property.ResolvePropertyMap, java.util.Map, java.lang.String, boolean], void), cast-from-var3934-to-var3485=([java.util.HashMap], java.util.Map), var3577_bootstrap$/141367924=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project], java.util.function.BiConsumer), var3485_forEach/1471512036=([java.util.Map, java.util.function.BiConsumer], void), buildFile/1023218296=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Main], java.io.File), getAbsolutePath/-802773300=([java.io.File], java.lang.String), setUserProperty/-1892470165=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, java.lang.String, java.lang.String], void), targets/1023218296=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Main], java.util.Vector), String_join/1594745010=([java.lang.CharSequence, java.lang.Iterable], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), cast-from-var2390-to-var538=([java.util.Vector], java.lang.Iterable)}
; {var1729=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Main, var2478=r3, var1162=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var1184=r0, var3153=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.PropertyHelper, var3490=r1, var3934=java.util.HashMap, var181=$r2, var252=java.util.Properties, var3878=$r4, var3485=java.util.Map, var2491=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.property.ResolvePropertyMap, var3627=$r5, var966=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.property.GetProperty, var3532=$r6, var2426=java.util.Collection, var19=$r7, var1338=null_type, var3965=null, var2409=0, var3776=java.util.function.BiConsumer, var3577=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Main$lambda_setProperties_5__621, var2317=$r8, var2991=java.io.File, var988=$r9, var522=$r10, var3955="ant.file", var3500="ant.file.type", var2298="file", var2390=java.util.Vector, var2801=$r11, var538=java.lang.Iterable, var258=$r12, var3388="ant.project.invoked-targets"}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Main=var1729, r3=var2478, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var1162, r0=var1184, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.PropertyHelper=var3153, r1=var3490, java.util.HashMap=var3934, $r2=var181, java.util.Properties=var252, $r4=var3878, java.util.Map=var3485, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.property.ResolvePropertyMap=var2491, $r5=var3627, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.property.GetProperty=var966, $r6=var3532, java.util.Collection=var2426, $r7=var19, null_type=var1338, null=var3965, 0=var2409, java.util.function.BiConsumer=var3776, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Main$lambda_setProperties_5__621=var3577, $r8=var2317, java.io.File=var2991, $r9=var988, $r10=var522, "ant.file"=var3955, "ant.file.type"=var3500, "file"=var2298, java.util.Vector=var2390, $r11=var2801, java.lang.Iterable=var538, $r12=var258, "ant.project.invoked-targets"=var3388}
;seq <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.Iterable)>
;cnt {"<java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.Iterable)>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Main;	r0 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project;	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: void init()>();	r1 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.PropertyHelper: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.PropertyHelper getPropertyHelper(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project)>(r0);	$r2 = new java.util.HashMap;	$r4 = r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Main: java.util.Properties definedProps>;	specialinvoke $r2.<java.util.HashMap: void <init>(java.util.Map)>($r4);	$r5 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.property.ResolvePropertyMap;	$r6 = <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Main: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.property.GetProperty NOPROPERTIES>;	$r7 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.PropertyHelper: java.util.Collection getExpanders()>();	specialinvoke $r5.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.property.ResolvePropertyMap: void <init>(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.property.GetProperty,java.util.Collection)>(r0, $r6, $r7);	virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.property.ResolvePropertyMap: void resolveAllProperties(java.util.Map,java.lang.String,boolean)>($r2, null, 0);	$r8 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Main$lambda_setProperties_5__621: java.util.function.BiConsumer bootstrap$(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project)>(r0);	interfaceinvoke $r2.<java.util.Map: void forEach(java.util.function.BiConsumer)>($r8);	$r9 = r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Main: java.io.File buildFile>;	$r10 = virtualinvoke $r9.<java.io.File: java.lang.String getAbsolutePath()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: void setUserProperty(java.lang.String,java.lang.String)>("ant.file", $r10);	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: void setUserProperty(java.lang.String,java.lang.String)>("ant.file.type", "file");	$r11 = r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Main: java.util.Vector targets>;	$r12 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.Iterable)>(",", $r11);	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: void setUserProperty(java.lang.String,java.lang.String)>("ant.project.invoked-targets", $r12);	return
;block_num 1