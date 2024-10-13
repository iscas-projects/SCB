(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3065 0)
(declare-sort var231 0)
(declare-sort var1857 0)
(declare-sort var3196 0)
(declare-sort var1122 0)
(declare-sort var2199 0)
(declare-sort var1789 0)
(declare-sort var1919 0)
(declare-sort var793 0)
(declare-sort var3320 0)
(declare-sort var295 0)
(declare-sort var2598 0)
(declare-sort var2721 0)
(declare-sort var2286 0)
(declare-sort var3789 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getDescription/639719136 (var231) String)
(declare-fun matcher/468719934 (var3196 String) var1122)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun matches/-149940873 (var1122) Bool)
(declare-fun var2199_checkState/1095365836 (Bool String var1789) void)
(declare-fun cast-from-String-to-var1789 (String) var1789)
(declare-fun group/-653887691 (var1122 Int) String)
(declare-fun getNode/1659036172 (var231) var1919)
(declare-fun isQualifiedName/358135215 (var1919) Bool)
(declare-fun getQualifiedName/48314856 (var1919) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun var2199_checkState/-499612547 (Bool String var1789 var1789) void)
(declare-fun cast-from-var1919-to-var1789 (var1919) var1789)
(declare-fun compiler/-1646976390 (var3065) var793)
(declare-fun getSourceName/21548920 (var231) String)
(declare-fun getScriptNode/-2009922238 (var793 String) var1919)
(declare-fun getMetadataForScript/-1584289664 (var3065 var1919) var3320)
(declare-fun var295-init () var295)
(declare-fun <init>/-1911655441 (var295 var793) void)
(declare-fun var2598-init () var2598)
(declare-fun <init>/-1574478190 (var2598 var1919 var295) void)
(declare-fun var2721-init () var2721)
(declare-fun <init>/-1552361871 (var2721) void)
(declare-fun attachMatchedNodeInfo/223256563 (var2721 var1919 var793) var2721)
(declare-fun addImport/-1252127567 (var2721 var2598 String var1857 var3320) var2721)
(declare-fun getAlias/-1883926512 (var3320 String) String)
(declare-fun build/-1745487932 (var2721) var3789)
(declare-const null-var3065 var3065)
(declare-const null-var231 var231)
(declare-const null-var1857 var1857)
(declare-const var3065-MISSING_REQUIRE var3196)
(declare-const null-String String)
(declare-const var1497 var3065) ; Statement: r9 := @this: com.google.javascript.refactoring.ErrorToFixMapper 
(assert (not (= var1497 null-var3065)))
(declare-const var3555 var231) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.JSError 
(assert (not (= var3555 null-var231)))
(declare-const var1595 var1857) ; Statement: r19 := @parameter1: com.google.javascript.refactoring.SuggestedFix$ImportType 
(assert (not (= var1595 null-var1857)))
(define-const var3472 var3196 var3065-MISSING_REQUIRE) ; Statement: $r1 = <com.google.javascript.refactoring.ErrorToFixMapper: java.util.regex.Pattern MISSING_REQUIRE> 
(assert true)
(define-const var791 String (getDescription/639719136 var3555)) ; Statement: $r2 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: java.lang.String getDescription()>() 
(assert true)
(define-const var3758 var1122 (matcher/468719934 var3472 (cast-from-String-to-String var791))) ; Statement: r3 = virtualinvoke $r1.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>($r2) 
(assert true)
(define-const var1606 Bool (matches/-149940873 var3758)) ; Statement: $z0 = virtualinvoke r3.<java.util.regex.Matcher: boolean matches()>() 
(assert true)
(define-const var2098 String (getDescription/639719136 var3555)) ; Statement: $r4 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: java.lang.String getDescription()>() 
;(assert (var2199_checkState/1095365836 var1606 "Unexpected error description: %s" (cast-from-String-to-var1789 var2098))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean,java.lang.String,java.lang.Object)>($z0, "Unexpected error description: %s", $r4) 

