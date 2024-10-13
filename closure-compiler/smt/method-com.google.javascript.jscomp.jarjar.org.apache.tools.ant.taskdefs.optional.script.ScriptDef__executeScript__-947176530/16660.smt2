(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3188 0)
(declare-sort var3115 0)
(declare-sort var926 0)
(declare-sort var1081 0)
(declare-sort var2981 0)
(declare-sort var2313 0)
(declare-sort var1258 0)
(declare-sort var1391 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun helper/-1134798647 (var3188) var1081)
(declare-fun getScriptRunner/-12943877 (var1081) var2981)
(declare-fun addBean/-122011481 (var2981 String var2313) void)
(declare-fun cast-from-var3115-to-var2313 (var3115) var2313)
(declare-fun getProject/416672769 (var1391) var1258)
(declare-fun cast-from-var3188-to-var1391 (var3188) var1391)
(declare-fun cast-from-var1258-to-var2313 (var1258) var2313)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun name/-1134798647 (var3188) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun executeScript/1701144979 (var2981 String) void)
(declare-const null-var3188 var3188)
(declare-const null-var3115 var3115)
(declare-const null-var926 var926)
(declare-const var2352 var3188) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.script.ScriptDef 
(assert (not (= var2352 null-var3188)))
(declare-const var3267 var3115) ; Statement: r3 := @parameter0: java.util.Map 
(assert (not (= var3267 null-var3115)))
(declare-const var1600 var3115) ; Statement: r4 := @parameter1: java.util.Map 
(assert (not (= var1600 null-var3115)))
(declare-const var3309 var926) ; Statement: r6 := @parameter2: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.script.ScriptDefBase 
(assert (not (= var3309 null-var926)))
(define-const var2281 var1081 (helper/-1134798647 var2352)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.script.ScriptDef: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ScriptRunnerHelper helper> 
(assert true)
(define-const var466 var2981 (getScriptRunner/-12943877 var2281)) ; Statement: r2 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ScriptRunnerHelper: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ScriptRunnerBase getScriptRunner()>() 
(assert true)
;(assert (addBean/-122011481 var466 "attributes" (cast-from-var3115-to-var2313 var3267))) ; Statement: virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ScriptRunnerBase: void addBean(java.lang.String,java.lang.Object)>("attributes", r3) 

(declare-const var466!1 var2981)
(declare-const var1701 String)
(declare-const var3267!1 var3115)
(assert true)
;(assert (addBean/-122011481 var466!1 "elements" (cast-from-var3115-to-var2313 var1600))) ; Statement: virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ScriptRunnerBase: void addBean(java.lang.String,java.lang.Object)>("elements", r4) 

(declare-const var466!2 var2981)
(declare-const var1731 String)
(declare-const var1600!1 var3115)
(assert true)
(define-const var1165 var1258 (getProject/416672769 (cast-from-var3188-to-var1391 var2352))) ; Statement: $r5 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.script.ScriptDef: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>() 
(assert true)
;(assert (addBean/-122011481 var466!2 "project" (cast-from-var1258-to-var2313 var1165))) ; Statement: virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ScriptRunnerBase: void addBean(java.lang.String,java.lang.Object)>("project", $r5) 

(declare-const var466!3 var2981)
(declare-const var1558 String)
(declare-const var1165!1 var1258)
 ; Statement: if r6 == null goto $r7 = new java.lang.StringBuilder 
(assert (= var3309 null-var926)) ; Cond: r6 == null 
(define-const var392 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var392)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var392!1 String)
(assert (= var392!1 ""))
(assert true)
(define-const var3526 String (append/672562846 var392!1 "scriptdef_")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("scriptdef_") 
(declare-const var392!2 String)
(assert (= var392!2 (str.++ var392!1 "scriptdef_")))
(define-const var2065 String (name/-1134798647 var2352)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.script.ScriptDef: java.lang.String name> 
(assert true)
(define-const var3237 String (append/672562846 var3526 var2065)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var3526!1 String)
(assert (= var3526!1 (str.++ var3526 var2065)))
(assert true)
(define-const var3058 String (toString/-2075883882 var3237)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (executeScript/1701144979 var466!3 var3058)) ; Statement: virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ScriptRunnerBase: void executeScript(java.lang.String)>($r11) 

(declare-const var466!4 var2981)
(declare-const var3058!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {helper/-1134798647=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.script.ScriptDef], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ScriptRunnerHelper), getScriptRunner/-12943877=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ScriptRunnerHelper], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ScriptRunnerBase), addBean/-122011481=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ScriptRunnerBase, java.lang.String, java.lang.Object], void), cast-from-var3115-to-var2313=([java.util.Map], java.lang.Object), getProject/416672769=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project), cast-from-var3188-to-var1391=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.script.ScriptDef], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent), cast-from-var1258-to-var2313=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), name/-1134798647=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.script.ScriptDef], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), executeScript/1701144979=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ScriptRunnerBase, java.lang.String], void)}
; {var3188=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.script.ScriptDef, var2352=r0, var3115=java.util.Map, var3267=r3, var1600=r4, var926=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.script.ScriptDefBase, var3309=r6, var1081=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ScriptRunnerHelper, var2281=$r1, var2981=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ScriptRunnerBase, var466=r2, var2313=java.lang.Object, var1701="attributes", var1731="elements", var1258=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var1391=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var1165=$r5, var1558="project", var392=$r7, var3526=$r9, var2065=$r8, var3237=$r10, var3058=$r11}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.script.ScriptDef=var3188, r0=var2352, java.util.Map=var3115, r3=var3267, r4=var1600, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.script.ScriptDefBase=var926, r6=var3309, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ScriptRunnerHelper=var1081, $r1=var2281, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ScriptRunnerBase=var2981, r2=var466, java.lang.Object=var2313, "attributes"=var1701, "elements"=var1731, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var1258, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var1391, $r5=var1165, "project"=var1558, $r7=var392, $r9=var3526, $r8=var2065, $r10=var3237, $r11=var3058}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.script.ScriptDef;	r3 := @parameter0: java.util.Map;	r4 := @parameter1: java.util.Map;	r6 := @parameter2: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.script.ScriptDefBase;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.script.ScriptDef: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ScriptRunnerHelper helper>;	r2 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ScriptRunnerHelper: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ScriptRunnerBase getScriptRunner()>();	virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ScriptRunnerBase: void addBean(java.lang.String,java.lang.Object)>("attributes", r3);	virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ScriptRunnerBase: void addBean(java.lang.String,java.lang.Object)>("elements", r4);	$r5 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.script.ScriptDef: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>();	virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ScriptRunnerBase: void addBean(java.lang.String,java.lang.Object)>("project", $r5);	if r6 == null goto $r7 = new java.lang.StringBuilder;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("scriptdef_");	$r8 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.script.ScriptDef: java.lang.String name>;	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ScriptRunnerBase: void executeScript(java.lang.String)>($r11);	return
;block_num 2