(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2473 0)
(declare-sort var1455 0)
(declare-sort var237 0)
(declare-sort var3866 0)
(declare-sort var3436 0)
(declare-sort var2756 0)
(declare-sort var2276 0)
(declare-sort var2924 0)
(declare-sort var1433 0)
(declare-sort var2862 0)
(declare-sort var1921 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getPrintWriter/-1782232853 (var2473) var1455)
(declare-fun var237_generatePrologue/-899895352 (var1455) void)
(declare-fun var3866-init () var3866)
(declare-fun var2756_getOptions/298379990 () var3436)
(declare-fun <init>/-1344032113 (var3866 var3436) void)
(declare-fun var3436_put/1464166817 (var3436 var2924 var2924) var2924)
(declare-fun cast-from-var3866-to-var3436 (var3866) var3436)
(declare-fun cast-from-String-to-var2924 (String) var2924)
(declare-fun var1433_getVisitorReturnType/-842398340 () String)
(declare-fun var2862_valueOf/1602327315 (Bool) var2862)
(declare-fun cast-from-var2862-to-var2924 (var2862) var2924)
(declare-fun var1921-init () var1921)
(declare-fun <init>/1344994893 (var1921 String var3436) void)
(declare-fun generate/-1718254023 (var1921 var1455) void)
(declare-fun close/2116439267 (var1455) void)
(declare-const null-var2473 var2473)
(declare-const var2276-parserName String)
(declare-const var3573 var2473) ; Statement: r0 := @parameter0: org.javacc.parser.OutputFile 
(assert (not (= var3573 null-var2473)))
(assert true)
(define-const var3553 var1455 (getPrintWriter/-1782232853 var3573)) ; Statement: r1 = virtualinvoke r0.<org.javacc.parser.OutputFile: java.io.PrintWriter getPrintWriter()>() 
;(assert (var237_generatePrologue/-899895352 var3553)) ; Statement: staticinvoke <org.javacc.jjtree.NodeFiles: void generatePrologue(java.io.PrintWriter)>(r1) 

(declare-const var3553!1 var1455)
(define-const var55 var3866 var3866-init) ; Statement: $r2 = new java.util.HashMap 
(define-const var2534 var3436 var2756_getOptions/298379990) ; Statement: $r3 = staticinvoke <org.javacc.parser.Options: java.util.Map getOptions()>() 
(assert true)
;(assert (<init>/-1344032113 var55 var2534)) ; Statement: specialinvoke $r2.<java.util.HashMap: void <init>(java.util.Map)>($r3) 

(declare-const var55!1 var3866)
(declare-const var2534!1 var3436)
(define-const var3954 String var2276-parserName) ; Statement: $r4 = <org.javacc.jjtree.JJTreeGlobals: java.lang.String parserName> 
;(assert (var3436_put/1464166817 (cast-from-var3866-to-var3436 var55!1) (cast-from-String-to-var2924 "PARSER_NAME") (cast-from-String-to-var2924 var3954))) ; Statement: interfaceinvoke $r2.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>("PARSER_NAME", $r4) 

(declare-const var55!2 var3866)
(declare-const var223 String)
(declare-const var3954!1 String)
(define-const var1243 String var1433_getVisitorReturnType/-842398340) ; Statement: $r5 = staticinvoke <org.javacc.jjtree.JJTreeOptions: java.lang.String getVisitorReturnType()>() 
(assert true)
(define-const var3290 Bool (= var1243 "void")) ; Statement: $z0 = virtualinvoke $r5.<java.lang.String: boolean equals(java.lang.Object)>("void") 
(define-const var1683 var2862 (var2862_valueOf/1602327315 var3290)) ; Statement: $r6 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>($z0) 
;(assert (var3436_put/1464166817 (cast-from-var3866-to-var3436 var55!2) (cast-from-String-to-var2924 "VISITOR_RETURN_TYPE_VOID") (cast-from-var2862-to-var2924 var1683))) ; Statement: interfaceinvoke $r2.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>("VISITOR_RETURN_TYPE_VOID", $r6) 

(declare-const var55!3 var3866)
(declare-const var755 String)
(declare-const var1683!1 var2862)
(define-const var2842 var1921 var1921-init) ; Statement: $r7 = new org.javacc.utils.OutputFileGenerator 
(assert true)
;(assert (<init>/1344994893 var2842 "/templates/SimpleNode.template" (cast-from-var3866-to-var3436 var55!3))) ; Statement: specialinvoke $r7.<org.javacc.utils.OutputFileGenerator: void <init>(java.lang.String,java.util.Map)>("/templates/SimpleNode.template", $r2) 

