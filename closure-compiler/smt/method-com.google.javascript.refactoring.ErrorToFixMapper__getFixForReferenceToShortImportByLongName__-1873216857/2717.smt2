(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2971 0)
(declare-sort var861 0)
(declare-sort var2320 0)
(declare-sort var1464 0)
(declare-sort var825 0)
(declare-sort var1004 0)
(declare-sort var3524 0)
(declare-sort var2106 0)
(declare-sort var2846 0)
(declare-sort var2625 0)
(declare-sort var356 0)
(declare-sort var3164 0)
(declare-sort var3364 0)
(declare-sort var1301 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2320-init () var2320)
(declare-fun <init>/-1552361871 (var2320) void)
(declare-fun getNode/1659036172 (var861) var1464)
(declare-fun compiler/-1646976390 (var2971) var825)
(declare-fun attachMatchedNodeInfo/223256563 (var2320 var1464 var825) var2320)
(declare-fun var1004-init () var1004)
(declare-fun <init>/-1911655441 (var1004 var825) void)
(declare-fun var3524-init () var3524)
(declare-fun <init>/-1574478190 (var3524 var1464 var1004) void)
(declare-fun getSourceName/21548920 (var861) String)
(declare-fun getScriptNode/-2009922238 (var825 String) var1464)
(declare-fun getMetadataForScript/-1584289664 (var2971 var1464) var2106)
(declare-fun getDescription/639719136 (var861) String)
(declare-fun matcher/468719934 (var2846 String) var2625)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun matches/-149940873 (var2625) Bool)
(declare-fun var356_checkState/1633726539 (Bool var3164) void)
(declare-fun cast-from-String-to-var3164 (String) var3164)
(declare-fun group/-653887691 (var2625 Int) String)
(declare-fun isQualifiedName/358135215 (var1464) Bool)
(declare-fun getQualifiedName/48314856 (var1464) String)
(define-fun replace/2138489945 ((s String) (old String) (new String)) String (str.replace_all s old new))
(declare-fun var3364_newQName/1842138164 (var825 String) var1464)
(declare-fun replace/1095141889 (var2320 var1464 var1464 var825) var2320)
(declare-fun build/-1745487932 (var2320) var1301)
(declare-const null-var2971 var2971)
(declare-const null-var861 var861)
(declare-const var2971-FULLY_QUALIFIED_NAME var2846)
(declare-const var2971-USE_SHORT_NAME var2846)
(declare-const var3888 var2971) ; Statement: r2 := @this: com.google.javascript.refactoring.ErrorToFixMapper 
(assert (not (= var3888 null-var2971)))
(declare-const var2845 var861) ; Statement: r1 := @parameter0: com.google.javascript.jscomp.JSError 
(assert (not (= var2845 null-var861)))
(define-const var3466 var2320 var2320-init) ; Statement: $r0 = new com.google.javascript.refactoring.SuggestedFix$Builder 
(assert true)
;(assert (<init>/-1552361871 var3466)) ; Statement: specialinvoke $r0.<com.google.javascript.refactoring.SuggestedFix$Builder: void <init>()>() 

(declare-const var3466!1 var2320)
(assert true)
(define-const var1073 var1464 (getNode/1659036172 var2845)) ; Statement: $r4 = virtualinvoke r1.<com.google.javascript.jscomp.JSError: com.google.javascript.rhino.Node getNode()>() 
(define-const var3419 var825 (compiler/-1646976390 var3888)) ; Statement: $r3 = r2.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.jscomp.AbstractCompiler compiler> 
(assert true)
(define-const var2108 var2320 (attachMatchedNodeInfo/223256563 var3466!1 var1073 var3419)) ; Statement: r5 = virtualinvoke $r0.<com.google.javascript.refactoring.SuggestedFix$Builder: com.google.javascript.refactoring.SuggestedFix$Builder attachMatchedNodeInfo(com.google.javascript.rhino.Node,com.google.javascript.jscomp.AbstractCompiler)>($r4, $r3) 
(define-const var1585 var1004 var1004-init) ; Statement: $r6 = new com.google.javascript.refactoring.NodeMetadata 
(define-const var2107 var825 (compiler/-1646976390 var3888)) ; Statement: $r7 = r2.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.jscomp.AbstractCompiler compiler> 
(assert true)
;(assert (<init>/-1911655441 var1585 var2107)) ; Statement: specialinvoke $r6.<com.google.javascript.refactoring.NodeMetadata: void <init>(com.google.javascript.jscomp.AbstractCompiler)>($r7) 

