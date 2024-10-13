(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var67 0)
(declare-sort var36 0)
(declare-sort var2232 0)
(declare-sort var1224 0)
(declare-sort var608 0)
(declare-sort var3216 0)
(declare-sort var3637 0)
(declare-sort var1430 0)
(declare-sort var3864 0)
(declare-sort var3954 0)
(declare-sort var2197 0)
(declare-sort var2480 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getPrintWriter/-1782232853 (var67) var2232)
(declare-fun var1224_generatePrologue/-899895352 (var2232) void)
(declare-fun var608-init () var608)
(declare-fun var3637_getOptions/298379990 () var3216)
(declare-fun <init>/-1344032113 (var608 var3216) void)
(declare-fun var3216_put/1464166817 (var3216 var3864 var3864) var3864)
(declare-fun cast-from-var608-to-var3216 (var608) var3216)
(declare-fun cast-from-String-to-var3864 (String) var3864)
(declare-fun var3954_getVisitorReturnType/-842398340 () String)
(declare-fun var2197_valueOf/1602327315 (Bool) var2197)
(declare-fun cast-from-var2197-to-var3864 (var2197) var3864)
(declare-fun var2480-init () var2480)
(declare-fun <init>/1344994893 (var2480 String var3216) void)
(declare-fun generate/-1718254023 (var2480 var2232) void)
(declare-fun close/2116439267 (var2232) void)
(declare-const null-var67 var67)
(declare-const null-String String)
(declare-const var1430-parserName String)
(declare-const var2943 var67) ; Statement: r0 := @parameter0: org.javacc.parser.OutputFile 
(assert (not (= var2943 null-var67)))
(declare-const var2362 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var2362 null-String)))
(assert true)
(define-const var2061 var2232 (getPrintWriter/-1782232853 var2943)) ; Statement: r1 = virtualinvoke r0.<org.javacc.parser.OutputFile: java.io.PrintWriter getPrintWriter()>() 
;(assert (var1224_generatePrologue/-899895352 var2061)) ; Statement: staticinvoke <org.javacc.jjtree.NodeFiles: void generatePrologue(java.io.PrintWriter)>(r1) 

(declare-const var2061!1 var2232)
(define-const var1689 var608 var608-init) ; Statement: $r2 = new java.util.HashMap 
(define-const var3626 var3216 var3637_getOptions/298379990) ; Statement: $r3 = staticinvoke <org.javacc.parser.Options: java.util.Map getOptions()>() 
(assert true)
;(assert (<init>/-1344032113 var1689 var3626)) ; Statement: specialinvoke $r2.<java.util.HashMap: void <init>(java.util.Map)>($r3) 

(declare-const var1689!1 var608)
(declare-const var3626!1 var3216)
(define-const var3546 String var1430-parserName) ; Statement: $r4 = <org.javacc.jjtree.JJTreeGlobals: java.lang.String parserName> 
;(assert (var3216_put/1464166817 (cast-from-var608-to-var3216 var1689!1) (cast-from-String-to-var3864 "PARSER_NAME") (cast-from-String-to-var3864 var3546))) ; Statement: interfaceinvoke $r2.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>("PARSER_NAME", $r4) 

(declare-const var1689!2 var608)
(declare-const var2536 String)
(declare-const var3546!1 String)
;(assert (var3216_put/1464166817 (cast-from-var608-to-var3216 var1689!2) (cast-from-String-to-var3864 "NODE_TYPE") (cast-from-String-to-var3864 var2362))) ; Statement: interfaceinvoke $r2.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>("NODE_TYPE", r5) 

(declare-const var1689!3 var608)
(declare-const var2348 String)
(declare-const var2362!1 String)
(define-const var540 String var3954_getVisitorReturnType/-842398340) ; Statement: $r6 = staticinvoke <org.javacc.jjtree.JJTreeOptions: java.lang.String getVisitorReturnType()>() 
(assert true)
(define-const var4 Bool (= var540 "void")) ; Statement: $z0 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>("void") 
(define-const var3034 var2197 (var2197_valueOf/1602327315 var4)) ; Statement: $r7 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>($z0) 
;(assert (var3216_put/1464166817 (cast-from-var608-to-var3216 var1689!3) (cast-from-String-to-var3864 "VISITOR_RETURN_TYPE_VOID") (cast-from-var2197-to-var3864 var3034))) ; Statement: interfaceinvoke $r2.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>("VISITOR_RETURN_TYPE_VOID", $r7) 

(declare-const var1689!4 var608)
(declare-const var2018 String)
(declare-const var3034!1 var2197)
(define-const var3139 var2480 var2480-init) ; Statement: $r8 = new org.javacc.utils.OutputFileGenerator 
(assert true)
;(assert (<init>/1344994893 var3139 "/templates/MultiNode.template" (cast-from-var608-to-var3216 var1689!4))) ; Statement: specialinvoke $r8.<org.javacc.utils.OutputFileGenerator: void <init>(java.lang.String,java.util.Map)>("/templates/MultiNode.template", $r2) 