(declare-const var1606!1 Bool)
(declare-const var1525 String)
(declare-const var2098!1 String)
(assert true)
(define-const var1920 String (group/-653887691 var3758 1)) ; Statement: r5 = virtualinvoke r3.<java.util.regex.Matcher: java.lang.String group(int)>(1) 
(assert true)
(define-const var707 var1919 (getNode/1659036172 var3555)) ; Statement: $r6 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: com.google.javascript.rhino.Node getNode()>() 
(assert true)
(define-const var2894 Bool (isQualifiedName/358135215 var707)) ; Statement: $z1 = virtualinvoke $r6.<com.google.javascript.rhino.Node: boolean isQualifiedName()>() 
 ; Statement: if $z1 == 0 goto $r7 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: com.google.javascript.rhino.Node getNode()>() 
(assert (not (= (ite var2894 1 0) 0))) ; Negate: Cond: $z1 == 0  
(assert true)
(define-const var466 var1919 (getNode/1659036172 var3555)) ; Statement: $r27 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: com.google.javascript.rhino.Node getNode()>() 
(assert true)
(define-const var2666 String (getQualifiedName/48314856 var466)) ; Statement: $r32 = virtualinvoke $r27.<com.google.javascript.rhino.Node: java.lang.String getQualifiedName()>() 
 ; Statement: goto [?= $z2 = virtualinvoke $r32.<java.lang.String: boolean startsWith(java.lang.String)>(r5)] 
(assert true) ; Non Conditional
(assert true)
(define-const var1002 Bool (startsWith/-1785782452 var2666 var1920)) ; Statement: $z2 = virtualinvoke $r32.<java.lang.String: boolean startsWith(java.lang.String)>(r5) 
(assert true)
(define-const var2052 var1919 (getNode/1659036172 var3555)) ; Statement: $r8 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: com.google.javascript.rhino.Node getNode()>() 
;(assert (var2199_checkState/-499612547 var1002 "Expected error location %s to start with namespace <%s>" (cast-from-var1919-to-var1789 var2052) (cast-from-String-to-var1789 var1920))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean,java.lang.String,java.lang.Object,java.lang.Object)>($z2, "Expected error location %s to start with namespace <%s>", $r8, r5) 

(declare-const var1002!1 Bool)
(declare-const var1994 String)
(declare-const var2052!1 var1919)
(declare-const var1920!1 String)
(define-const var2482 var793 (compiler/-1646976390 var1497)) ; Statement: $r10 = r9.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.jscomp.AbstractCompiler compiler> 
(assert true)
(define-const var3408 String (getSourceName/21548920 var3555)) ; Statement: $r11 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: java.lang.String getSourceName()>() 
(assert true)
(define-const var3249 var1919 (getScriptNode/-2009922238 var2482 var3408)) ; Statement: $r28 = virtualinvoke $r10.<com.google.javascript.jscomp.AbstractCompiler: com.google.javascript.rhino.Node getScriptNode(java.lang.String)>($r11) 
(assert true)
(define-const var2439 var3320 (getMetadataForScript/-1584289664 var1497 var3249)) ; Statement: $r29 = virtualinvoke r9.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.refactoring.ScriptMetadata getMetadataForScript(com.google.javascript.rhino.Node)>($r28) 
(define-const var2135 var295 var295-init) ; Statement: $r12 = new com.google.javascript.refactoring.NodeMetadata 
(define-const var3524 var793 (compiler/-1646976390 var1497)) ; Statement: $r13 = r9.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.jscomp.AbstractCompiler compiler> 
(assert true)
;(assert (<init>/-1911655441 var2135 var3524)) ; Statement: specialinvoke $r12.<com.google.javascript.refactoring.NodeMetadata: void <init>(com.google.javascript.jscomp.AbstractCompiler)>($r13) 

(declare-const var2135!1 var295)
(declare-const var3524!1 var793)
(define-const var205 var2598 var2598-init) ; Statement: $r14 = new com.google.javascript.refactoring.Match 
(assert true)
(define-const var1589 var1919 (getNode/1659036172 var3555)) ; Statement: $r15 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: com.google.javascript.rhino.Node getNode()>() 
(assert true)
;(assert (<init>/-1574478190 var205 var1589 var2135!1)) ; Statement: specialinvoke $r14.<com.google.javascript.refactoring.Match: void <init>(com.google.javascript.rhino.Node,com.google.javascript.refactoring.NodeMetadata)>($r15, $r12) 