(declare-const var1585!1 var1004)
(declare-const var2107!1 var825)
(define-const var2854 var3524 var3524-init) ; Statement: $r8 = new com.google.javascript.refactoring.Match 
(assert true)
(define-const var1306 var1464 (getNode/1659036172 var2845)) ; Statement: $r9 = virtualinvoke r1.<com.google.javascript.jscomp.JSError: com.google.javascript.rhino.Node getNode()>() 
(assert true)
;(assert (<init>/-1574478190 var2854 var1306 var1585!1)) ; Statement: specialinvoke $r8.<com.google.javascript.refactoring.Match: void <init>(com.google.javascript.rhino.Node,com.google.javascript.refactoring.NodeMetadata)>($r9, $r6) 

(declare-const var2854!1 var3524)
(declare-const var1306!1 var1464)
(declare-const var1585!2 var1004)
(define-const var3367 var825 (compiler/-1646976390 var3888)) ; Statement: $r10 = r2.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.jscomp.AbstractCompiler compiler> 
(assert true)
(define-const var2912 String (getSourceName/21548920 var2845)) ; Statement: $r11 = virtualinvoke r1.<com.google.javascript.jscomp.JSError: java.lang.String getSourceName()>() 
(assert true)
(define-const var776 var1464 (getScriptNode/-2009922238 var3367 var2912)) ; Statement: r12 = virtualinvoke $r10.<com.google.javascript.jscomp.AbstractCompiler: com.google.javascript.rhino.Node getScriptNode(java.lang.String)>($r11) 
(assert true)
(define-const var923 var2106 (getMetadataForScript/-1584289664 var3888 var776)) ; Statement: r13 = virtualinvoke r2.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.refactoring.ScriptMetadata getMetadataForScript(com.google.javascript.rhino.Node)>(r12) 
(define-const var696 var2846 var2971-FULLY_QUALIFIED_NAME) ; Statement: $r14 = <com.google.javascript.refactoring.ErrorToFixMapper: java.util.regex.Pattern FULLY_QUALIFIED_NAME> 
(assert true)
(define-const var2259 String (getDescription/639719136 var2845)) ; Statement: $r15 = virtualinvoke r1.<com.google.javascript.jscomp.JSError: java.lang.String getDescription()>() 
(assert true)
(define-const var3887 var2625 (matcher/468719934 var696 (cast-from-String-to-String var2259))) ; Statement: r16 = virtualinvoke $r14.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>($r15) 
(assert true)
(define-const var2545 Bool (matches/-149940873 var3887)) ; Statement: $z0 = virtualinvoke r16.<java.util.regex.Matcher: boolean matches()>() 
(assert true)
(define-const var1164 String (getDescription/639719136 var2845)) ; Statement: $r17 = virtualinvoke r1.<com.google.javascript.jscomp.JSError: java.lang.String getDescription()>() 
;(assert (var356_checkState/1633726539 var2545 (cast-from-String-to-var3164 var1164))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean,java.lang.Object)>($z0, $r17) 

