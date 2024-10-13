(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2386 0)
(declare-sort var3247 0)
(declare-sort var400 0)
(declare-sort var245 0)
(declare-sort var2872 0)
(declare-sort var631 0)
(declare-sort var1276 0)
(declare-sort var2370 0)
(declare-sort var468 0)
(declare-sort var3347 0)
(declare-sort var3194 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3247_getName/1167124893 (var3247) String)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-fun var1276-init () var1276)
(declare-fun sourceComments/-368363211 (var2386) var2370)
(declare-fun <init>/1621898254 (var1276 var3247 var400 var245 var2370 var2872 var631) void)
(declare-fun transformDispatcher/179838982 (var1276) var468)
(declare-fun process/742311596 (var468 var3194) var3347)
(declare-fun cast-from-var2386-to-var3194 (var2386) var3194)
(declare-fun setSourceInfo/2020733251 (var1276 var3347 var3194) void)
(declare-fun setFileOverviewJsDoc/-785906186 (var1276 var3347) void)
(declare-fun validateAll/12702475 (var1276 var3347) void)
(declare-fun resultNode/179838982 (var1276) var3347)
(declare-const null-var2386 var2386)
(declare-const null-var3247 var3247)
(declare-const null-var400 var400)
(declare-const null-var245 var245)
(declare-const null-var2872 var2872)
(declare-const var631-NORMAL var631)
(declare-const null-var2370 var2370)
(declare-const null-var1276 var1276)
(declare-const var1659 var2386) ; Statement: r5 := @parameter0: com.google.javascript.jscomp.parsing.parser.trees.ProgramTree 
(assert (not (= var1659 null-var2386)))
(declare-const var1652 var3247) ; Statement: r0 := @parameter1: com.google.javascript.rhino.StaticSourceFile 
(assert (not (= var1652 null-var3247)))
(declare-const var2073 var400) ; Statement: r3 := @parameter2: com.google.javascript.jscomp.parsing.Config 
(assert (not (= var2073 null-var400)))
(declare-const var1305 var245) ; Statement: r4 := @parameter3: com.google.javascript.rhino.ErrorReporter 
(assert (not (= var1305 null-var245)))
(declare-const var552 var2872) ; Statement: r6 := @parameter4: com.google.javascript.jscomp.parsing.parser.SourceFile 
(assert (not (= var552 null-var2872)))
(define-const var3389 String (var3247_getName/1167124893 var1652)) ; Statement: $r1 = interfaceinvoke r0.<com.google.javascript.rhino.StaticSourceFile: java.lang.String getName()>() 
(assert true)
(define-const var2611 Bool (endsWith/985337093 var3389 ".closure.js")) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean endsWith(java.lang.String)>(".closure.js") 
 ; Statement: if $z0 == 0 goto $r19 = <com.google.javascript.jscomp.parsing.JsDocInfoParser$JsDocSourceKind: com.google.javascript.jscomp.parsing.JsDocInfoParser$JsDocSourceKind NORMAL> 
(assert (= (ite var2611 1 0) 0)) ; Cond: $z0 == 0 
(define-const var5 var631 var631-NORMAL) ; Statement: $r19 = <com.google.javascript.jscomp.parsing.JsDocInfoParser$JsDocSourceKind: com.google.javascript.jscomp.parsing.JsDocInfoParser$JsDocSourceKind NORMAL> 
(assert true) ; Non Conditional
(define-const var1899 var1276 var1276-init) ; Statement: $r2 = new com.google.javascript.jscomp.parsing.IRFactory 
(define-const var2582 var2370 (sourceComments/-368363211 var1659)) ; Statement: $r7 = r5.<com.google.javascript.jscomp.parsing.parser.trees.ProgramTree: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList sourceComments> 
(assert true)
;(assert (<init>/1621898254 var1899 var1652 var2073 var1305 var2582 var552 var5)) ; Statement: specialinvoke $r2.<com.google.javascript.jscomp.parsing.IRFactory: void <init>(com.google.javascript.rhino.StaticSourceFile,com.google.javascript.jscomp.parsing.Config,com.google.javascript.rhino.ErrorReporter,com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList,com.google.javascript.jscomp.parsing.parser.SourceFile,com.google.javascript.jscomp.parsing.JsDocInfoParser$JsDocSourceKind)>(r0, r3, r4, $r7, r6, $r19) 

