(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3983 0)
(declare-sort var48 0)
(declare-sort var2182 0)
(declare-sort var2618 0)
(declare-sort var3168 0)
(declare-sort var1255 0)
(declare-sort var2797 0)
(declare-sort var3226 0)
(declare-sort var1956 0)
(declare-sort var1996 0)
(declare-sort var2872 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var48_getName/1167124893 (var48) String)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-fun var2797-init () var2797)
(declare-fun sourceComments/-368363211 (var3983) var3226)
(declare-fun <init>/1621898254 (var2797 var48 var2182 var2618 var3226 var3168 var1255) void)
(declare-fun transformDispatcher/179838982 (var2797) var1956)
(declare-fun process/742311596 (var1956 var2872) var1996)
(declare-fun cast-from-var3983-to-var2872 (var3983) var2872)
(declare-fun setSourceInfo/2020733251 (var2797 var1996 var2872) void)
(declare-fun setFileOverviewJsDoc/-785906186 (var2797 var1996) void)
(declare-fun validateAll/12702475 (var2797 var1996) void)
(declare-fun resultNode/179838982 (var2797) var1996)
(declare-const null-var3983 var3983)
(declare-const null-var48 var48)
(declare-const null-var2182 var2182)
(declare-const null-var2618 var2618)
(declare-const null-var3168 var3168)
(declare-const var1255-TSICKLE var1255)
(declare-const null-var3226 var3226)
(declare-const null-var2797 var2797)
(declare-const var3559 var3983) ; Statement: r5 := @parameter0: com.google.javascript.jscomp.parsing.parser.trees.ProgramTree 
(assert (not (= var3559 null-var3983)))
(declare-const var579 var48) ; Statement: r0 := @parameter1: com.google.javascript.rhino.StaticSourceFile 
(assert (not (= var579 null-var48)))
(declare-const var3774 var2182) ; Statement: r3 := @parameter2: com.google.javascript.jscomp.parsing.Config 
(assert (not (= var3774 null-var2182)))
(declare-const var1733 var2618) ; Statement: r4 := @parameter3: com.google.javascript.rhino.ErrorReporter 
(assert (not (= var1733 null-var2618)))
(declare-const var1225 var3168) ; Statement: r6 := @parameter4: com.google.javascript.jscomp.parsing.parser.SourceFile 
(assert (not (= var1225 null-var3168)))
(define-const var1693 String (var48_getName/1167124893 var579)) ; Statement: $r1 = interfaceinvoke r0.<com.google.javascript.rhino.StaticSourceFile: java.lang.String getName()>() 
(assert true)
(define-const var2631 Bool (endsWith/985337093 var1693 ".closure.js")) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean endsWith(java.lang.String)>(".closure.js") 
 ; Statement: if $z0 == 0 goto $r19 = <com.google.javascript.jscomp.parsing.JsDocInfoParser$JsDocSourceKind: com.google.javascript.jscomp.parsing.JsDocInfoParser$JsDocSourceKind NORMAL> 
