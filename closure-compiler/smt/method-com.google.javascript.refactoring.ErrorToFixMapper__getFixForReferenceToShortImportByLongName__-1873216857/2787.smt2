(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3449 0)
(declare-sort var3754 0)
(declare-sort var3356 0)
(declare-sort var3763 0)
(declare-sort var1056 0)
(declare-sort var2576 0)
(declare-sort var3503 0)
(declare-sort var2620 0)
(declare-sort var854 0)
(declare-sort var110 0)
(declare-sort var644 0)
(declare-sort var799 0)
(declare-sort var3448 0)
(declare-sort var1414 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3356-init () var3356)
(declare-fun <init>/-1552361871 (var3356) void)
(declare-fun getNode/1659036172 (var3754) var3763)
(declare-fun compiler/-1646976390 (var3449) var1056)
(declare-fun attachMatchedNodeInfo/223256563 (var3356 var3763 var1056) var3356)
(declare-fun var2576-init () var2576)
(declare-fun <init>/-1911655441 (var2576 var1056) void)
(declare-fun var3503-init () var3503)
(declare-fun <init>/-1574478190 (var3503 var3763 var2576) void)
(declare-fun getSourceName/21548920 (var3754) String)
(declare-fun getScriptNode/-2009922238 (var1056 String) var3763)
(declare-fun getMetadataForScript/-1584289664 (var3449 var3763) var2620)
(declare-fun getDescription/639719136 (var3754) String)
(declare-fun matcher/468719934 (var854 String) var110)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun matches/-149940873 (var110) Bool)
(declare-fun var644_checkState/1633726539 (Bool var799) void)
(declare-fun cast-from-String-to-var799 (String) var799)
(declare-fun group/-653887691 (var110 Int) String)
(declare-fun addGoogRequire/38505993 (var3356 var3503 String var2620) var3356)
(declare-fun getAlias/-1883926512 (var2620 String) String)
(declare-fun isQualifiedName/358135215 (var3763) Bool)
(declare-fun getQualifiedName/48314856 (var3763) String)
(define-fun replace/2138489945 ((s String) (old String) (new String)) String (str.replace_all s old new))
(declare-fun var3448_newQName/1842138164 (var1056 String) var3763)
(declare-fun replace/1095141889 (var3356 var3763 var3763 var1056) var3356)
(declare-fun build/-1745487932 (var3356) var1414)
(declare-const null-var3449 var3449)
(declare-const null-var3754 var3754)
(declare-const var3449-FULLY_QUALIFIED_NAME var854)
(declare-const var3449-USE_SHORT_NAME var854)
(declare-const var1412 var3449) ; Statement: r2 := @this: com.google.javascript.refactoring.ErrorToFixMapper 
(assert (not (= var1412 null-var3449)))
(declare-const var3910 var3754) ; Statement: r1 := @parameter0: com.google.javascript.jscomp.JSError 
(assert (not (= var3910 null-var3754)))
(define-const var1515 var3356 var3356-init) ; Statement: $r0 = new com.google.javascript.refactoring.SuggestedFix$Builder 
(assert true)
;(assert (<init>/-1552361871 var1515)) ; Statement: specialinvoke $r0.<com.google.javascript.refactoring.SuggestedFix$Builder: void <init>()>() 

(declare-const var1515!1 var3356)
(assert true)
(define-const var304 var3763 (getNode/1659036172 var3910)) ; Statement: $r4 = virtualinvoke r1.<com.google.javascript.jscomp.JSError: com.google.javascript.rhino.Node getNode()>() 
(define-const var2657 var1056 (compiler/-1646976390 var1412)) ; Statement: $r3 = r2.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.jscomp.AbstractCompiler compiler> 
(assert true)
(define-const var3629 var3356 (attachMatchedNodeInfo/223256563 var1515!1 var304 var2657)) ; Statement: r5 = virtualinvoke $r0.<com.google.javascript.refactoring.SuggestedFix$Builder: com.google.javascript.refactoring.SuggestedFix$Builder attachMatchedNodeInfo(com.google.javascript.rhino.Node,com.google.javascript.jscomp.AbstractCompiler)>($r4, $r3) 
(define-const var2460 var2576 var2576-init) ; Statement: $r6 = new com.google.javascript.refactoring.NodeMetadata 
(define-const var645 var1056 (compiler/-1646976390 var1412)) ; Statement: $r7 = r2.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.jscomp.AbstractCompiler compiler> 
(assert true)
;(assert (<init>/-1911655441 var2460 var645)) ; Statement: specialinvoke $r6.<com.google.javascript.refactoring.NodeMetadata: void <init>(com.google.javascript.jscomp.AbstractCompiler)>($r7) 