(declare-const var205!1 var2598)
(declare-const var1589!1 var1919)
(declare-const var2135!2 var295)
(define-const var3469 var2721 var2721-init) ; Statement: $r16 = new com.google.javascript.refactoring.SuggestedFix$Builder 
(assert true)
;(assert (<init>/-1552361871 var3469)) ; Statement: specialinvoke $r16.<com.google.javascript.refactoring.SuggestedFix$Builder: void <init>()>() 

(declare-const var3469!1 var2721)
(assert true)
(define-const var2807 var1919 (getNode/1659036172 var3555)) ; Statement: $r18 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: com.google.javascript.rhino.Node getNode()>() 
(define-const var992 var793 (compiler/-1646976390 var1497)) ; Statement: $r17 = r9.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.jscomp.AbstractCompiler compiler> 
(assert true)
(define-const var2670 var2721 (attachMatchedNodeInfo/223256563 var3469!1 var2807 var992)) ; Statement: $r20 = virtualinvoke $r16.<com.google.javascript.refactoring.SuggestedFix$Builder: com.google.javascript.refactoring.SuggestedFix$Builder attachMatchedNodeInfo(com.google.javascript.rhino.Node,com.google.javascript.jscomp.AbstractCompiler)>($r18, $r17) 
(assert true)
(define-const var1703 var2721 (addImport/-1252127567 var2670 var205!1 var1920!1 var1595 var2439)) ; Statement: $r30 = virtualinvoke $r20.<com.google.javascript.refactoring.SuggestedFix$Builder: com.google.javascript.refactoring.SuggestedFix$Builder addImport(com.google.javascript.refactoring.Match,java.lang.String,com.google.javascript.refactoring.SuggestedFix$ImportType,com.google.javascript.refactoring.ScriptMetadata)>($r14, r5, r19, $r29) 
(assert true)
(define-const var2919 String (getAlias/-1883926512 var2439 var1920!1)) ; Statement: $r31 = virtualinvoke $r29.<com.google.javascript.refactoring.ScriptMetadata: java.lang.String getAlias(java.lang.String)>(r5) 
 ; Statement: if $r31 == null goto $r21 = virtualinvoke $r30.<com.google.javascript.refactoring.SuggestedFix$Builder: com.google.javascript.refactoring.SuggestedFix build()>() 
(assert (= var2919 null-String)) ; Cond: $r31 == null 
(assert true)
(define-const var546 var3789 (build/-1745487932 var1703)) ; Statement: $r21 = virtualinvoke $r30.<com.google.javascript.refactoring.SuggestedFix$Builder: com.google.javascript.refactoring.SuggestedFix build()>() 
 ; Statement: return $r21 