(assert (not (= (ite var2631 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2718 var1255 var1255-TSICKLE) ; Statement: $r19 = <com.google.javascript.jscomp.parsing.JsDocInfoParser$JsDocSourceKind: com.google.javascript.jscomp.parsing.JsDocInfoParser$JsDocSourceKind TSICKLE> 
 ; Statement: goto [?= $r2 = new com.google.javascript.jscomp.parsing.IRFactory] 
(assert true) ; Non Conditional
(define-const var2406 var2797 var2797-init) ; Statement: $r2 = new com.google.javascript.jscomp.parsing.IRFactory 
(define-const var1317 var3226 (sourceComments/-368363211 var3559)) ; Statement: $r7 = r5.<com.google.javascript.jscomp.parsing.parser.trees.ProgramTree: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList sourceComments> 
(assert true)
;(assert (<init>/1621898254 var2406 var579 var3774 var1733 var1317 var1225 var2718)) ; Statement: specialinvoke $r2.<com.google.javascript.jscomp.parsing.IRFactory: void <init>(com.google.javascript.rhino.StaticSourceFile,com.google.javascript.jscomp.parsing.Config,com.google.javascript.rhino.ErrorReporter,com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList,com.google.javascript.jscomp.parsing.parser.SourceFile,com.google.javascript.jscomp.parsing.JsDocInfoParser$JsDocSourceKind)>(r0, r3, r4, $r7, r6, $r19) 

(declare-const var2406!1 var2797)
(declare-const var579!1 var48)
(declare-const var3774!1 var2182)
(declare-const var1733!1 var2618)
(declare-const var1317!1 var3226)
(declare-const var1225!1 var3168)
(declare-const var2718!1 var1255)
(define-const var1299 var1956 (transformDispatcher/179838982 var2406!1)) ; Statement: $r8 = $r2.<com.google.javascript.jscomp.parsing.IRFactory: com.google.javascript.jscomp.parsing.IRFactory$TransformDispatcher transformDispatcher> 
(assert true)
(define-const var3146 var1996 (process/742311596 var1299 (cast-from-var3983-to-var2872 var3559))) ; Statement: $r18 = virtualinvoke $r8.<com.google.javascript.jscomp.parsing.IRFactory$TransformDispatcher: com.google.javascript.rhino.Node process(com.google.javascript.jscomp.parsing.parser.trees.ParseTree)>(r5) 
(assert true)
;(assert (setSourceInfo/2020733251 var2406!1 var3146 (cast-from-var3983-to-var2872 var3559))) ; Statement: virtualinvoke $r2.<com.google.javascript.jscomp.parsing.IRFactory: void setSourceInfo(com.google.javascript.rhino.Node,com.google.javascript.jscomp.parsing.parser.trees.ParseTree)>($r18, r5) 

(declare-const var2406!2 var2797)
(declare-const var3146!1 var1996)
(declare-const var3559!1 var3983)
(define-const var2194 var3226 (sourceComments/-368363211 var3559!1)) ; Statement: $r9 = r5.<com.google.javascript.jscomp.parsing.parser.trees.ProgramTree: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList sourceComments> 
 ; Statement: if $r9 == null goto virtualinvoke $r2.<com.google.javascript.jscomp.parsing.IRFactory: void setFileOverviewJsDoc(com.google.javascript.rhino.Node)>($r18) 
(assert (= var2194 null-var3226)) ; Cond: $r9 == null 
(assert true)
;(assert (setFileOverviewJsDoc/-785906186 var2406!2 var3146!1)) ; Statement: virtualinvoke $r2.<com.google.javascript.jscomp.parsing.IRFactory: void setFileOverviewJsDoc(com.google.javascript.rhino.Node)>($r18) 

(declare-const var2406!3 var2797)
(declare-const var3146!2 var1996)
(assert true)
;(assert (validateAll/12702475 var2406!3 var3146!2)) ; Statement: virtualinvoke $r2.<com.google.javascript.jscomp.parsing.IRFactory: void validateAll(com.google.javascript.rhino.Node)>($r18) 

(declare-const var2406!4 var2797)
(declare-const var3146!3 var1996)
(declare-const var2406!5 var2797)
(assert (not (= var2406!5 null-var2797)))
(assert (= (resultNode/179838982 var2406!5) var3146!3)) ; Statement: $r2.<com.google.javascript.jscomp.parsing.IRFactory: com.google.javascript.rhino.Node resultNode> = $r18 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {var48_getName/1167124893=([com.google.javascript.rhino.StaticSourceFile], java.lang.String), endsWith/985337093=([java.lang.String, java.lang.String], boolean), var2797-init=([], com.google.javascript.jscomp.parsing.IRFactory), sourceComments/-368363211=([com.google.javascript.jscomp.parsing.parser.trees.ProgramTree], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), <init>/1621898254=([com.google.javascript.jscomp.parsing.IRFactory, com.google.javascript.rhino.StaticSourceFile, com.google.javascript.jscomp.parsing.Config, com.google.javascript.rhino.ErrorReporter, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, com.google.javascript.jscomp.parsing.parser.SourceFile, com.google.javascript.jscomp.parsing.JsDocInfoParser$JsDocSourceKind], void), transformDispatcher/179838982=([com.google.javascript.jscomp.parsing.IRFactory], com.google.javascript.jscomp.parsing.IRFactory$TransformDispatcher), process/742311596=([com.google.javascript.jscomp.parsing.IRFactory$TransformDispatcher, com.google.javascript.jscomp.parsing.parser.trees.ParseTree], com.google.javascript.rhino.Node), cast-from-var3983-to-var2872=([com.google.javascript.jscomp.parsing.parser.trees.ProgramTree], com.google.javascript.jscomp.parsing.parser.trees.ParseTree), setSourceInfo/2020733251=([com.google.javascript.jscomp.parsing.IRFactory, com.google.javascript.rhino.Node, com.google.javascript.jscomp.parsing.parser.trees.ParseTree], void), setFileOverviewJsDoc/-785906186=([com.google.javascript.jscomp.parsing.IRFactory, com.google.javascript.rhino.Node], void), validateAll/12702475=([com.google.javascript.jscomp.parsing.IRFactory, com.google.javascript.rhino.Node], void), resultNode/179838982=([com.google.javascript.jscomp.parsing.IRFactory], com.google.javascript.rhino.Node)}
; {var3983=com.google.javascript.jscomp.parsing.parser.trees.ProgramTree, var3559=r5, var48=com.google.javascript.rhino.StaticSourceFile, var579=r0, var2182=com.google.javascript.jscomp.parsing.Config, var3774=r3, var2618=com.google.javascript.rhino.ErrorReporter, var1733=r4, var3168=com.google.javascript.jscomp.parsing.parser.SourceFile, var1225=r6, var1693=$r1, var2631=$z0, var1255=com.google.javascript.jscomp.parsing.JsDocInfoParser$JsDocSourceKind, var2718=$r19, var2797=com.google.javascript.jscomp.parsing.IRFactory, var2406=$r2, var3226=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var1317=$r7, var1956=com.google.javascript.jscomp.parsing.IRFactory$TransformDispatcher, var1299=$r8, var1996=com.google.javascript.rhino.Node, var2872=com.google.javascript.jscomp.parsing.parser.trees.ParseTree, var3146=$r18, var2194=$r9}
; {com.google.javascript.jscomp.parsing.parser.trees.ProgramTree=var3983, r5=var3559, com.google.javascript.rhino.StaticSourceFile=var48, r0=var579, com.google.javascript.jscomp.parsing.Config=var2182, r3=var3774, com.google.javascript.rhino.ErrorReporter=var2618, r4=var1733, com.google.javascript.jscomp.parsing.parser.SourceFile=var3168, r6=var1225, $r1=var1693, $z0=var2631, com.google.javascript.jscomp.parsing.JsDocInfoParser$JsDocSourceKind=var1255, $r19=var2718, com.google.javascript.jscomp.parsing.IRFactory=var2797, $r2=var2406, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var3226, $r7=var1317, com.google.javascript.jscomp.parsing.IRFactory$TransformDispatcher=var1956, $r8=var1299, com.google.javascript.rhino.Node=var1996, com.google.javascript.jscomp.parsing.parser.trees.ParseTree=var2872, $r18=var3146, $r9=var2194}
;seq <java.lang.String: boolean endsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 1}
;stmts r5 := @parameter0: com.google.javascript.jscomp.parsing.parser.trees.ProgramTree;	r0 := @parameter1: com.google.javascript.rhino.StaticSourceFile;	r3 := @parameter2: com.google.javascript.jscomp.parsing.Config;	r4 := @parameter3: com.google.javascript.rhino.ErrorReporter;	r6 := @parameter4: com.google.javascript.jscomp.parsing.parser.SourceFile;	$r1 = interfaceinvoke r0.<com.google.javascript.rhino.StaticSourceFile: java.lang.String getName()>();	$z0 = virtualinvoke $r1.<java.lang.String: boolean endsWith(java.lang.String)>(".closure.js");	if $z0 == 0 goto $r19 = <com.google.javascript.jscomp.parsing.JsDocInfoParser$JsDocSourceKind: com.google.javascript.jscomp.parsing.JsDocInfoParser$JsDocSourceKind NORMAL>;	$r19 = <com.google.javascript.jscomp.parsing.JsDocInfoParser$JsDocSourceKind: com.google.javascript.jscomp.parsing.JsDocInfoParser$JsDocSourceKind TSICKLE>;	goto [?= $r2 = new com.google.javascript.jscomp.parsing.IRFactory];	$r2 = new com.google.javascript.jscomp.parsing.IRFactory;	$r7 = r5.<com.google.javascript.jscomp.parsing.parser.trees.ProgramTree: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList sourceComments>;	specialinvoke $r2.<com.google.javascript.jscomp.parsing.IRFactory: void <init>(com.google.javascript.rhino.StaticSourceFile,com.google.javascript.jscomp.parsing.Config,com.google.javascript.rhino.ErrorReporter,com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList,com.google.javascript.jscomp.parsing.parser.SourceFile,com.google.javascript.jscomp.parsing.JsDocInfoParser$JsDocSourceKind)>(r0, r3, r4, $r7, r6, $r19);	$r8 = $r2.<com.google.javascript.jscomp.parsing.IRFactory: com.google.javascript.jscomp.parsing.IRFactory$TransformDispatcher transformDispatcher>;	$r18 = virtualinvoke $r8.<com.google.javascript.jscomp.parsing.IRFactory$TransformDispatcher: com.google.javascript.rhino.Node process(com.google.javascript.jscomp.parsing.parser.trees.ParseTree)>(r5);	virtualinvoke $r2.<com.google.javascript.jscomp.parsing.IRFactory: void setSourceInfo(com.google.javascript.rhino.Node,com.google.javascript.jscomp.parsing.parser.trees.ParseTree)>($r18, r5);	$r9 = r5.<com.google.javascript.jscomp.parsing.parser.trees.ProgramTree: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList sourceComments>;	if $r9 == null goto virtualinvoke $r2.<com.google.javascript.jscomp.parsing.IRFactory: void setFileOverviewJsDoc(com.google.javascript.rhino.Node)>($r18);	virtualinvoke $r2.<com.google.javascript.jscomp.parsing.IRFactory: void setFileOverviewJsDoc(com.google.javascript.rhino.Node)>($r18);	virtualinvoke $r2.<com.google.javascript.jscomp.parsing.IRFactory: void validateAll(com.google.javascript.rhino.Node)>($r18);	$r2.<com.google.javascript.jscomp.parsing.IRFactory: com.google.javascript.rhino.Node resultNode> = $r18;	return $r2
;block_num 4