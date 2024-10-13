(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3354 0)
(declare-sort var706 0)
(declare-sort var446 0)
(declare-sort var870 0)
(declare-sort var910 0)
(declare-sort var114 0)
(declare-sort var1902 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun services/-260367193 (var3354) var446)
(declare-fun toLowerCase/1946809429 (String var870) String)
(declare-fun var446_get/1088891777 (var446 var910) var910)
(declare-fun cast-from-String-to-var910 (String) var910)
(declare-fun cast-from-var910-to-ClassObject (var910) ClassObject)
(declare-fun var114-init () var114)
(declare-fun clazz/-260367193 (var3354) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun availableServices/1303848317 (var3354) var1902)
(declare-fun cast-from-var1902-to-String (var1902) String)
(declare-fun <init>/875830710 (var114 String) void)
(declare-const null-var3354 var3354)
(declare-const null-String String)
(declare-const var870-ROOT var870)
(declare-const null-ClassObject ClassObject)
(declare-const var3832 var3354) ; Statement: r0 := @this: org.apache.lucene.analysis.AnalysisSPILoader 
(assert (not (= var3832 null-var3354)))
(declare-const var262 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var262 null-String)))
(define-const var240 var446 (services/-260367193 var3832)) ; Statement: $r3 = r0.<org.apache.lucene.analysis.AnalysisSPILoader: java.util.Map services> 
(define-const var1149 var870 var870-ROOT) ; Statement: $r2 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var3312 String (toLowerCase/1946809429 var262 var1149)) ; Statement: $r4 = virtualinvoke r1.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2) 
(define-const var2998 var910 (var446_get/1088891777 var240 (cast-from-String-to-var910 var3312))) ; Statement: $r5 = interfaceinvoke $r3.<java.util.Map: java.lang.Object get(java.lang.Object)>($r4) 
(define-const var2971 ClassObject (cast-from-var910-to-ClassObject var2998)) ; Statement: r6 = (java.lang.Class) $r5 
 ; Statement: if r6 == null goto $r7 = new java.lang.IllegalArgumentException 
(assert (= var2971 null-ClassObject)) ; Cond: r6 == null 
(define-const var2080 var114 var114-init) ; Statement: $r7 = new java.lang.IllegalArgumentException 
(define-const var3866 ClassObject (clazz/-260367193 var3832)) ; Statement: $r8 = r0.<org.apache.lucene.analysis.AnalysisSPILoader: java.lang.Class clazz> 
(assert true)
(define-const var3751 String (getName/-1958580599 var3866)) ; Statement: $r10 = virtualinvoke $r8.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2025 var1902 (availableServices/1303848317 var3832)) ; Statement: $r9 = virtualinvoke r0.<org.apache.lucene.analysis.AnalysisSPILoader: java.util.Set availableServices()>() 
(define-const var1571 String (str.++ "A SPI class of type \u0001 with name \u0027\u0001\u0027 does not exist. You need to add the corresponding JAR file supporting this SPI to your classpath. The current classpath supports the following names: \u0001" var3751 var262 (cast-from-var1902-to-String var2025))) ; Statement: $r11 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,java.lang.String,java.util.Set)>($r10, r1, $r9) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("A SPI class of type \u0001 with name \'\u0001\' does not exist. You need to add the corresponding JAR file supporting this SPI to your classpath. The current classpath supports the following names: \u0001") 
(assert true)
;(assert (<init>/875830710 var2080 var1571)) ; Statement: specialinvoke $r7.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r11) 

(declare-const var2080!1 var114)
(declare-const var1571!1 String)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {services/-260367193=([org.apache.lucene.analysis.AnalysisSPILoader], java.util.Map), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), var446_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var910=([java.lang.String], java.lang.Object), cast-from-var910-to-ClassObject=([java.lang.Object], java.lang.Class), var114-init=([], java.lang.IllegalArgumentException), clazz/-260367193=([org.apache.lucene.analysis.AnalysisSPILoader], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), availableServices/1303848317=([org.apache.lucene.analysis.AnalysisSPILoader], java.util.Set), cast-from-var1902-to-String=([java.util.Set], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3354=org.apache.lucene.analysis.AnalysisSPILoader, var3832=r0, var262=r1, var706=null_type, var446=java.util.Map, var240=$r3, var870=java.util.Locale, var1149=$r2, var3312=$r4, var910=java.lang.Object, var2998=$r5, var2971=r6, var114=java.lang.IllegalArgumentException, var2080=$r7, var3866=$r8, var3751=$r10, var1902=java.util.Set, var2025=$r9, var1571=$r11}
; {org.apache.lucene.analysis.AnalysisSPILoader=var3354, r0=var3832, r1=var262, null_type=var706, java.util.Map=var446, $r3=var240, java.util.Locale=var870, $r2=var1149, $r4=var3312, java.lang.Object=var910, $r5=var2998, r6=var2971, java.lang.IllegalArgumentException=var114, $r7=var2080, $r8=var3866, $r10=var3751, java.util.Set=var1902, $r9=var2025, $r11=var1571}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1}
;stmts r0 := @this: org.apache.lucene.analysis.AnalysisSPILoader;	r1 := @parameter0: java.lang.String;	$r3 = r0.<org.apache.lucene.analysis.AnalysisSPILoader: java.util.Map services>;	$r2 = <java.util.Locale: java.util.Locale ROOT>;	$r4 = virtualinvoke r1.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2);	$r5 = interfaceinvoke $r3.<java.util.Map: java.lang.Object get(java.lang.Object)>($r4);	r6 = (java.lang.Class) $r5;	if r6 == null goto $r7 = new java.lang.IllegalArgumentException;	$r7 = new java.lang.IllegalArgumentException;	$r8 = r0.<org.apache.lucene.analysis.AnalysisSPILoader: java.lang.Class clazz>;	$r10 = virtualinvoke $r8.<java.lang.Class: java.lang.String getName()>();	$r9 = virtualinvoke r0.<org.apache.lucene.analysis.AnalysisSPILoader: java.util.Set availableServices()>();	$r11 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,java.lang.String,java.util.Set)>($r10, r1, $r9) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("A SPI class of type \u0001 with name \'\u0001\' does not exist. You need to add the corresponding JAR file supporting this SPI to your classpath. The current classpath supports the following names: \u0001");	specialinvoke $r7.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r11);	throw $r7
;block_num 2