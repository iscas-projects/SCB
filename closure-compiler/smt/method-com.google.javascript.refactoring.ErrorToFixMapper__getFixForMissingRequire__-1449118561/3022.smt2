(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var614 0)
(declare-sort var545 0)
(declare-sort var3334 0)
(declare-sort var3261 0)
(declare-sort var3911 0)
(declare-sort var2294 0)
(declare-sort var48 0)
(declare-sort var2063 0)
(declare-sort var2377 0)
(declare-sort var1713 0)
(declare-sort var1859 0)
(declare-sort var922 0)
(declare-sort var1070 0)
(declare-sort var1650 0)
(declare-sort var3283 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getDescription/639719136 (var545) String)
(declare-fun matcher/468719934 (var3261 String) var3911)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun matches/-149940873 (var3911) Bool)
(declare-fun var2294_checkState/1095365836 (Bool String var48) void)
(declare-fun cast-from-String-to-var48 (String) var48)
(declare-fun group/-653887691 (var3911 Int) String)
(declare-fun getNode/1659036172 (var545) var2063)
(declare-fun isQualifiedName/358135215 (var2063) Bool)
(declare-fun getString/-897720134 (var2063) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun var2294_checkState/-499612547 (Bool String var48 var48) void)
(declare-fun cast-from-var2063-to-var48 (var2063) var48)
(declare-fun compiler/-1646976390 (var614) var2377)
(declare-fun getSourceName/21548920 (var545) String)
(declare-fun getScriptNode/-2009922238 (var2377 String) var2063)
(declare-fun getMetadataForScript/-1584289664 (var614 var2063) var1713)
(declare-fun var1859-init () var1859)
(declare-fun <init>/-1911655441 (var1859 var2377) void)
(declare-fun var922-init () var922)
(declare-fun <init>/-1574478190 (var922 var2063 var1859) void)
(declare-fun var1070-init () var1070)
(declare-fun <init>/-1552361871 (var1070) void)
(declare-fun attachMatchedNodeInfo/223256563 (var1070 var2063 var2377) var1070)
(declare-fun addImport/-1252127567 (var1070 var922 String var3334 var1713) var1070)
(declare-fun getAlias/-1883926512 (var1713 String) String)
(declare-fun build/-1745487932 (var1070) var3283)
(declare-const null-var614 var614)
(declare-const null-var545 var545)
(declare-const null-var3334 var3334)
(declare-const var614-MISSING_REQUIRE var3261)
(declare-const null-String String)
(declare-const var1043 var614) ; Statement: r9 := @this: com.google.javascript.refactoring.ErrorToFixMapper 
(assert (not (= var1043 null-var614)))
(declare-const var3006 var545) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.JSError 
(assert (not (= var3006 null-var545)))
(declare-const var2383 var3334) ; Statement: r19 := @parameter1: com.google.javascript.refactoring.SuggestedFix$ImportType 
(assert (not (= var2383 null-var3334)))
(define-const var1961 var3261 var614-MISSING_REQUIRE) ; Statement: $r1 = <com.google.javascript.refactoring.ErrorToFixMapper: java.util.regex.Pattern MISSING_REQUIRE> 
(assert true)
(define-const var2507 String (getDescription/639719136 var3006)) ; Statement: $r2 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: java.lang.String getDescription()>() 
(assert true)
(define-const var1102 var3911 (matcher/468719934 var1961 (cast-from-String-to-String var2507))) ; Statement: r3 = virtualinvoke $r1.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>($r2) 
(assert true)
(define-const var398 Bool (matches/-149940873 var1102)) ; Statement: $z0 = virtualinvoke r3.<java.util.regex.Matcher: boolean matches()>() 
(assert true)
(define-const var1658 String (getDescription/639719136 var3006)) ; Statement: $r4 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: java.lang.String getDescription()>() 
;(assert (var2294_checkState/1095365836 var398 "Unexpected error description: %s" (cast-from-String-to-var48 var1658))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean,java.lang.String,java.lang.Object)>($z0, "Unexpected error description: %s", $r4) 