(declare-const var2545!1 Bool)
(declare-const var1164!1 String)
(assert true)
(define-const var3267 String (group/-653887691 var3887 1)) ; Statement: r18 = virtualinvoke r16.<java.util.regex.Matcher: java.lang.String group(int)>(1) 
(define-const var3045 var2846 var2971-USE_SHORT_NAME) ; Statement: $r19 = <com.google.javascript.refactoring.ErrorToFixMapper: java.util.regex.Pattern USE_SHORT_NAME> 
(assert true)
(define-const var1500 String (getDescription/639719136 var2845)) ; Statement: $r20 = virtualinvoke r1.<com.google.javascript.jscomp.JSError: java.lang.String getDescription()>() 
(assert true)
(define-const var205 var2625 (matcher/468719934 var3045 (cast-from-String-to-String var1500))) ; Statement: r21 = virtualinvoke $r19.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>($r20) 
(assert true)
(define-const var287 Bool (matches/-149940873 var205)) ; Statement: $z1 = virtualinvoke r21.<java.util.regex.Matcher: boolean matches()>() 
 ; Statement: if $z1 == 0 goto virtualinvoke r5.<com.google.javascript.refactoring.SuggestedFix$Builder: com.google.javascript.refactoring.SuggestedFix$Builder addGoogRequire(com.google.javascript.refactoring.Match,java.lang.String,com.google.javascript.refactoring.ScriptMetadata)>($r8, r18, r13) 
(assert (not (= (ite var287 1 0) 0))) ; Negate: Cond: $z1 == 0  
(assert true)
(define-const var250 String (group/-653887691 var205 1)) ; Statement: r32 = virtualinvoke r21.<java.util.regex.Matcher: java.lang.String group(int)>(1) 
 ; Statement: goto [?= $r22 = virtualinvoke r1.<com.google.javascript.jscomp.JSError: com.google.javascript.rhino.Node getNode()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var3076 var1464 (getNode/1659036172 var2845)) ; Statement: $r22 = virtualinvoke r1.<com.google.javascript.jscomp.JSError: com.google.javascript.rhino.Node getNode()>() 
(assert true)
(define-const var3832 Bool (isQualifiedName/358135215 var3076)) ; Statement: $z2 = virtualinvoke $r22.<com.google.javascript.rhino.Node: boolean isQualifiedName()>() 
 ; Statement: if $z2 == 0 goto $r23 = virtualinvoke r1.<com.google.javascript.jscomp.JSError: com.google.javascript.rhino.Node getNode()>() 
(assert (not (= (ite var3832 1 0) 0))) ; Negate: Cond: $z2 == 0  
(assert true)
(define-const var814 var1464 (getNode/1659036172 var2845)) ; Statement: $r31 = virtualinvoke r1.<com.google.javascript.jscomp.JSError: com.google.javascript.rhino.Node getNode()>() 
(assert true)
(define-const var896 String (getQualifiedName/48314856 var814)) ; Statement: $r33 = virtualinvoke $r31.<com.google.javascript.rhino.Node: java.lang.String getQualifiedName()>() 
 ; Statement: goto [?= $r28 = virtualinvoke r1.<com.google.javascript.jscomp.JSError: com.google.javascript.rhino.Node getNode()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var2228 var1464 (getNode/1659036172 var2845)) ; Statement: $r28 = virtualinvoke r1.<com.google.javascript.jscomp.JSError: com.google.javascript.rhino.Node getNode()>() 
(define-const var235 var825 (compiler/-1646976390 var3888)) ; Statement: $r24 = r2.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.jscomp.AbstractCompiler compiler> 
(assert true)
(define-const var2539 String (replace/2138489945 var896 (cast-from-String-to-String var3267) (cast-from-String-to-String var250))) ; Statement: $r25 = virtualinvoke $r33.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>(r18, r32) 
(define-const var3637 var1464 (var3364_newQName/1842138164 var235 var2539)) ; Statement: $r27 = staticinvoke <com.google.javascript.jscomp.NodeUtil: com.google.javascript.rhino.Node newQName(com.google.javascript.jscomp.AbstractCompiler,java.lang.String)>($r24, $r25) 
(define-const var1391 var825 (compiler/-1646976390 var3888)) ; Statement: $r26 = r2.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.jscomp.AbstractCompiler compiler> 
(assert true)
(define-const var3673 var2320 (replace/1095141889 var2108 var2228 var3637 var1391)) ; Statement: $r29 = virtualinvoke r5.<com.google.javascript.refactoring.SuggestedFix$Builder: com.google.javascript.refactoring.SuggestedFix$Builder replace(com.google.javascript.rhino.Node,com.google.javascript.rhino.Node,com.google.javascript.jscomp.AbstractCompiler)>($r28, $r27, $r26) 
(assert true)
(define-const var2995 var1301 (build/-1745487932 var3673)) ; Statement: $r30 = virtualinvoke $r29.<com.google.javascript.refactoring.SuggestedFix$Builder: com.google.javascript.refactoring.SuggestedFix build()>() 
 ; Statement: return $r30 