(declare-const var1899!1 var1276)
(declare-const var1652!1 var3247)
(declare-const var2073!1 var400)
(declare-const var1305!1 var245)
(declare-const var2582!1 var2370)
(declare-const var552!1 var2872)
(declare-const var5!1 var631)
(define-const var3893 var468 (transformDispatcher/179838982 var1899!1)) ; Statement: $r8 = $r2.<com.google.javascript.jscomp.parsing.IRFactory: com.google.javascript.jscomp.parsing.IRFactory$TransformDispatcher transformDispatcher> 
(assert true)
(define-const var857 var3347 (process/742311596 var3893 (cast-from-var2386-to-var3194 var1659))) ; Statement: $r18 = virtualinvoke $r8.<com.google.javascript.jscomp.parsing.IRFactory$TransformDispatcher: com.google.javascript.rhino.Node process(com.google.javascript.jscomp.parsing.parser.trees.ParseTree)>(r5) 
(assert true)
;(assert (setSourceInfo/2020733251 var1899!1 var857 (cast-from-var2386-to-var3194 var1659))) ; Statement: virtualinvoke $r2.<com.google.javascript.jscomp.parsing.IRFactory: void setSourceInfo(com.google.javascript.rhino.Node,com.google.javascript.jscomp.parsing.parser.trees.ParseTree)>($r18, r5) 

(declare-const var1899!2 var1276)
(declare-const var857!1 var3347)
(declare-const var1659!1 var2386)
(define-const var2280 var2370 (sourceComments/-368363211 var1659!1)) ; Statement: $r9 = r5.<com.google.javascript.jscomp.parsing.parser.trees.ProgramTree: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList sourceComments> 
 ; Statement: if $r9 == null goto virtualinvoke $r2.<com.google.javascript.jscomp.parsing.IRFactory: void setFileOverviewJsDoc(com.google.javascript.rhino.Node)>($r18) 
(assert (= var2280 null-var2370)) ; Cond: $r9 == null 
(assert true)
;(assert (setFileOverviewJsDoc/-785906186 var1899!2 var857!1)) ; Statement: virtualinvoke $r2.<com.google.javascript.jscomp.parsing.IRFactory: void setFileOverviewJsDoc(com.google.javascript.rhino.Node)>($r18) 

(declare-const var1899!3 var1276)
(declare-const var857!2 var3347)
(assert true)
;(assert (validateAll/12702475 var1899!3 var857!2)) ; Statement: virtualinvoke $r2.<com.google.javascript.jscomp.parsing.IRFactory: void validateAll(com.google.javascript.rhino.Node)>($r18) 