(declare-const var2842!1 var1921)
(declare-const var1767 String)
(declare-const var55!4 var3866)
(assert true)
;(assert (generate/-1718254023 var2842!1 var3553!1)) ; Statement: virtualinvoke $r7.<org.javacc.utils.OutputFileGenerator: void generate(java.io.PrintWriter)>(r1) 

(declare-const var2842!2 var1921)
(declare-const var3553!2 var1455)
(assert true)
;(assert (close/2116439267 var3553!2)) ; Statement: virtualinvoke r1.<java.io.PrintWriter: void close()>() 

(declare-const var3553!3 var1455)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getPrintWriter/-1782232853=([org.javacc.parser.OutputFile], java.io.PrintWriter), var237_generatePrologue/-899895352=([java.io.PrintWriter], void), var3866-init=([], java.util.HashMap), var2756_getOptions/298379990=([], java.util.Map), <init>/-1344032113=([java.util.HashMap, java.util.Map], void), var3436_put/1464166817=([java.util.Map, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-var3866-to-var3436=([java.util.HashMap], java.util.Map), cast-from-String-to-var2924=([java.lang.String], java.lang.Object), var1433_getVisitorReturnType/-842398340=([], java.lang.String), var2862_valueOf/1602327315=([boolean], java.lang.Boolean), cast-from-var2862-to-var2924=([java.lang.Boolean], java.lang.Object), var1921-init=([], org.javacc.utils.OutputFileGenerator), <init>/1344994893=([org.javacc.utils.OutputFileGenerator, java.lang.String, java.util.Map], void), generate/-1718254023=([org.javacc.utils.OutputFileGenerator, java.io.PrintWriter], void), close/2116439267=([java.io.PrintWriter], void)}
; {var2473=org.javacc.parser.OutputFile, var3573=r0, var1455=java.io.PrintWriter, var3553=r1, var237=org.javacc.jjtree.NodeFiles, var3866=java.util.HashMap, var55=$r2, var3436=java.util.Map, var2756=org.javacc.parser.Options, var2534=$r3, var2276=org.javacc.jjtree.JJTreeGlobals, var3954=$r4, var2924=java.lang.Object, var223="PARSER_NAME", var1433=org.javacc.jjtree.JJTreeOptions, var1243=$r5, var3290=$z0, var2862=java.lang.Boolean, var1683=$r6, var755="VISITOR_RETURN_TYPE_VOID", var1921=org.javacc.utils.OutputFileGenerator, var2842=$r7, var1767="/templates/SimpleNode.template"}
; {org.javacc.parser.OutputFile=var2473, r0=var3573, java.io.PrintWriter=var1455, r1=var3553, org.javacc.jjtree.NodeFiles=var237, java.util.HashMap=var3866, $r2=var55, java.util.Map=var3436, org.javacc.parser.Options=var2756, $r3=var2534, org.javacc.jjtree.JJTreeGlobals=var2276, $r4=var3954, java.lang.Object=var2924, "PARSER_NAME"=var223, org.javacc.jjtree.JJTreeOptions=var1433, $r5=var1243, $z0=var3290, java.lang.Boolean=var2862, $r6=var1683, "VISITOR_RETURN_TYPE_VOID"=var755, org.javacc.utils.OutputFileGenerator=var1921, $r7=var2842, "/templates/SimpleNode.template"=var1767}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: org.javacc.parser.OutputFile;	r1 = virtualinvoke r0.<org.javacc.parser.OutputFile: java.io.PrintWriter getPrintWriter()>();	staticinvoke <org.javacc.jjtree.NodeFiles: void generatePrologue(java.io.PrintWriter)>(r1);	$r2 = new java.util.HashMap;	$r3 = staticinvoke <org.javacc.parser.Options: java.util.Map getOptions()>();	specialinvoke $r2.<java.util.HashMap: void <init>(java.util.Map)>($r3);	$r4 = <org.javacc.jjtree.JJTreeGlobals: java.lang.String parserName>;	interfaceinvoke $r2.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>("PARSER_NAME", $r4);	$r5 = staticinvoke <org.javacc.jjtree.JJTreeOptions: java.lang.String getVisitorReturnType()>();	$z0 = virtualinvoke $r5.<java.lang.String: boolean equals(java.lang.Object)>("void");	$r6 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>($z0);	interfaceinvoke $r2.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>("VISITOR_RETURN_TYPE_VOID", $r6);	$r7 = new org.javacc.utils.OutputFileGenerator;	specialinvoke $r7.<org.javacc.utils.OutputFileGenerator: void <init>(java.lang.String,java.util.Map)>("/templates/SimpleNode.template", $r2);	virtualinvoke $r7.<org.javacc.utils.OutputFileGenerator: void generate(java.io.PrintWriter)>(r1);	virtualinvoke r1.<java.io.PrintWriter: void close()>();	return
;block_num 1