(declare-const var398!1 Bool)
(declare-const var682 String)
(declare-const var1658!1 String)
(assert true)
(define-const var3148 String (group/-653887691 var1102 1)) ; Statement: r5 = virtualinvoke r3.<java.util.regex.Matcher: java.lang.String group(int)>(1) 
(assert true)
(define-const var3228 var2063 (getNode/1659036172 var3006)) ; Statement: $r6 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: com.google.javascript.rhino.Node getNode()>() 
(assert true)
(define-const var150 Bool (isQualifiedName/358135215 var3228)) ; Statement: $z1 = virtualinvoke $r6.<com.google.javascript.rhino.Node: boolean isQualifiedName()>() 
 ; Statement: if $z1 == 0 goto $r7 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: com.google.javascript.rhino.Node getNode()>() 
(assert (= (ite var150 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var969 var2063 (getNode/1659036172 var3006)) ; Statement: $r7 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: com.google.javascript.rhino.Node getNode()>() 
(assert true)
(define-const var1421 String (getString/-897720134 var969)) ; Statement: $r32 = virtualinvoke $r7.<com.google.javascript.rhino.Node: java.lang.String getString()>() 
(assert true) ; Non Conditional
(assert true)
(define-const var3057 Bool (startsWith/-1785782452 var1421 var3148)) ; Statement: $z2 = virtualinvoke $r32.<java.lang.String: boolean startsWith(java.lang.String)>(r5) 
(assert true)
(define-const var1480 var2063 (getNode/1659036172 var3006)) ; Statement: $r8 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: com.google.javascript.rhino.Node getNode()>() 
;(assert (var2294_checkState/-499612547 var3057 "Expected error location %s to start with namespace <%s>" (cast-from-var2063-to-var48 var1480) (cast-from-String-to-var48 var3148))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean,java.lang.String,java.lang.Object,java.lang.Object)>($z2, "Expected error location %s to start with namespace <%s>", $r8, r5) 

(declare-const var3057!1 Bool)
(declare-const var3225 String)
(declare-const var1480!1 var2063)
(declare-const var3148!1 String)
(define-const var1481 var2377 (compiler/-1646976390 var1043)) ; Statement: $r10 = r9.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.jscomp.AbstractCompiler compiler> 
(assert true)
(define-const var1783 String (getSourceName/21548920 var3006)) ; Statement: $r11 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: java.lang.String getSourceName()>() 
(assert true)
(define-const var365 var2063 (getScriptNode/-2009922238 var1481 var1783)) ; Statement: $r28 = virtualinvoke $r10.<com.google.javascript.jscomp.AbstractCompiler: com.google.javascript.rhino.Node getScriptNode(java.lang.String)>($r11) 
(assert true)
(define-const var1120 var1713 (getMetadataForScript/-1584289664 var1043 var365)) ; Statement: $r29 = virtualinvoke r9.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.refactoring.ScriptMetadata getMetadataForScript(com.google.javascript.rhino.Node)>($r28) 
(define-const var1526 var1859 var1859-init) ; Statement: $r12 = new com.google.javascript.refactoring.NodeMetadata 
(define-const var1975 var2377 (compiler/-1646976390 var1043)) ; Statement: $r13 = r9.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.jscomp.AbstractCompiler compiler> 
(assert true)
;(assert (<init>/-1911655441 var1526 var1975)) ; Statement: specialinvoke $r12.<com.google.javascript.refactoring.NodeMetadata: void <init>(com.google.javascript.jscomp.AbstractCompiler)>($r13) 

(declare-const var1526!1 var1859)
(declare-const var1975!1 var2377)
(define-const var712 var922 var922-init) ; Statement: $r14 = new com.google.javascript.refactoring.Match 
(assert true)
(define-const var3742 var2063 (getNode/1659036172 var3006)) ; Statement: $r15 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: com.google.javascript.rhino.Node getNode()>() 
(assert true)
;(assert (<init>/-1574478190 var712 var3742 var1526!1)) ; Statement: specialinvoke $r14.<com.google.javascript.refactoring.Match: void <init>(com.google.javascript.rhino.Node,com.google.javascript.refactoring.NodeMetadata)>($r15, $r12) 

(declare-const var712!1 var922)
(declare-const var3742!1 var2063)
(declare-const var1526!2 var1859)
(define-const var1749 var1070 var1070-init) ; Statement: $r16 = new com.google.javascript.refactoring.SuggestedFix$Builder 
(assert true)
;(assert (<init>/-1552361871 var1749)) ; Statement: specialinvoke $r16.<com.google.javascript.refactoring.SuggestedFix$Builder: void <init>()>() 

(declare-const var1749!1 var1070)
(assert true)
(define-const var75 var2063 (getNode/1659036172 var3006)) ; Statement: $r18 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: com.google.javascript.rhino.Node getNode()>() 
(define-const var2477 var2377 (compiler/-1646976390 var1043)) ; Statement: $r17 = r9.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.jscomp.AbstractCompiler compiler> 
(assert true)
(define-const var980 var1070 (attachMatchedNodeInfo/223256563 var1749!1 var75 var2477)) ; Statement: $r20 = virtualinvoke $r16.<com.google.javascript.refactoring.SuggestedFix$Builder: com.google.javascript.refactoring.SuggestedFix$Builder attachMatchedNodeInfo(com.google.javascript.rhino.Node,com.google.javascript.jscomp.AbstractCompiler)>($r18, $r17) 
(assert true)
(define-const var1887 var1070 (addImport/-1252127567 var980 var712!1 var3148!1 var2383 var1120)) ; Statement: $r30 = virtualinvoke $r20.<com.google.javascript.refactoring.SuggestedFix$Builder: com.google.javascript.refactoring.SuggestedFix$Builder addImport(com.google.javascript.refactoring.Match,java.lang.String,com.google.javascript.refactoring.SuggestedFix$ImportType,com.google.javascript.refactoring.ScriptMetadata)>($r14, r5, r19, $r29) 
(assert true)
(define-const var1159 String (getAlias/-1883926512 var1120 var3148!1)) ; Statement: $r31 = virtualinvoke $r29.<com.google.javascript.refactoring.ScriptMetadata: java.lang.String getAlias(java.lang.String)>(r5) 
 ; Statement: if $r31 == null goto $r21 = virtualinvoke $r30.<com.google.javascript.refactoring.SuggestedFix$Builder: com.google.javascript.refactoring.SuggestedFix build()>() 
(assert (= var1159 null-String)) ; Cond: $r31 == null 
(assert true)
(define-const var3474 var3283 (build/-1745487932 var1887)) ; Statement: $r21 = virtualinvoke $r30.<com.google.javascript.refactoring.SuggestedFix$Builder: com.google.javascript.refactoring.SuggestedFix build()>() 
 ; Statement: return $r21 
(check-sat)
(get-model)
(get-unsat-core)
; {getDescription/639719136=([com.google.javascript.jscomp.JSError], java.lang.String), matcher/468719934=([java.util.regex.Pattern, java.lang.CharSequence], java.util.regex.Matcher), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), matches/-149940873=([java.util.regex.Matcher], boolean), var2294_checkState/1095365836=([boolean, java.lang.String, java.lang.Object], void), cast-from-String-to-var48=([java.lang.String], java.lang.Object), group/-653887691=([java.util.regex.Matcher, int], java.lang.String), getNode/1659036172=([com.google.javascript.jscomp.JSError], com.google.javascript.rhino.Node), isQualifiedName/358135215=([com.google.javascript.rhino.Node], boolean), getString/-897720134=([com.google.javascript.rhino.Node], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), var2294_checkState/-499612547=([boolean, java.lang.String, java.lang.Object, java.lang.Object], void), cast-from-var2063-to-var48=([com.google.javascript.rhino.Node], java.lang.Object), compiler/-1646976390=([com.google.javascript.refactoring.ErrorToFixMapper], com.google.javascript.jscomp.AbstractCompiler), getSourceName/21548920=([com.google.javascript.jscomp.JSError], java.lang.String), getScriptNode/-2009922238=([com.google.javascript.jscomp.AbstractCompiler, java.lang.String], com.google.javascript.rhino.Node), getMetadataForScript/-1584289664=([com.google.javascript.refactoring.ErrorToFixMapper, com.google.javascript.rhino.Node], com.google.javascript.refactoring.ScriptMetadata), var1859-init=([], com.google.javascript.refactoring.NodeMetadata), <init>/-1911655441=([com.google.javascript.refactoring.NodeMetadata, com.google.javascript.jscomp.AbstractCompiler], void), var922-init=([], com.google.javascript.refactoring.Match), <init>/-1574478190=([com.google.javascript.refactoring.Match, com.google.javascript.rhino.Node, com.google.javascript.refactoring.NodeMetadata], void), var1070-init=([], com.google.javascript.refactoring.SuggestedFix$Builder), <init>/-1552361871=([com.google.javascript.refactoring.SuggestedFix$Builder], void), attachMatchedNodeInfo/223256563=([com.google.javascript.refactoring.SuggestedFix$Builder, com.google.javascript.rhino.Node, com.google.javascript.jscomp.AbstractCompiler], com.google.javascript.refactoring.SuggestedFix$Builder), addImport/-1252127567=([com.google.javascript.refactoring.SuggestedFix$Builder, com.google.javascript.refactoring.Match, java.lang.String, com.google.javascript.refactoring.SuggestedFix$ImportType, com.google.javascript.refactoring.ScriptMetadata], com.google.javascript.refactoring.SuggestedFix$Builder), getAlias/-1883926512=([com.google.javascript.refactoring.ScriptMetadata, java.lang.String], java.lang.String), build/-1745487932=([com.google.javascript.refactoring.SuggestedFix$Builder], com.google.javascript.refactoring.SuggestedFix)}
; {var614=com.google.javascript.refactoring.ErrorToFixMapper, var1043=r9, var545=com.google.javascript.jscomp.JSError, var3006=r0, var3334=com.google.javascript.refactoring.SuggestedFix$ImportType, var2383=r19, var3261=java.util.regex.Pattern, var1961=$r1, var2507=$r2, var3911=java.util.regex.Matcher, var1102=r3, var398=$z0, var1658=$r4, var2294=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var48=java.lang.Object, var682="Unexpected error description: %s", var3148=r5, var2063=com.google.javascript.rhino.Node, var3228=$r6, var150=$z1, var969=$r7, var1421=$r32, var3057=$z2, var1480=$r8, var3225="Expected error location %s to start with namespace <%s>", var2377=com.google.javascript.jscomp.AbstractCompiler, var1481=$r10, var1783=$r11, var365=$r28, var1713=com.google.javascript.refactoring.ScriptMetadata, var1120=$r29, var1859=com.google.javascript.refactoring.NodeMetadata, var1526=$r12, var1975=$r13, var922=com.google.javascript.refactoring.Match, var712=$r14, var3742=$r15, var1070=com.google.javascript.refactoring.SuggestedFix$Builder, var1749=$r16, var75=$r18, var2477=$r17, var980=$r20, var1887=$r30, var1159=$r31, var1650=null_type, var3283=com.google.javascript.refactoring.SuggestedFix, var3474=$r21}
; {com.google.javascript.refactoring.ErrorToFixMapper=var614, r9=var1043, com.google.javascript.jscomp.JSError=var545, r0=var3006, com.google.javascript.refactoring.SuggestedFix$ImportType=var3334, r19=var2383, java.util.regex.Pattern=var3261, $r1=var1961, $r2=var2507, java.util.regex.Matcher=var3911, r3=var1102, $z0=var398, $r4=var1658, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var2294, java.lang.Object=var48, "Unexpected error description: %s"=var682, r5=var3148, com.google.javascript.rhino.Node=var2063, $r6=var3228, $z1=var150, $r7=var969, $r32=var1421, $z2=var3057, $r8=var1480, "Expected error location %s to start with namespace <%s>"=var3225, com.google.javascript.jscomp.AbstractCompiler=var2377, $r10=var1481, $r11=var1783, $r28=var365, com.google.javascript.refactoring.ScriptMetadata=var1713, $r29=var1120, com.google.javascript.refactoring.NodeMetadata=var1859, $r12=var1526, $r13=var1975, com.google.javascript.refactoring.Match=var922, $r14=var712, $r15=var3742, com.google.javascript.refactoring.SuggestedFix$Builder=var1070, $r16=var1749, $r18=var75, $r17=var2477, $r20=var980, $r30=var1887, $r31=var1159, null_type=var1650, com.google.javascript.refactoring.SuggestedFix=var3283, $r21=var3474}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r9 := @this: com.google.javascript.refactoring.ErrorToFixMapper;	r0 := @parameter0: com.google.javascript.jscomp.JSError;	r19 := @parameter1: com.google.javascript.refactoring.SuggestedFix$ImportType;	$r1 = <com.google.javascript.refactoring.ErrorToFixMapper: java.util.regex.Pattern MISSING_REQUIRE>;	$r2 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: java.lang.String getDescription()>();	r3 = virtualinvoke $r1.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>($r2);	$z0 = virtualinvoke r3.<java.util.regex.Matcher: boolean matches()>();	$r4 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: java.lang.String getDescription()>();	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean,java.lang.String,java.lang.Object)>($z0, "Unexpected error description: %s", $r4);	r5 = virtualinvoke r3.<java.util.regex.Matcher: java.lang.String group(int)>(1);	$r6 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: com.google.javascript.rhino.Node getNode()>();	$z1 = virtualinvoke $r6.<com.google.javascript.rhino.Node: boolean isQualifiedName()>();	if $z1 == 0 goto $r7 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: com.google.javascript.rhino.Node getNode()>();	$r7 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: com.google.javascript.rhino.Node getNode()>();	$r32 = virtualinvoke $r7.<com.google.javascript.rhino.Node: java.lang.String getString()>();	$z2 = virtualinvoke $r32.<java.lang.String: boolean startsWith(java.lang.String)>(r5);	$r8 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: com.google.javascript.rhino.Node getNode()>();	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean,java.lang.String,java.lang.Object,java.lang.Object)>($z2, "Expected error location %s to start with namespace <%s>", $r8, r5);	$r10 = r9.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.jscomp.AbstractCompiler compiler>;	$r11 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: java.lang.String getSourceName()>();	$r28 = virtualinvoke $r10.<com.google.javascript.jscomp.AbstractCompiler: com.google.javascript.rhino.Node getScriptNode(java.lang.String)>($r11);	$r29 = virtualinvoke r9.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.refactoring.ScriptMetadata getMetadataForScript(com.google.javascript.rhino.Node)>($r28);	$r12 = new com.google.javascript.refactoring.NodeMetadata;	$r13 = r9.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.jscomp.AbstractCompiler compiler>;	specialinvoke $r12.<com.google.javascript.refactoring.NodeMetadata: void <init>(com.google.javascript.jscomp.AbstractCompiler)>($r13);	$r14 = new com.google.javascript.refactoring.Match;	$r15 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: com.google.javascript.rhino.Node getNode()>();	specialinvoke $r14.<com.google.javascript.refactoring.Match: void <init>(com.google.javascript.rhino.Node,com.google.javascript.refactoring.NodeMetadata)>($r15, $r12);	$r16 = new com.google.javascript.refactoring.SuggestedFix$Builder;	specialinvoke $r16.<com.google.javascript.refactoring.SuggestedFix$Builder: void <init>()>();	$r18 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: com.google.javascript.rhino.Node getNode()>();	$r17 = r9.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.jscomp.AbstractCompiler compiler>;	$r20 = virtualinvoke $r16.<com.google.javascript.refactoring.SuggestedFix$Builder: com.google.javascript.refactoring.SuggestedFix$Builder attachMatchedNodeInfo(com.google.javascript.rhino.Node,com.google.javascript.jscomp.AbstractCompiler)>($r18, $r17);	$r30 = virtualinvoke $r20.<com.google.javascript.refactoring.SuggestedFix$Builder: com.google.javascript.refactoring.SuggestedFix$Builder addImport(com.google.javascript.refactoring.Match,java.lang.String,com.google.javascript.refactoring.SuggestedFix$ImportType,com.google.javascript.refactoring.ScriptMetadata)>($r14, r5, r19, $r29);	$r31 = virtualinvoke $r29.<com.google.javascript.refactoring.ScriptMetadata: java.lang.String getAlias(java.lang.String)>(r5);	if $r31 == null goto $r21 = virtualinvoke $r30.<com.google.javascript.refactoring.SuggestedFix$Builder: com.google.javascript.refactoring.SuggestedFix build()>();	$r21 = virtualinvoke $r30.<com.google.javascript.refactoring.SuggestedFix$Builder: com.google.javascript.refactoring.SuggestedFix build()>();	return $r21
;block_num 4