(declare-const var3139!1 var2480)
(declare-const var626 String)
(declare-const var1689!5 var608)
(assert true)
;(assert (generate/-1718254023 var3139!1 var2061!1)) ; Statement: virtualinvoke $r8.<org.javacc.utils.OutputFileGenerator: void generate(java.io.PrintWriter)>(r1) 

(declare-const var3139!2 var2480)
(declare-const var2061!2 var2232)
(assert true)
;(assert (close/2116439267 var2061!2)) ; Statement: virtualinvoke r1.<java.io.PrintWriter: void close()>() 

(declare-const var2061!3 var2232)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getPrintWriter/-1782232853=([org.javacc.parser.OutputFile], java.io.PrintWriter), var1224_generatePrologue/-899895352=([java.io.PrintWriter], void), var608-init=([], java.util.HashMap), var3637_getOptions/298379990=([], java.util.Map), <init>/-1344032113=([java.util.HashMap, java.util.Map], void), var3216_put/1464166817=([java.util.Map, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-var608-to-var3216=([java.util.HashMap], java.util.Map), cast-from-String-to-var3864=([java.lang.String], java.lang.Object), var3954_getVisitorReturnType/-842398340=([], java.lang.String), var2197_valueOf/1602327315=([boolean], java.lang.Boolean), cast-from-var2197-to-var3864=([java.lang.Boolean], java.lang.Object), var2480-init=([], org.javacc.utils.OutputFileGenerator), <init>/1344994893=([org.javacc.utils.OutputFileGenerator, java.lang.String, java.util.Map], void), generate/-1718254023=([org.javacc.utils.OutputFileGenerator, java.io.PrintWriter], void), close/2116439267=([java.io.PrintWriter], void)}
; {var67=org.javacc.parser.OutputFile, var2943=r0, var2362=r5, var36=null_type, var2232=java.io.PrintWriter, var2061=r1, var1224=org.javacc.jjtree.NodeFiles, var608=java.util.HashMap, var1689=$r2, var3216=java.util.Map, var3637=org.javacc.parser.Options, var3626=$r3, var1430=org.javacc.jjtree.JJTreeGlobals, var3546=$r4, var3864=java.lang.Object, var2536="PARSER_NAME", var2348="NODE_TYPE", var3954=org.javacc.jjtree.JJTreeOptions, var540=$r6, var4=$z0, var2197=java.lang.Boolean, var3034=$r7, var2018="VISITOR_RETURN_TYPE_VOID", var2480=org.javacc.utils.OutputFileGenerator, var3139=$r8, var626="/templates/MultiNode.template"}
; {org.javacc.parser.OutputFile=var67, r0=var2943, r5=var2362, null_type=var36, java.io.PrintWriter=var2232, r1=var2061, org.javacc.jjtree.NodeFiles=var1224, java.util.HashMap=var608, $r2=var1689, java.util.Map=var3216, org.javacc.parser.Options=var3637, $r3=var3626, org.javacc.jjtree.JJTreeGlobals=var1430, $r4=var3546, java.lang.Object=var3864, "PARSER_NAME"=var2536, "NODE_TYPE"=var2348, org.javacc.jjtree.JJTreeOptions=var3954, $r6=var540, $z0=var4, java.lang.Boolean=var2197, $r7=var3034, "VISITOR_RETURN_TYPE_VOID"=var2018, org.javacc.utils.OutputFileGenerator=var2480, $r8=var3139, "/templates/MultiNode.template"=var626}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: org.javacc.parser.OutputFile;	r5 := @parameter1: java.lang.String;	r1 = virtualinvoke r0.<org.javacc.parser.OutputFile: java.io.PrintWriter getPrintWriter()>();	staticinvoke <org.javacc.jjtree.NodeFiles: void generatePrologue(java.io.PrintWriter)>(r1);	$r2 = new java.util.HashMap;	$r3 = staticinvoke <org.javacc.parser.Options: java.util.Map getOptions()>();	specialinvoke $r2.<java.util.HashMap: void <init>(java.util.Map)>($r3);	$r4 = <org.javacc.jjtree.JJTreeGlobals: java.lang.String parserName>;	interfaceinvoke $r2.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>("PARSER_NAME", $r4);	interfaceinvoke $r2.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>("NODE_TYPE", r5);	$r6 = staticinvoke <org.javacc.jjtree.JJTreeOptions: java.lang.String getVisitorReturnType()>();	$z0 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>("void");	$r7 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>($z0);	interfaceinvoke $r2.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>("VISITOR_RETURN_TYPE_VOID", $r7);	$r8 = new org.javacc.utils.OutputFileGenerator;	specialinvoke $r8.<org.javacc.utils.OutputFileGenerator: void <init>(java.lang.String,java.util.Map)>("/templates/MultiNode.template", $r2);	virtualinvoke $r8.<org.javacc.utils.OutputFileGenerator: void generate(java.io.PrintWriter)>(r1);	virtualinvoke r1.<java.io.PrintWriter: void close()>();	return
;block_num 1