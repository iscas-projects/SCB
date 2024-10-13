(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1050 0)
(declare-sort var1950 0)
(declare-sort var2482 0)
(declare-sort var907 0)
(declare-sort var424 0)
(declare-sort var3205 0)
(declare-sort var2687 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun config/-1513802512 (var1050) var907)
(declare-fun outputWrapper/781817645 (var907) String)
(define-fun contains/1009244746 ((s String) (subs String)) Bool (str.contains s subs))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun isOutputInJson/1349144571 (var1050) Bool)
(declare-fun filesToStreamOut/-1513802512 (var1050) var424)
(declare-fun createJsonFile/-941103048 (var1050 var1950 String var2482) var3205)
(declare-fun var424_add/328494887 (var424 var2687) Bool)
(declare-fun cast-from-var3205-to-var2687 (var3205) var2687)
(declare-const null-var1050 var1050)
(declare-const null-var1950 var1950)
(declare-const null-var2482 var2482)
(declare-const var3183 var1050) ; Statement: r0 := @this: com.google.javascript.jscomp.AbstractCommandLineRunner 
(assert (not (= var3183 null-var1050)))
(declare-const var2660 var1950) ; Statement: r15 := @parameter0: com.google.javascript.jscomp.CompilerOptions 
(assert (not (= var2660 null-var1950)))
(define-const var3103 var2482 null-var2482) ; Statement: r18 = null 
(define-const var1640 String "%output%") ; Statement: r19 = "%output%" 
(define-const var579 String "%output%") ; Statement: r21 = "%output%" 
(define-const var1985 String "%output%") ; Statement: r20 = "%output%" 
(define-const var2732 var907 (config/-1513802512 var3183)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AbstractCommandLineRunner: com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig config> 
(define-const var1413 String (outputWrapper/781817645 var2732)) ; Statement: $r2 = $r1.<com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig: java.lang.String outputWrapper> 
(assert true)
(define-const var1233 Bool (contains/1009244746 var1413 (cast-from-String-to-String "%output|jsstring%"))) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean contains(java.lang.CharSequence)>("%output|jsstring%") 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r0.<com.google.javascript.jscomp.AbstractCommandLineRunner: boolean isOutputInJson()>() 
(assert (= (ite var1233 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var3607 Bool (isOutputInJson/1349144571 var3183)) ; Statement: $z1 = virtualinvoke r0.<com.google.javascript.jscomp.AbstractCommandLineRunner: boolean isOutputInJson()>() 
 ; Statement: if $z1 == 0 goto $r3 = r0.<com.google.javascript.jscomp.AbstractCommandLineRunner: com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig config> 
(assert (not (= (ite var3607 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var794 var424 (filesToStreamOut/-1513802512 var3183)) ; Statement: $r16 = r0.<com.google.javascript.jscomp.AbstractCommandLineRunner: java.util.List filesToStreamOut> 
(assert true)
(define-const var938 var3205 (createJsonFile/-941103048 var3183 var2660 var579 var3103)) ; Statement: $r17 = virtualinvoke r0.<com.google.javascript.jscomp.AbstractCommandLineRunner: com.google.javascript.jscomp.AbstractCommandLineRunner$JsonFileSpec createJsonFile(com.google.javascript.jscomp.CompilerOptions,java.lang.String,com.google.javascript.jscomp.jarjar.com.google.common.base.Function)>(r15, r21, r18) 
;(assert (var424_add/328494887 var794 (cast-from-var3205-to-var2687 var938))) ; Statement: interfaceinvoke $r16.<java.util.List: boolean add(java.lang.Object)>($r17) 

(declare-const var794!1 var424)
(declare-const var938!1 var3205)
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {config/-1513802512=([com.google.javascript.jscomp.AbstractCommandLineRunner], com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig), outputWrapper/781817645=([com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig], java.lang.String), contains/1009244746=([java.lang.String, java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), isOutputInJson/1349144571=([com.google.javascript.jscomp.AbstractCommandLineRunner], boolean), filesToStreamOut/-1513802512=([com.google.javascript.jscomp.AbstractCommandLineRunner], java.util.List), createJsonFile/-941103048=([com.google.javascript.jscomp.AbstractCommandLineRunner, com.google.javascript.jscomp.CompilerOptions, java.lang.String, com.google.javascript.jscomp.jarjar.com.google.common.base.Function], com.google.javascript.jscomp.AbstractCommandLineRunner$JsonFileSpec), var424_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-var3205-to-var2687=([com.google.javascript.jscomp.AbstractCommandLineRunner$JsonFileSpec], java.lang.Object)}
; {var1050=com.google.javascript.jscomp.AbstractCommandLineRunner, var3183=r0, var1950=com.google.javascript.jscomp.CompilerOptions, var2660=r15, var2482=com.google.javascript.jscomp.jarjar.com.google.common.base.Function, var3103=r18, var1640=r19, var579=r21, var1985=r20, var907=com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig, var2732=$r1, var1413=$r2, var1233=$z0, var3607=$z1, var424=java.util.List, var794=$r16, var3205=com.google.javascript.jscomp.AbstractCommandLineRunner$JsonFileSpec, var938=$r17, var2687=java.lang.Object}
; {com.google.javascript.jscomp.AbstractCommandLineRunner=var1050, r0=var3183, com.google.javascript.jscomp.CompilerOptions=var1950, r15=var2660, com.google.javascript.jscomp.jarjar.com.google.common.base.Function=var2482, r18=var3103, r19=var1640, r21=var579, r20=var1985, com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig=var907, $r1=var2732, $r2=var1413, $z0=var1233, $z1=var3607, java.util.List=var424, $r16=var794, com.google.javascript.jscomp.AbstractCommandLineRunner$JsonFileSpec=var3205, $r17=var938, java.lang.Object=var2687}
;seq <java.lang.String: boolean contains(java.lang.CharSequence)>
;cnt {"<java.lang.String: boolean contains(java.lang.CharSequence)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.AbstractCommandLineRunner;	r15 := @parameter0: com.google.javascript.jscomp.CompilerOptions;	r18 = null;	r19 = "%output%";	r21 = "%output%";	r20 = "%output%";	$r1 = r0.<com.google.javascript.jscomp.AbstractCommandLineRunner: com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig config>;	$r2 = $r1.<com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig: java.lang.String outputWrapper>;	$z0 = virtualinvoke $r2.<java.lang.String: boolean contains(java.lang.CharSequence)>("%output|jsstring%");	if $z0 == 0 goto $z1 = virtualinvoke r0.<com.google.javascript.jscomp.AbstractCommandLineRunner: boolean isOutputInJson()>();	$z1 = virtualinvoke r0.<com.google.javascript.jscomp.AbstractCommandLineRunner: boolean isOutputInJson()>();	if $z1 == 0 goto $r3 = r0.<com.google.javascript.jscomp.AbstractCommandLineRunner: com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig config>;	$r16 = r0.<com.google.javascript.jscomp.AbstractCommandLineRunner: java.util.List filesToStreamOut>;	$r17 = virtualinvoke r0.<com.google.javascript.jscomp.AbstractCommandLineRunner: com.google.javascript.jscomp.AbstractCommandLineRunner$JsonFileSpec createJsonFile(com.google.javascript.jscomp.CompilerOptions,java.lang.String,com.google.javascript.jscomp.jarjar.com.google.common.base.Function)>(r15, r21, r18);	interfaceinvoke $r16.<java.util.List: boolean add(java.lang.Object)>($r17);	goto [?= return];	return
;block_num 4