(check-sat)
(get-model)
(get-unsat-core)
; {var2320-init=([], com.google.javascript.refactoring.SuggestedFix$Builder), <init>/-1552361871=([com.google.javascript.refactoring.SuggestedFix$Builder], void), getNode/1659036172=([com.google.javascript.jscomp.JSError], com.google.javascript.rhino.Node), compiler/-1646976390=([com.google.javascript.refactoring.ErrorToFixMapper], com.google.javascript.jscomp.AbstractCompiler), attachMatchedNodeInfo/223256563=([com.google.javascript.refactoring.SuggestedFix$Builder, com.google.javascript.rhino.Node, com.google.javascript.jscomp.AbstractCompiler], com.google.javascript.refactoring.SuggestedFix$Builder), var1004-init=([], com.google.javascript.refactoring.NodeMetadata), <init>/-1911655441=([com.google.javascript.refactoring.NodeMetadata, com.google.javascript.jscomp.AbstractCompiler], void), var3524-init=([], com.google.javascript.refactoring.Match), <init>/-1574478190=([com.google.javascript.refactoring.Match, com.google.javascript.rhino.Node, com.google.javascript.refactoring.NodeMetadata], void), getSourceName/21548920=([com.google.javascript.jscomp.JSError], java.lang.String), getScriptNode/-2009922238=([com.google.javascript.jscomp.AbstractCompiler, java.lang.String], com.google.javascript.rhino.Node), getMetadataForScript/-1584289664=([com.google.javascript.refactoring.ErrorToFixMapper, com.google.javascript.rhino.Node], com.google.javascript.refactoring.ScriptMetadata), getDescription/639719136=([com.google.javascript.jscomp.JSError], java.lang.String), matcher/468719934=([java.util.regex.Pattern, java.lang.CharSequence], java.util.regex.Matcher), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), matches/-149940873=([java.util.regex.Matcher], boolean), var356_checkState/1633726539=([boolean, java.lang.Object], void), cast-from-String-to-var3164=([java.lang.String], java.lang.Object), group/-653887691=([java.util.regex.Matcher, int], java.lang.String), isQualifiedName/358135215=([com.google.javascript.rhino.Node], boolean), getQualifiedName/48314856=([com.google.javascript.rhino.Node], java.lang.String), replace/2138489945=([java.lang.String, java.lang.CharSequence, java.lang.CharSequence], java.lang.String), var3364_newQName/1842138164=([com.google.javascript.jscomp.AbstractCompiler, java.lang.String], com.google.javascript.rhino.Node), replace/1095141889=([com.google.javascript.refactoring.SuggestedFix$Builder, com.google.javascript.rhino.Node, com.google.javascript.rhino.Node, com.google.javascript.jscomp.AbstractCompiler], com.google.javascript.refactoring.SuggestedFix$Builder), build/-1745487932=([com.google.javascript.refactoring.SuggestedFix$Builder], com.google.javascript.refactoring.SuggestedFix)}
; {var2971=com.google.javascript.refactoring.ErrorToFixMapper, var3888=r2, var861=com.google.javascript.jscomp.JSError, var2845=r1, var2320=com.google.javascript.refactoring.SuggestedFix$Builder, var3466=$r0, var1464=com.google.javascript.rhino.Node, var1073=$r4, var825=com.google.javascript.jscomp.AbstractCompiler, var3419=$r3, var2108=r5, var1004=com.google.javascript.refactoring.NodeMetadata, var1585=$r6, var2107=$r7, var3524=com.google.javascript.refactoring.Match, var2854=$r8, var1306=$r9, var3367=$r10, var2912=$r11, var776=r12, var2106=com.google.javascript.refactoring.ScriptMetadata, var923=r13, var2846=java.util.regex.Pattern, var696=$r14, var2259=$r15, var2625=java.util.regex.Matcher, var3887=r16, var2545=$z0, var1164=$r17, var356=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var3164=java.lang.Object, var3267=r18, var3045=$r19, var1500=$r20, var205=r21, var287=$z1, var250=r32, var3076=$r22, var3832=$z2, var814=$r31, var896=$r33, var2228=$r28, var235=$r24, var2539=$r25, var3364=com.google.javascript.jscomp.NodeUtil, var3637=$r27, var1391=$r26, var3673=$r29, var1301=com.google.javascript.refactoring.SuggestedFix, var2995=$r30}
; {com.google.javascript.refactoring.ErrorToFixMapper=var2971, r2=var3888, com.google.javascript.jscomp.JSError=var861, r1=var2845, com.google.javascript.refactoring.SuggestedFix$Builder=var2320, $r0=var3466, com.google.javascript.rhino.Node=var1464, $r4=var1073, com.google.javascript.jscomp.AbstractCompiler=var825, $r3=var3419, r5=var2108, com.google.javascript.refactoring.NodeMetadata=var1004, $r6=var1585, $r7=var2107, com.google.javascript.refactoring.Match=var3524, $r8=var2854, $r9=var1306, $r10=var3367, $r11=var2912, r12=var776, com.google.javascript.refactoring.ScriptMetadata=var2106, r13=var923, java.util.regex.Pattern=var2846, $r14=var696, $r15=var2259, java.util.regex.Matcher=var2625, r16=var3887, $z0=var2545, $r17=var1164, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var356, java.lang.Object=var3164, r18=var3267, $r19=var3045, $r20=var1500, r21=var205, $z1=var287, r32=var250, $r22=var3076, $z2=var3832, $r31=var814, $r33=var896, $r28=var2228, $r24=var235, $r25=var2539, com.google.javascript.jscomp.NodeUtil=var3364, $r27=var3637, $r26=var1391, $r29=var3673, com.google.javascript.refactoring.SuggestedFix=var1301, $r30=var2995}
;seq <java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>
;cnt {"<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>": 1}
;stmts r2 := @this: com.google.javascript.refactoring.ErrorToFixMapper;	r1 := @parameter0: com.google.javascript.jscomp.JSError;	$r0 = new com.google.javascript.refactoring.SuggestedFix$Builder;	specialinvoke $r0.<com.google.javascript.refactoring.SuggestedFix$Builder: void <init>()>();	$r4 = virtualinvoke r1.<com.google.javascript.jscomp.JSError: com.google.javascript.rhino.Node getNode()>();	$r3 = r2.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.jscomp.AbstractCompiler compiler>;	r5 = virtualinvoke $r0.<com.google.javascript.refactoring.SuggestedFix$Builder: com.google.javascript.refactoring.SuggestedFix$Builder attachMatchedNodeInfo(com.google.javascript.rhino.Node,com.google.javascript.jscomp.AbstractCompiler)>($r4, $r3);	$r6 = new com.google.javascript.refactoring.NodeMetadata;	$r7 = r2.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.jscomp.AbstractCompiler compiler>;	specialinvoke $r6.<com.google.javascript.refactoring.NodeMetadata: void <init>(com.google.javascript.jscomp.AbstractCompiler)>($r7);	$r8 = new com.google.javascript.refactoring.Match;	$r9 = virtualinvoke r1.<com.google.javascript.jscomp.JSError: com.google.javascript.rhino.Node getNode()>();	specialinvoke $r8.<com.google.javascript.refactoring.Match: void <init>(com.google.javascript.rhino.Node,com.google.javascript.refactoring.NodeMetadata)>($r9, $r6);	$r10 = r2.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.jscomp.AbstractCompiler compiler>;	$r11 = virtualinvoke r1.<com.google.javascript.jscomp.JSError: java.lang.String getSourceName()>();	r12 = virtualinvoke $r10.<com.google.javascript.jscomp.AbstractCompiler: com.google.javascript.rhino.Node getScriptNode(java.lang.String)>($r11);	r13 = virtualinvoke r2.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.refactoring.ScriptMetadata getMetadataForScript(com.google.javascript.rhino.Node)>(r12);	$r14 = <com.google.javascript.refactoring.ErrorToFixMapper: java.util.regex.Pattern FULLY_QUALIFIED_NAME>;	$r15 = virtualinvoke r1.<com.google.javascript.jscomp.JSError: java.lang.String getDescription()>();	r16 = virtualinvoke $r14.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>($r15);	$z0 = virtualinvoke r16.<java.util.regex.Matcher: boolean matches()>();	$r17 = virtualinvoke r1.<com.google.javascript.jscomp.JSError: java.lang.String getDescription()>();	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean,java.lang.Object)>($z0, $r17);	r18 = virtualinvoke r16.<java.util.regex.Matcher: java.lang.String group(int)>(1);	$r19 = <com.google.javascript.refactoring.ErrorToFixMapper: java.util.regex.Pattern USE_SHORT_NAME>;	$r20 = virtualinvoke r1.<com.google.javascript.jscomp.JSError: java.lang.String getDescription()>();	r21 = virtualinvoke $r19.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>($r20);	$z1 = virtualinvoke r21.<java.util.regex.Matcher: boolean matches()>();	if $z1 == 0 goto virtualinvoke r5.<com.google.javascript.refactoring.SuggestedFix$Builder: com.google.javascript.refactoring.SuggestedFix$Builder addGoogRequire(com.google.javascript.refactoring.Match,java.lang.String,com.google.javascript.refactoring.ScriptMetadata)>($r8, r18, r13);	r32 = virtualinvoke r21.<java.util.regex.Matcher: java.lang.String group(int)>(1);	goto [?= $r22 = virtualinvoke r1.<com.google.javascript.jscomp.JSError: com.google.javascript.rhino.Node getNode()>()];	$r22 = virtualinvoke r1.<com.google.javascript.jscomp.JSError: com.google.javascript.rhino.Node getNode()>();	$z2 = virtualinvoke $r22.<com.google.javascript.rhino.Node: boolean isQualifiedName()>();	if $z2 == 0 goto $r23 = virtualinvoke r1.<com.google.javascript.jscomp.JSError: com.google.javascript.rhino.Node getNode()>();	$r31 = virtualinvoke r1.<com.google.javascript.jscomp.JSError: com.google.javascript.rhino.Node getNode()>();	$r33 = virtualinvoke $r31.<com.google.javascript.rhino.Node: java.lang.String getQualifiedName()>();	goto [?= $r28 = virtualinvoke r1.<com.google.javascript.jscomp.JSError: com.google.javascript.rhino.Node getNode()>()];	$r28 = virtualinvoke r1.<com.google.javascript.jscomp.JSError: com.google.javascript.rhino.Node getNode()>();	$r24 = r2.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.jscomp.AbstractCompiler compiler>;	$r25 = virtualinvoke $r33.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>(r18, r32);	$r27 = staticinvoke <com.google.javascript.jscomp.NodeUtil: com.google.javascript.rhino.Node newQName(com.google.javascript.jscomp.AbstractCompiler,java.lang.String)>($r24, $r25);	$r26 = r2.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.jscomp.AbstractCompiler compiler>;	$r29 = virtualinvoke r5.<com.google.javascript.refactoring.SuggestedFix$Builder: com.google.javascript.refactoring.SuggestedFix$Builder replace(com.google.javascript.rhino.Node,com.google.javascript.rhino.Node,com.google.javascript.jscomp.AbstractCompiler)>($r28, $r27, $r26);	$r30 = virtualinvoke $r29.<com.google.javascript.refactoring.SuggestedFix$Builder: com.google.javascript.refactoring.SuggestedFix build()>();	return $r30
;block_num 5