(declare-const var2460!1 var2576)
(declare-const var645!1 var1056)
(define-const var2065 var3503 var3503-init) ; Statement: $r8 = new com.google.javascript.refactoring.Match 
(assert true)
(define-const var1757 var3763 (getNode/1659036172 var3910)) ; Statement: $r9 = virtualinvoke r1.<com.google.javascript.jscomp.JSError: com.google.javascript.rhino.Node getNode()>() 
(assert true)
;(assert (<init>/-1574478190 var2065 var1757 var2460!1)) ; Statement: specialinvoke $r8.<com.google.javascript.refactoring.Match: void <init>(com.google.javascript.rhino.Node,com.google.javascript.refactoring.NodeMetadata)>($r9, $r6) 

(declare-const var2065!1 var3503)
(declare-const var1757!1 var3763)
(declare-const var2460!2 var2576)
(define-const var176 var1056 (compiler/-1646976390 var1412)) ; Statement: $r10 = r2.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.jscomp.AbstractCompiler compiler> 
(assert true)
(define-const var366 String (getSourceName/21548920 var3910)) ; Statement: $r11 = virtualinvoke r1.<com.google.javascript.jscomp.JSError: java.lang.String getSourceName()>() 
(assert true)
(define-const var871 var3763 (getScriptNode/-2009922238 var176 var366)) ; Statement: r12 = virtualinvoke $r10.<com.google.javascript.jscomp.AbstractCompiler: com.google.javascript.rhino.Node getScriptNode(java.lang.String)>($r11) 
(assert true)
(define-const var3469 var2620 (getMetadataForScript/-1584289664 var1412 var871)) ; Statement: r13 = virtualinvoke r2.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.refactoring.ScriptMetadata getMetadataForScript(com.google.javascript.rhino.Node)>(r12) 
(define-const var2703 var854 var3449-FULLY_QUALIFIED_NAME) ; Statement: $r14 = <com.google.javascript.refactoring.ErrorToFixMapper: java.util.regex.Pattern FULLY_QUALIFIED_NAME> 
(assert true)
(define-const var3613 String (getDescription/639719136 var3910)) ; Statement: $r15 = virtualinvoke r1.<com.google.javascript.jscomp.JSError: java.lang.String getDescription()>() 
(assert true)
(define-const var3323 var110 (matcher/468719934 var2703 (cast-from-String-to-String var3613))) ; Statement: r16 = virtualinvoke $r14.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>($r15) 
(assert true)
(define-const var3775 Bool (matches/-149940873 var3323)) ; Statement: $z0 = virtualinvoke r16.<java.util.regex.Matcher: boolean matches()>() 
(assert true)
(define-const var2195 String (getDescription/639719136 var3910)) ; Statement: $r17 = virtualinvoke r1.<com.google.javascript.jscomp.JSError: java.lang.String getDescription()>() 
;(assert (var644_checkState/1633726539 var3775 (cast-from-String-to-var799 var2195))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean,java.lang.Object)>($z0, $r17) 

(declare-const var3775!1 Bool)
(declare-const var2195!1 String)
(assert true)
(define-const var1866 String (group/-653887691 var3323 1)) ; Statement: r18 = virtualinvoke r16.<java.util.regex.Matcher: java.lang.String group(int)>(1) 
(define-const var241 var854 var3449-USE_SHORT_NAME) ; Statement: $r19 = <com.google.javascript.refactoring.ErrorToFixMapper: java.util.regex.Pattern USE_SHORT_NAME> 
(assert true)
(define-const var3141 String (getDescription/639719136 var3910)) ; Statement: $r20 = virtualinvoke r1.<com.google.javascript.jscomp.JSError: java.lang.String getDescription()>() 
(assert true)
(define-const var717 var110 (matcher/468719934 var241 (cast-from-String-to-String var3141))) ; Statement: r21 = virtualinvoke $r19.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>($r20) 
(assert true)
(define-const var620 Bool (matches/-149940873 var717)) ; Statement: $z1 = virtualinvoke r21.<java.util.regex.Matcher: boolean matches()>() 
 ; Statement: if $z1 == 0 goto virtualinvoke r5.<com.google.javascript.refactoring.SuggestedFix$Builder: com.google.javascript.refactoring.SuggestedFix$Builder addGoogRequire(com.google.javascript.refactoring.Match,java.lang.String,com.google.javascript.refactoring.ScriptMetadata)>($r8, r18, r13) 