(declare-const var1899!4 var1276)
(declare-const var857!3 var3347)
(declare-const var1899!5 var1276)
(assert (not (= var1899!5 null-var1276)))
(assert (= (resultNode/179838982 var1899!5) var857!3)) ; Statement: $r2.<com.google.javascript.jscomp.parsing.IRFactory: com.google.javascript.rhino.Node resultNode> = $r18 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {var3247_getName/1167124893=([com.google.javascript.rhino.StaticSourceFile], java.lang.String), endsWith/985337093=([java.lang.String, java.lang.String], boolean), var1276-init=([], com.google.javascript.jscomp.parsing.IRFactory), sourceComments/-368363211=([com.google.javascript.jscomp.parsing.parser.trees.ProgramTree], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), <init>/1621898254=([com.google.javascript.jscomp.parsing.IRFactory, com.google.javascript.rhino.StaticSourceFile, com.google.javascript.jscomp.parsing.Config, com.google.javascript.rhino.ErrorReporter, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, com.google.javascript.jscomp.parsing.parser.SourceFile, com.google.javascript.jscomp.parsing.JsDocInfoParser$JsDocSourceKind], void), transformDispatcher/179838982=([com.google.javascript.jscomp.parsing.IRFactory], com.google.javascript.jscomp.parsing.IRFactory$TransformDispatcher), process/742311596=([com.google.javascript.jscomp.parsing.IRFactory$TransformDispatcher, com.google.javascript.jscomp.parsing.parser.trees.ParseTree], com.google.javascript.rhino.Node), cast-from-var2386-to-var3194=([com.google.javascript.jscomp.parsing.parser.trees.ProgramTree], com.google.javascript.jscomp.parsing.parser.trees.ParseTree), setSourceInfo/2020733251=([com.google.javascript.jscomp.parsing.IRFactory, com.google.javascript.rhino.Node, com.google.javascript.jscomp.parsing.parser.trees.ParseTree], void), setFileOverviewJsDoc/-785906186=([com.google.javascript.jscomp.parsing.IRFactory, com.google.javascript.rhino.Node], void), validateAll/12702475=([com.google.javascript.jscomp.parsing.IRFactory, com.google.javascript.rhino.Node], void), resultNode/179838982=([com.google.javascript.jscomp.parsing.IRFactory], com.google.javascript.rhino.Node)}
; {var2386=com.google.javascript.jscomp.parsing.parser.trees.ProgramTree, var1659=r5, var3247=com.google.javascript.rhino.StaticSourceFile, var1652=r0, var400=com.google.javascript.jscomp.parsing.Config, var2073=r3, var245=com.google.javascript.rhino.ErrorReporter, var1305=r4, var2872=com.google.javascript.jscomp.parsing.parser.SourceFile, var552=r6, var3389=$r1, var2611=$z0, var631=com.google.javascript.jscomp.parsing.JsDocInfoParser$JsDocSourceKind, var5=$r19, var1276=com.google.javascript.jscomp.parsing.IRFactory, var1899=$r2, var2370=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var2582=$r7, var468=com.google.javascript.jscomp.parsing.IRFactory$TransformDispatcher, var3893=$r8, var3347=com.google.javascript.rhino.Node, var3194=com.google.javascript.jscomp.parsing.parser.trees.ParseTree, var857=$r18, var2280=$r9}
; {com.google.javascript.jscomp.parsing.parser.trees.ProgramTree=var2386, r5=var1659, com.google.javascript.rhino.StaticSourceFile=var3247, r0=var1652, com.google.javascript.jscomp.parsing.Config=var400, r3=var2073, com.google.javascript.rhino.ErrorReporter=var245, r4=var1305, com.google.javascript.jscomp.parsing.parser.SourceFile=var2872, r6=var552, $r1=var3389, $z0=var2611, com.google.javascript.jscomp.parsing.JsDocInfoParser$JsDocSourceKind=var631, $r19=var5, com.google.javascript.jscomp.parsing.IRFactory=var1276, $r2=var1899, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var2370, $r7=var2582, com.google.javascript.jscomp.parsing.IRFactory$TransformDispatcher=var468, $r8=var3893, com.google.javascript.rhino.Node=var3347, com.google.javascript.jscomp.parsing.parser.trees.ParseTree=var3194, $r18=var857, $r9=var2280}
;seq <java.lang.String: boolean endsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 1}
;stmts r5 := @parameter0: com.google.javascript.jscomp.parsing.parser.trees.ProgramTree;	r0 := @parameter1: com.google.javascript.rhino.StaticSourceFile;	r3 := @parameter2: com.google.javascript.jscomp.parsing.Config;	r4 := @parameter3: com.google.javascript.rhino.ErrorReporter;	r6 := @parameter4: com.google.javascript.jscomp.parsing.parser.SourceFile;	$r1 = interfaceinvoke r0.<com.google.javascript.rhino.StaticSourceFile: java.lang.String getName()>();	$z0 = virtualinvoke $r1.<java.lang.String: boolean endsWith(java.lang.String)>(".closure.js");	if $z0 == 0 goto $r19 = <com.google.javascript.jscomp.parsing.JsDocInfoParser$JsDocSourceKind: com.google.javascript.jscomp.parsing.JsDocInfoParser$JsDocSourceKind NORMAL>;	$r19 = <com.google.javascript.jscomp.parsing.JsDocInfoParser$JsDocSourceKind: com.google.javascript.jscomp.parsing.JsDocInfoParser$JsDocSourceKind NORMAL>;	$r2 = new com.google.javascript.jscomp.parsing.IRFactory;	$r7 = r5.<com.google.javascript.jscomp.parsing.parser.trees.ProgramTree: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList sourceComments>;	specialinvoke $r2.<com.google.javascript.jscomp.parsing.IRFactory: void <init>(com.google.javascript.rhino.StaticSourceFile,com.google.javascript.jscomp.parsing.Config,com.google.javascript.rhino.ErrorReporter,com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList,com.google.javascript.jscomp.parsing.parser.SourceFile,com.google.javascript.jscomp.parsing.JsDocInfoParser$JsDocSourceKind)>(r0, r3, r4, $r7, r6, $r19);	$r8 = $r2.<com.google.javascript.jscomp.parsing.IRFactory: com.google.javascript.jscomp.parsing.IRFactory$TransformDispatcher transformDispatcher>;	$r18 = virtualinvoke $r8.<com.google.javascript.jscomp.parsing.IRFactory$TransformDispatcher: com.google.javascript.rhino.Node process(com.google.javascript.jscomp.parsing.parser.trees.ParseTree)>(r5);	virtualinvoke $r2.<com.google.javascript.jscomp.parsing.IRFactory: void setSourceInfo(com.google.javascript.rhino.Node,com.google.javascript.jscomp.parsing.parser.trees.ParseTree)>($r18, r5);	$r9 = r5.<com.google.javascript.jscomp.parsing.parser.trees.ProgramTree: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList sourceComments>;	if $r9 == null goto virtualinvoke $r2.<com.google.javascript.jscomp.parsing.IRFactory: void setFileOverviewJsDoc(com.google.javascript.rhino.Node)>($r18);	virtualinvoke $r2.<com.google.javascript.jscomp.parsing.IRFactory: void setFileOverviewJsDoc(com.google.javascript.rhino.Node)>($r18);	virtualinvoke $r2.<com.google.javascript.jscomp.parsing.IRFactory: void validateAll(com.google.javascript.rhino.Node)>($r18);	$r2.<com.google.javascript.jscomp.parsing.IRFactory: com.google.javascript.rhino.Node resultNode> = $r18;	return $r2
;block_num 4