(check-sat)
(get-model)
(get-unsat-core)
; {getDescription/639719136=([com.google.javascript.jscomp.JSError], java.lang.String), matcher/468719934=([java.util.regex.Pattern, java.lang.CharSequence], java.util.regex.Matcher), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), matches/-149940873=([java.util.regex.Matcher], boolean), var2199_checkState/1095365836=([boolean, java.lang.String, java.lang.Object], void), cast-from-String-to-var1789=([java.lang.String], java.lang.Object), group/-653887691=([java.util.regex.Matcher, int], java.lang.String), getNode/1659036172=([com.google.javascript.jscomp.JSError], com.google.javascript.rhino.Node), isQualifiedName/358135215=([com.google.javascript.rhino.Node], boolean), getQualifiedName/48314856=([com.google.javascript.rhino.Node], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), var2199_checkState/-499612547=([boolean, java.lang.String, java.lang.Object, java.lang.Object], void), cast-from-var1919-to-var1789=([com.google.javascript.rhino.Node], java.lang.Object), compiler/-1646976390=([com.google.javascript.refactoring.ErrorToFixMapper], com.google.javascript.jscomp.AbstractCompiler), getSourceName/21548920=([com.google.javascript.jscomp.JSError], java.lang.String), getScriptNode/-2009922238=([com.google.javascript.jscomp.AbstractCompiler, java.lang.String], com.google.javascript.rhino.Node), getMetadataForScript/-1584289664=([com.google.javascript.refactoring.ErrorToFixMapper, com.google.javascript.rhino.Node], com.google.javascript.refactoring.ScriptMetadata), var295-init=([], com.google.javascript.refactoring.NodeMetadata), <init>/-1911655441=([com.google.javascript.refactoring.NodeMetadata, com.google.javascript.jscomp.AbstractCompiler], void), var2598-init=([], com.google.javascript.refactoring.Match), <init>/-1574478190=([com.google.javascript.refactoring.Match, com.google.javascript.rhino.Node, com.google.javascript.refactoring.NodeMetadata], void), var2721-init=([], com.google.javascript.refactoring.SuggestedFix$Builder), <init>/-1552361871=([com.google.javascript.refactoring.SuggestedFix$Builder], void), attachMatchedNodeInfo/223256563=([com.google.javascript.refactoring.SuggestedFix$Builder, com.google.javascript.rhino.Node, com.google.javascript.jscomp.AbstractCompiler], com.google.javascript.refactoring.SuggestedFix$Builder), addImport/-1252127567=([com.google.javascript.refactoring.SuggestedFix$Builder, com.google.javascript.refactoring.Match, java.lang.String, com.google.javascript.refactoring.SuggestedFix$ImportType, com.google.javascript.refactoring.ScriptMetadata], com.google.javascript.refactoring.SuggestedFix$Builder), getAlias/-1883926512=([com.google.javascript.refactoring.ScriptMetadata, java.lang.String], java.lang.String), build/-1745487932=([com.google.javascript.refactoring.SuggestedFix$Builder], com.google.javascript.refactoring.SuggestedFix)}
; {var3065=com.google.javascript.refactoring.ErrorToFixMapper, var1497=r9, var231=com.google.javascript.jscomp.JSError, var3555=r0, var1857=com.google.javascript.refactoring.SuggestedFix$ImportType, var1595=r19, var3196=java.util.regex.Pattern, var3472=$r1, var791=$r2, var1122=java.util.regex.Matcher, var3758=r3, var1606=$z0, var2098=$r4, var2199=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var1789=java.lang.Object, var1525="Unexpected error description: %s", var1920=r5, var1919=com.google.javascript.rhino.Node, var707=$r6, var2894=$z1, var466=$r27, var2666=$r32, var1002=$z2, var2052=$r8, var1994="Expected error location %s to start with namespace <%s>", var793=com.google.javascript.jscomp.AbstractCompiler, var2482=$r10, var3408=$r11, var3249=$r28, var3320=com.google.javascript.refactoring.ScriptMetadata, var2439=$r29, var295=com.google.javascript.refactoring.NodeMetadata, var2135=$r12, var3524=$r13, var2598=com.google.javascript.refactoring.Match, var205=$r14, var1589=$r15, var2721=com.google.javascript.refactoring.SuggestedFix$Builder, var3469=$r16, var2807=$r18, var992=$r17, var2670=$r20, var1703=$r30, var2919=$r31, var2286=null_type, var3789=com.google.javascript.refactoring.SuggestedFix, var546=$r21}
; {com.google.javascript.refactoring.ErrorToFixMapper=var3065, r9=var1497, com.google.javascript.jscomp.JSError=var231, r0=var3555, com.google.javascript.refactoring.SuggestedFix$ImportType=var1857, r19=var1595, java.util.regex.Pattern=var3196, $r1=var3472, $r2=var791, java.util.regex.Matcher=var1122, r3=var3758, $z0=var1606, $r4=var2098, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var2199, java.lang.Object=var1789, "Unexpected error description: %s"=var1525, r5=var1920, com.google.javascript.rhino.Node=var1919, $r6=var707, $z1=var2894, $r27=var466, $r32=var2666, $z2=var1002, $r8=var2052, "Expected error location %s to start with namespace <%s>"=var1994, com.google.javascript.jscomp.AbstractCompiler=var793, $r10=var2482, $r11=var3408, $r28=var3249, com.google.javascript.refactoring.ScriptMetadata=var3320, $r29=var2439, com.google.javascript.refactoring.NodeMetadata=var295, $r12=var2135, $r13=var3524, com.google.javascript.refactoring.Match=var2598, $r14=var205, $r15=var1589, com.google.javascript.refactoring.SuggestedFix$Builder=var2721, $r16=var3469, $r18=var2807, $r17=var992, $r20=var2670, $r30=var1703, $r31=var2919, null_type=var2286, com.google.javascript.refactoring.SuggestedFix=var3789, $r21=var546}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r9 := @this: com.google.javascript.refactoring.ErrorToFixMapper;	r0 := @parameter0: com.google.javascript.jscomp.JSError;	r19 := @parameter1: com.google.javascript.refactoring.SuggestedFix$ImportType;	$r1 = <com.google.javascript.refactoring.ErrorToFixMapper: java.util.regex.Pattern MISSING_REQUIRE>;	$r2 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: java.lang.String getDescription()>();	r3 = virtualinvoke $r1.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>($r2);	$z0 = virtualinvoke r3.<java.util.regex.Matcher: boolean matches()>();	$r4 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: java.lang.String getDescription()>();	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean,java.lang.String,java.lang.Object)>($z0, "Unexpected error description: %s", $r4);	r5 = virtualinvoke r3.<java.util.regex.Matcher: java.lang.String group(int)>(1);	$r6 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: com.google.javascript.rhino.Node getNode()>();	$z1 = virtualinvoke $r6.<com.google.javascript.rhino.Node: boolean isQualifiedName()>();	if $z1 == 0 goto $r7 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: com.google.javascript.rhino.Node getNode()>();	$r27 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: com.google.javascript.rhino.Node getNode()>();	$r32 = virtualinvoke $r27.<com.google.javascript.rhino.Node: java.lang.String getQualifiedName()>();	goto [?= $z2 = virtualinvoke $r32.<java.lang.String: boolean startsWith(java.lang.String)>(r5)];	$z2 = virtualinvoke $r32.<java.lang.String: boolean startsWith(java.lang.String)>(r5);	$r8 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: com.google.javascript.rhino.Node getNode()>();	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean,java.lang.String,java.lang.Object,java.lang.Object)>($z2, "Expected error location %s to start with namespace <%s>", $r8, r5);	$r10 = r9.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.jscomp.AbstractCompiler compiler>;	$r11 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: java.lang.String getSourceName()>();	$r28 = virtualinvoke $r10.<com.google.javascript.jscomp.AbstractCompiler: com.google.javascript.rhino.Node getScriptNode(java.lang.String)>($r11);	$r29 = virtualinvoke r9.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.refactoring.ScriptMetadata getMetadataForScript(com.google.javascript.rhino.Node)>($r28);	$r12 = new com.google.javascript.refactoring.NodeMetadata;	$r13 = r9.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.jscomp.AbstractCompiler compiler>;	specialinvoke $r12.<com.google.javascript.refactoring.NodeMetadata: void <init>(com.google.javascript.jscomp.AbstractCompiler)>($r13);	$r14 = new com.google.javascript.refactoring.Match;	$r15 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: com.google.javascript.rhino.Node getNode()>();	specialinvoke $r14.<com.google.javascript.refactoring.Match: void <init>(com.google.javascript.rhino.Node,com.google.javascript.refactoring.NodeMetadata)>($r15, $r12);	$r16 = new com.google.javascript.refactoring.SuggestedFix$Builder;	specialinvoke $r16.<com.google.javascript.refactoring.SuggestedFix$Builder: void <init>()>();	$r18 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: com.google.javascript.rhino.Node getNode()>();	$r17 = r9.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.jscomp.AbstractCompiler compiler>;	$r20 = virtualinvoke $r16.<com.google.javascript.refactoring.SuggestedFix$Builder: com.google.javascript.refactoring.SuggestedFix$Builder attachMatchedNodeInfo(com.google.javascript.rhino.Node,com.google.javascript.jscomp.AbstractCompiler)>($r18, $r17);	$r30 = virtualinvoke $r20.<com.google.javascript.refactoring.SuggestedFix$Builder: com.google.javascript.refactoring.SuggestedFix$Builder addImport(com.google.javascript.refactoring.Match,java.lang.String,com.google.javascript.refactoring.SuggestedFix$ImportType,com.google.javascript.refactoring.ScriptMetadata)>($r14, r5, r19, $r29);	$r31 = virtualinvoke $r29.<com.google.javascript.refactoring.ScriptMetadata: java.lang.String getAlias(java.lang.String)>(r5);	if $r31 == null goto $r21 = virtualinvoke $r30.<com.google.javascript.refactoring.SuggestedFix$Builder: com.google.javascript.refactoring.SuggestedFix build()>();	$r21 = virtualinvoke $r30.<com.google.javascript.refactoring.SuggestedFix$Builder: com.google.javascript.refactoring.SuggestedFix build()>();	return $r21
;block_num 4