(assert (= (ite var620 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
;(assert (addGoogRequire/38505993 var3629 var2065!1 var1866 var3469)) ; Statement: virtualinvoke r5.<com.google.javascript.refactoring.SuggestedFix$Builder: com.google.javascript.refactoring.SuggestedFix$Builder addGoogRequire(com.google.javascript.refactoring.Match,java.lang.String,com.google.javascript.refactoring.ScriptMetadata)>($r8, r18, r13) 

(declare-const var3629!1 var3356)
(declare-const var2065!2 var3503)
(declare-const var1866!1 String)
(declare-const var3469!1 var2620)
(assert true)
(define-const var3681 String (getAlias/-1883926512 var3469!1 var1866!1)) ; Statement: r32 = virtualinvoke r13.<com.google.javascript.refactoring.ScriptMetadata: java.lang.String getAlias(java.lang.String)>(r18) 
(assert true) ; Non Conditional
(assert true)
(define-const var1603 var3763 (getNode/1659036172 var3910)) ; Statement: $r22 = virtualinvoke r1.<com.google.javascript.jscomp.JSError: com.google.javascript.rhino.Node getNode()>() 
(assert true)
(define-const var3221 Bool (isQualifiedName/358135215 var1603)) ; Statement: $z2 = virtualinvoke $r22.<com.google.javascript.rhino.Node: boolean isQualifiedName()>() 
 ; Statement: if $z2 == 0 goto $r23 = virtualinvoke r1.<com.google.javascript.jscomp.JSError: com.google.javascript.rhino.Node getNode()>() 
(assert (not (= (ite var3221 1 0) 0))) ; Negate: Cond: $z2 == 0  
(assert true)
(define-const var210 var3763 (getNode/1659036172 var3910)) ; Statement: $r31 = virtualinvoke r1.<com.google.javascript.jscomp.JSError: com.google.javascript.rhino.Node getNode()>() 
(assert true)
(define-const var2003 String (getQualifiedName/48314856 var210)) ; Statement: $r33 = virtualinvoke $r31.<com.google.javascript.rhino.Node: java.lang.String getQualifiedName()>() 
 ; Statement: goto [?= $r28 = virtualinvoke r1.<com.google.javascript.jscomp.JSError: com.google.javascript.rhino.Node getNode()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var2424 var3763 (getNode/1659036172 var3910)) ; Statement: $r28 = virtualinvoke r1.<com.google.javascript.jscomp.JSError: com.google.javascript.rhino.Node getNode()>() 
(define-const var1459 var1056 (compiler/-1646976390 var1412)) ; Statement: $r24 = r2.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.jscomp.AbstractCompiler compiler> 
(assert true)
(define-const var1128 String (replace/2138489945 var2003 (cast-from-String-to-String var1866!1) (cast-from-String-to-String var3681))) ; Statement: $r25 = virtualinvoke $r33.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>(r18, r32) 
(define-const var3867 var3763 (var3448_newQName/1842138164 var1459 var1128)) ; Statement: $r27 = staticinvoke <com.google.javascript.jscomp.NodeUtil: com.google.javascript.rhino.Node newQName(com.google.javascript.jscomp.AbstractCompiler,java.lang.String)>($r24, $r25) 
(define-const var2724 var1056 (compiler/-1646976390 var1412)) ; Statement: $r26 = r2.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.jscomp.AbstractCompiler compiler> 
(assert true)
(define-const var1461 var3356 (replace/1095141889 var3629!1 var2424 var3867 var2724)) ; Statement: $r29 = virtualinvoke r5.<com.google.javascript.refactoring.SuggestedFix$Builder: com.google.javascript.refactoring.SuggestedFix$Builder replace(com.google.javascript.rhino.Node,com.google.javascript.rhino.Node,com.google.javascript.jscomp.AbstractCompiler)>($r28, $r27, $r26) 
(assert true)
(define-const var3504 var1414 (build/-1745487932 var1461)) ; Statement: $r30 = virtualinvoke $r29.<com.google.javascript.refactoring.SuggestedFix$Builder: com.google.javascript.refactoring.SuggestedFix build()>() 
 ; Statement: return $r30 
(check-sat)
(get-model)
(get-unsat-core)
; {var3356-init=([], com.google.javascript.refactoring.SuggestedFix$Builder), <init>/-1552361871=([com.google.javascript.refactoring.SuggestedFix$Builder], void), getNode/1659036172=([com.google.javascript.jscomp.JSError], com.google.javascript.rhino.Node), compiler/-1646976390=([com.google.javascript.refactoring.ErrorToFixMapper], com.google.javascript.jscomp.AbstractCompiler), attachMatchedNodeInfo/223256563=([com.google.javascript.refactoring.SuggestedFix$Builder, com.google.javascript.rhino.Node, com.google.javascript.jscomp.AbstractCompiler], com.google.javascript.refactoring.SuggestedFix$Builder), var2576-init=([], com.google.javascript.refactoring.NodeMetadata), <init>/-1911655441=([com.google.javascript.refactoring.NodeMetadata, com.google.javascript.jscomp.AbstractCompiler], void), var3503-init=([], com.google.javascript.refactoring.Match), <init>/-1574478190=([com.google.javascript.refactoring.Match, com.google.javascript.rhino.Node, com.google.javascript.refactoring.NodeMetadata], void), getSourceName/21548920=([com.google.javascript.jscomp.JSError], java.lang.String), getScriptNode/-2009922238=([com.google.javascript.jscomp.AbstractCompiler, java.lang.String], com.google.javascript.rhino.Node), getMetadataForScript/-1584289664=([com.google.javascript.refactoring.ErrorToFixMapper, com.google.javascript.rhino.Node], com.google.javascript.refactoring.ScriptMetadata), getDescription/639719136=([com.google.javascript.jscomp.JSError], java.lang.String), matcher/468719934=([java.util.regex.Pattern, java.lang.CharSequence], java.util.regex.Matcher), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), matches/-149940873=([java.util.regex.Matcher], boolean), var644_checkState/1633726539=([boolean, java.lang.Object], void), cast-from-String-to-var799=([java.lang.String], java.lang.Object), group/-653887691=([java.util.regex.Matcher, int], java.lang.String), addGoogRequire/38505993=([com.google.javascript.refactoring.SuggestedFix$Builder, com.google.javascript.refactoring.Match, java.lang.String, com.google.javascript.refactoring.ScriptMetadata], com.google.javascript.refactoring.SuggestedFix$Builder), getAlias/-1883926512=([com.google.javascript.refactoring.ScriptMetadata, java.lang.String], java.lang.String), isQualifiedName/358135215=([com.google.javascript.rhino.Node], boolean), getQualifiedName/48314856=([com.google.javascript.rhino.Node], java.lang.String), replace/2138489945=([java.lang.String, java.lang.CharSequence, java.lang.CharSequence], java.lang.String), var3448_newQName/1842138164=([com.google.javascript.jscomp.AbstractCompiler, java.lang.String], com.google.javascript.rhino.Node), replace/1095141889=([com.google.javascript.refactoring.SuggestedFix$Builder, com.google.javascript.rhino.Node, com.google.javascript.rhino.Node, com.google.javascript.jscomp.AbstractCompiler], com.google.javascript.refactoring.SuggestedFix$Builder), build/-1745487932=([com.google.javascript.refactoring.SuggestedFix$Builder], com.google.javascript.refactoring.SuggestedFix)}
; {var3449=com.google.javascript.refactoring.ErrorToFixMapper, var1412=r2, var3754=com.google.javascript.jscomp.JSError, var3910=r1, var3356=com.google.javascript.refactoring.SuggestedFix$Builder, var1515=$r0, var3763=com.google.javascript.rhino.Node, var304=$r4, var1056=com.google.javascript.jscomp.AbstractCompiler, var2657=$r3, var3629=r5, var2576=com.google.javascript.refactoring.NodeMetadata, var2460=$r6, var645=$r7, var3503=com.google.javascript.refactoring.Match, var2065=$r8, var1757=$r9, var176=$r10, var366=$r11, var871=r12, var2620=com.google.javascript.refactoring.ScriptMetadata, var3469=r13, var854=java.util.regex.Pattern, var2703=$r14, var3613=$r15, var110=java.util.regex.Matcher, var3323=r16, var3775=$z0, var2195=$r17, var644=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var799=java.lang.Object, var1866=r18, var241=$r19, var3141=$r20, var717=r21, var620=$z1, var3681=r32, var1603=$r22, var3221=$z2, var210=$r31, var2003=$r33, var2424=$r28, var1459=$r24, var1128=$r25, var3448=com.google.javascript.jscomp.NodeUtil, var3867=$r27, var2724=$r26, var1461=$r29, var1414=com.google.javascript.refactoring.SuggestedFix, var3504=$r30}
; {com.google.javascript.refactoring.ErrorToFixMapper=var3449, r2=var1412, com.google.javascript.jscomp.JSError=var3754, r1=var3910, com.google.javascript.refactoring.SuggestedFix$Builder=var3356, $r0=var1515, com.google.javascript.rhino.Node=var3763, $r4=var304, com.google.javascript.jscomp.AbstractCompiler=var1056, $r3=var2657, r5=var3629, com.google.javascript.refactoring.NodeMetadata=var2576, $r6=var2460, $r7=var645, com.google.javascript.refactoring.Match=var3503, $r8=var2065, $r9=var1757, $r10=var176, $r11=var366, r12=var871, com.google.javascript.refactoring.ScriptMetadata=var2620, r13=var3469, java.util.regex.Pattern=var854, $r14=var2703, $r15=var3613, java.util.regex.Matcher=var110, r16=var3323, $z0=var3775, $r17=var2195, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var644, java.lang.Object=var799, r18=var1866, $r19=var241, $r20=var3141, r21=var717, $z1=var620, r32=var3681, $r22=var1603, $z2=var3221, $r31=var210, $r33=var2003, $r28=var2424, $r24=var1459, $r25=var1128, com.google.javascript.jscomp.NodeUtil=var3448, $r27=var3867, $r26=var2724, $r29=var1461, com.google.javascript.refactoring.SuggestedFix=var1414, $r30=var3504}
;seq <java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>
;cnt {"<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>": 1}
;stmts r2 := @this: com.google.javascript.refactoring.ErrorToFixMapper;	r1 := @parameter0: com.google.javascript.jscomp.JSError;	$r0 = new com.google.javascript.refactoring.SuggestedFix$Builder;	specialinvoke $r0.<com.google.javascript.refactoring.SuggestedFix$Builder: void <init>()>();	$r4 = virtualinvoke r1.<com.google.javascript.jscomp.JSError: com.google.javascript.rhino.Node getNode()>();	$r3 = r2.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.jscomp.AbstractCompiler compiler>;	r5 = virtualinvoke $r0.<com.google.javascript.refactoring.SuggestedFix$Builder: com.google.javascript.refactoring.SuggestedFix$Builder attachMatchedNodeInfo(com.google.javascript.rhino.Node,com.google.javascript.jscomp.AbstractCompiler)>($r4, $r3);	$r6 = new com.google.javascript.refactoring.NodeMetadata;	$r7 = r2.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.jscomp.AbstractCompiler compiler>;	specialinvoke $r6.<com.google.javascript.refactoring.NodeMetadata: void <init>(com.google.javascript.jscomp.AbstractCompiler)>($r7);	$r8 = new com.google.javascript.refactoring.Match;	$r9 = virtualinvoke r1.<com.google.javascript.jscomp.JSError: com.google.javascript.rhino.Node getNode()>();	specialinvoke $r8.<com.google.javascript.refactoring.Match: void <init>(com.google.javascript.rhino.Node,com.google.javascript.refactoring.NodeMetadata)>($r9, $r6);	$r10 = r2.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.jscomp.AbstractCompiler compiler>;	$r11 = virtualinvoke r1.<com.google.javascript.jscomp.JSError: java.lang.String getSourceName()>();	r12 = virtualinvoke $r10.<com.google.javascript.jscomp.AbstractCompiler: com.google.javascript.rhino.Node getScriptNode(java.lang.String)>($r11);	r13 = virtualinvoke r2.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.refactoring.ScriptMetadata getMetadataForScript(com.google.javascript.rhino.Node)>(r12);	$r14 = <com.google.javascript.refactoring.ErrorToFixMapper: java.util.regex.Pattern FULLY_QUALIFIED_NAME>;	$r15 = virtualinvoke r1.<com.google.javascript.jscomp.JSError: java.lang.String getDescription()>();	r16 = virtualinvoke $r14.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>($r15);	$z0 = virtualinvoke r16.<java.util.regex.Matcher: boolean matches()>();	$r17 = virtualinvoke r1.<com.google.javascript.jscomp.JSError: java.lang.String getDescription()>();	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean,java.lang.Object)>($z0, $r17);	r18 = virtualinvoke r16.<java.util.regex.Matcher: java.lang.String group(int)>(1);	$r19 = <com.google.javascript.refactoring.ErrorToFixMapper: java.util.regex.Pattern USE_SHORT_NAME>;	$r20 = virtualinvoke r1.<com.google.javascript.jscomp.JSError: java.lang.String getDescription()>();	r21 = virtualinvoke $r19.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>($r20);	$z1 = virtualinvoke r21.<java.util.regex.Matcher: boolean matches()>();	if $z1 == 0 goto virtualinvoke r5.<com.google.javascript.refactoring.SuggestedFix$Builder: com.google.javascript.refactoring.SuggestedFix$Builder addGoogRequire(com.google.javascript.refactoring.Match,java.lang.String,com.google.javascript.refactoring.ScriptMetadata)>($r8, r18, r13);	virtualinvoke r5.<com.google.javascript.refactoring.SuggestedFix$Builder: com.google.javascript.refactoring.SuggestedFix$Builder addGoogRequire(com.google.javascript.refactoring.Match,java.lang.String,com.google.javascript.refactoring.ScriptMetadata)>($r8, r18, r13);	r32 = virtualinvoke r13.<com.google.javascript.refactoring.ScriptMetadata: java.lang.String getAlias(java.lang.String)>(r18);	$r22 = virtualinvoke r1.<com.google.javascript.jscomp.JSError: com.google.javascript.rhino.Node getNode()>();	$z2 = virtualinvoke $r22.<com.google.javascript.rhino.Node: boolean isQualifiedName()>();	if $z2 == 0 goto $r23 = virtualinvoke r1.<com.google.javascript.jscomp.JSError: com.google.javascript.rhino.Node getNode()>();	$r31 = virtualinvoke r1.<com.google.javascript.jscomp.JSError: com.google.javascript.rhino.Node getNode()>();	$r33 = virtualinvoke $r31.<com.google.javascript.rhino.Node: java.lang.String getQualifiedName()>();	goto [?= $r28 = virtualinvoke r1.<com.google.javascript.jscomp.JSError: com.google.javascript.rhino.Node getNode()>()];	$r28 = virtualinvoke r1.<com.google.javascript.jscomp.JSError: com.google.javascript.rhino.Node getNode()>();	$r24 = r2.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.jscomp.AbstractCompiler compiler>;	$r25 = virtualinvoke $r33.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>(r18, r32);	$r27 = staticinvoke <com.google.javascript.jscomp.NodeUtil: com.google.javascript.rhino.Node newQName(com.google.javascript.jscomp.AbstractCompiler,java.lang.String)>($r24, $r25);	$r26 = r2.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.jscomp.AbstractCompiler compiler>;	$r29 = virtualinvoke r5.<com.google.javascript.refactoring.SuggestedFix$Builder: com.google.javascript.refactoring.SuggestedFix$Builder replace(com.google.javascript.rhino.Node,com.google.javascript.rhino.Node,com.google.javascript.jscomp.AbstractCompiler)>($r28, $r27, $r26);	$r30 = virtualinvoke $r29.<com.google.javascript.refactoring.SuggestedFix$Builder: com.google.javascript.refactoring.SuggestedFix build()>();	return $r30
;block_num 5