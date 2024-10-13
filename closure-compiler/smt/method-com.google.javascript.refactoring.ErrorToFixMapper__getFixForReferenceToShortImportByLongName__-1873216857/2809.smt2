(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3638 0)
(declare-sort var2624 0)
(declare-sort var2645 0)
(declare-sort var889 0)
(declare-sort var2503 0)
(declare-sort var1145 0)
(declare-sort var2648 0)
(declare-sort var3442 0)
(declare-sort var2743 0)
(declare-sort var368 0)
(declare-sort var1078 0)
(declare-sort var463 0)
(declare-sort var3002 0)
(declare-sort var472 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2645-init () var2645)
(declare-fun <init>/-1552361871 (var2645) void)
(declare-fun getNode/1659036172 (var2624) var889)
(declare-fun compiler/-1646976390 (var3638) var2503)
(declare-fun attachMatchedNodeInfo/223256563 (var2645 var889 var2503) var2645)
(declare-fun var1145-init () var1145)
(declare-fun <init>/-1911655441 (var1145 var2503) void)
(declare-fun var2648-init () var2648)
(declare-fun <init>/-1574478190 (var2648 var889 var1145) void)
(declare-fun getSourceName/21548920 (var2624) String)
(declare-fun getScriptNode/-2009922238 (var2503 String) var889)
(declare-fun getMetadataForScript/-1584289664 (var3638 var889) var3442)
(declare-fun getDescription/639719136 (var2624) String)
(declare-fun matcher/468719934 (var2743 String) var368)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun matches/-149940873 (var368) Bool)
(declare-fun var1078_checkState/1633726539 (Bool var463) void)
(declare-fun cast-from-String-to-var463 (String) var463)
(declare-fun group/-653887691 (var368 Int) String)
(declare-fun addGoogRequire/38505993 (var2645 var2648 String var3442) var2645)
(declare-fun getAlias/-1883926512 (var3442 String) String)
(declare-fun isQualifiedName/358135215 (var889) Bool)
(declare-fun getString/-897720134 (var889) String)
(define-fun replace/2138489945 ((s String) (old String) (new String)) String (str.replace_all s old new))
(declare-fun var3002_newQName/1842138164 (var2503 String) var889)
(declare-fun replace/1095141889 (var2645 var889 var889 var2503) var2645)
(declare-fun build/-1745487932 (var2645) var472)
(declare-const null-var3638 var3638)
(declare-const null-var2624 var2624)
(declare-const var3638-FULLY_QUALIFIED_NAME var2743)
(declare-const var3638-USE_SHORT_NAME var2743)
(declare-const var2769 var3638) ; Statement: r2 := @this: com.google.javascript.refactoring.ErrorToFixMapper 
(assert (not (= var2769 null-var3638)))
(declare-const var3835 var2624) ; Statement: r1 := @parameter0: com.google.javascript.jscomp.JSError 
(assert (not (= var3835 null-var2624)))
(define-const var3759 var2645 var2645-init) ; Statement: $r0 = new com.google.javascript.refactoring.SuggestedFix$Builder 
(assert true)
;(assert (<init>/-1552361871 var3759)) ; Statement: specialinvoke $r0.<com.google.javascript.refactoring.SuggestedFix$Builder: void <init>()>() 

(declare-const var3759!1 var2645)
(assert true)
(define-const var2164 var889 (getNode/1659036172 var3835)) ; Statement: $r4 = virtualinvoke r1.<com.google.javascript.jscomp.JSError: com.google.javascript.rhino.Node getNode()>() 
(define-const var2666 var2503 (compiler/-1646976390 var2769)) ; Statement: $r3 = r2.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.jscomp.AbstractCompiler compiler> 
(assert true)
(define-const var817 var2645 (attachMatchedNodeInfo/223256563 var3759!1 var2164 var2666)) ; Statement: r5 = virtualinvoke $r0.<com.google.javascript.refactoring.SuggestedFix$Builder: com.google.javascript.refactoring.SuggestedFix$Builder attachMatchedNodeInfo(com.google.javascript.rhino.Node,com.google.javascript.jscomp.AbstractCompiler)>($r4, $r3) 
(define-const var3643 var1145 var1145-init) ; Statement: $r6 = new com.google.javascript.refactoring.NodeMetadata 
(define-const var3166 var2503 (compiler/-1646976390 var2769)) ; Statement: $r7 = r2.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.jscomp.AbstractCompiler compiler> 
(assert true)
;(assert (<init>/-1911655441 var3643 var3166)) ; Statement: specialinvoke $r6.<com.google.javascript.refactoring.NodeMetadata: void <init>(com.google.javascript.jscomp.AbstractCompiler)>($r7) 

(declare-const var3643!1 var1145)
(declare-const var3166!1 var2503)
(define-const var1005 var2648 var2648-init) ; Statement: $r8 = new com.google.javascript.refactoring.Match 
(assert true)
(define-const var2521 var889 (getNode/1659036172 var3835)) ; Statement: $r9 = virtualinvoke r1.<com.google.javascript.jscomp.JSError: com.google.javascript.rhino.Node getNode()>() 
(assert true)
;(assert (<init>/-1574478190 var1005 var2521 var3643!1)) ; Statement: specialinvoke $r8.<com.google.javascript.refactoring.Match: void <init>(com.google.javascript.rhino.Node,com.google.javascript.refactoring.NodeMetadata)>($r9, $r6) 

(declare-const var1005!1 var2648)
(declare-const var2521!1 var889)
(declare-const var3643!2 var1145)
(define-const var1832 var2503 (compiler/-1646976390 var2769)) ; Statement: $r10 = r2.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.jscomp.AbstractCompiler compiler> 
(assert true)
(define-const var1929 String (getSourceName/21548920 var3835)) ; Statement: $r11 = virtualinvoke r1.<com.google.javascript.jscomp.JSError: java.lang.String getSourceName()>() 
(assert true)
(define-const var3211 var889 (getScriptNode/-2009922238 var1832 var1929)) ; Statement: r12 = virtualinvoke $r10.<com.google.javascript.jscomp.AbstractCompiler: com.google.javascript.rhino.Node getScriptNode(java.lang.String)>($r11) 
(assert true)
(define-const var21 var3442 (getMetadataForScript/-1584289664 var2769 var3211)) ; Statement: r13 = virtualinvoke r2.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.refactoring.ScriptMetadata getMetadataForScript(com.google.javascript.rhino.Node)>(r12) 
(define-const var2211 var2743 var3638-FULLY_QUALIFIED_NAME) ; Statement: $r14 = <com.google.javascript.refactoring.ErrorToFixMapper: java.util.regex.Pattern FULLY_QUALIFIED_NAME> 
(assert true)
(define-const var3218 String (getDescription/639719136 var3835)) ; Statement: $r15 = virtualinvoke r1.<com.google.javascript.jscomp.JSError: java.lang.String getDescription()>() 
(assert true)
(define-const var3705 var368 (matcher/468719934 var2211 (cast-from-String-to-String var3218))) ; Statement: r16 = virtualinvoke $r14.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>($r15) 
(assert true)
(define-const var2232 Bool (matches/-149940873 var3705)) ; Statement: $z0 = virtualinvoke r16.<java.util.regex.Matcher: boolean matches()>() 
(assert true)
(define-const var3099 String (getDescription/639719136 var3835)) ; Statement: $r17 = virtualinvoke r1.<com.google.javascript.jscomp.JSError: java.lang.String getDescription()>() 
;(assert (var1078_checkState/1633726539 var2232 (cast-from-String-to-var463 var3099))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean,java.lang.Object)>($z0, $r17) 

(declare-const var2232!1 Bool)
(declare-const var3099!1 String)
(assert true)
(define-const var1796 String (group/-653887691 var3705 1)) ; Statement: r18 = virtualinvoke r16.<java.util.regex.Matcher: java.lang.String group(int)>(1) 
(define-const var3575 var2743 var3638-USE_SHORT_NAME) ; Statement: $r19 = <com.google.javascript.refactoring.ErrorToFixMapper: java.util.regex.Pattern USE_SHORT_NAME> 
(assert true)
(define-const var3543 String (getDescription/639719136 var3835)) ; Statement: $r20 = virtualinvoke r1.<com.google.javascript.jscomp.JSError: java.lang.String getDescription()>() 
(assert true)
(define-const var2705 var368 (matcher/468719934 var3575 (cast-from-String-to-String var3543))) ; Statement: r21 = virtualinvoke $r19.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>($r20) 
(assert true)
(define-const var3281 Bool (matches/-149940873 var2705)) ; Statement: $z1 = virtualinvoke r21.<java.util.regex.Matcher: boolean matches()>() 
 ; Statement: if $z1 == 0 goto virtualinvoke r5.<com.google.javascript.refactoring.SuggestedFix$Builder: com.google.javascript.refactoring.SuggestedFix$Builder addGoogRequire(com.google.javascript.refactoring.Match,java.lang.String,com.google.javascript.refactoring.ScriptMetadata)>($r8, r18, r13) 
(assert (= (ite var3281 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
;(assert (addGoogRequire/38505993 var817 var1005!1 var1796 var21)) ; Statement: virtualinvoke r5.<com.google.javascript.refactoring.SuggestedFix$Builder: com.google.javascript.refactoring.SuggestedFix$Builder addGoogRequire(com.google.javascript.refactoring.Match,java.lang.String,com.google.javascript.refactoring.ScriptMetadata)>($r8, r18, r13) 

(declare-const var817!1 var2645)
(declare-const var1005!2 var2648)
(declare-const var1796!1 String)
(declare-const var21!1 var3442)
(assert true)
(define-const var2173 String (getAlias/-1883926512 var21!1 var1796!1)) ; Statement: r32 = virtualinvoke r13.<com.google.javascript.refactoring.ScriptMetadata: java.lang.String getAlias(java.lang.String)>(r18) 
(assert true) ; Non Conditional
(assert true)
(define-const var1320 var889 (getNode/1659036172 var3835)) ; Statement: $r22 = virtualinvoke r1.<com.google.javascript.jscomp.JSError: com.google.javascript.rhino.Node getNode()>() 
(assert true)
(define-const var3912 Bool (isQualifiedName/358135215 var1320)) ; Statement: $z2 = virtualinvoke $r22.<com.google.javascript.rhino.Node: boolean isQualifiedName()>() 
 ; Statement: if $z2 == 0 goto $r23 = virtualinvoke r1.<com.google.javascript.jscomp.JSError: com.google.javascript.rhino.Node getNode()>() 
(assert (= (ite var3912 1 0) 0)) ; Cond: $z2 == 0 
(assert true)
(define-const var3902 var889 (getNode/1659036172 var3835)) ; Statement: $r23 = virtualinvoke r1.<com.google.javascript.jscomp.JSError: com.google.javascript.rhino.Node getNode()>() 
(assert true)
(define-const var1435 String (getString/-897720134 var3902)) ; Statement: $r33 = virtualinvoke $r23.<com.google.javascript.rhino.Node: java.lang.String getString()>() 
(assert true) ; Non Conditional
(assert true)
(define-const var295 var889 (getNode/1659036172 var3835)) ; Statement: $r28 = virtualinvoke r1.<com.google.javascript.jscomp.JSError: com.google.javascript.rhino.Node getNode()>() 
(define-const var3601 var2503 (compiler/-1646976390 var2769)) ; Statement: $r24 = r2.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.jscomp.AbstractCompiler compiler> 
(assert true)
(define-const var2107 String (replace/2138489945 var1435 (cast-from-String-to-String var1796!1) (cast-from-String-to-String var2173))) ; Statement: $r25 = virtualinvoke $r33.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>(r18, r32) 
(define-const var1391 var889 (var3002_newQName/1842138164 var3601 var2107)) ; Statement: $r27 = staticinvoke <com.google.javascript.jscomp.NodeUtil: com.google.javascript.rhino.Node newQName(com.google.javascript.jscomp.AbstractCompiler,java.lang.String)>($r24, $r25) 
(define-const var2416 var2503 (compiler/-1646976390 var2769)) ; Statement: $r26 = r2.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.jscomp.AbstractCompiler compiler> 
(assert true)
(define-const var2311 var2645 (replace/1095141889 var817!1 var295 var1391 var2416)) ; Statement: $r29 = virtualinvoke r5.<com.google.javascript.refactoring.SuggestedFix$Builder: com.google.javascript.refactoring.SuggestedFix$Builder replace(com.google.javascript.rhino.Node,com.google.javascript.rhino.Node,com.google.javascript.jscomp.AbstractCompiler)>($r28, $r27, $r26) 
(assert true)
(define-const var474 var472 (build/-1745487932 var2311)) ; Statement: $r30 = virtualinvoke $r29.<com.google.javascript.refactoring.SuggestedFix$Builder: com.google.javascript.refactoring.SuggestedFix build()>() 
 ; Statement: return $r30 
(check-sat)
(get-model)
(get-unsat-core)
; {var2645-init=([], com.google.javascript.refactoring.SuggestedFix$Builder), <init>/-1552361871=([com.google.javascript.refactoring.SuggestedFix$Builder], void), getNode/1659036172=([com.google.javascript.jscomp.JSError], com.google.javascript.rhino.Node), compiler/-1646976390=([com.google.javascript.refactoring.ErrorToFixMapper], com.google.javascript.jscomp.AbstractCompiler), attachMatchedNodeInfo/223256563=([com.google.javascript.refactoring.SuggestedFix$Builder, com.google.javascript.rhino.Node, com.google.javascript.jscomp.AbstractCompiler], com.google.javascript.refactoring.SuggestedFix$Builder), var1145-init=([], com.google.javascript.refactoring.NodeMetadata), <init>/-1911655441=([com.google.javascript.refactoring.NodeMetadata, com.google.javascript.jscomp.AbstractCompiler], void), var2648-init=([], com.google.javascript.refactoring.Match), <init>/-1574478190=([com.google.javascript.refactoring.Match, com.google.javascript.rhino.Node, com.google.javascript.refactoring.NodeMetadata], void), getSourceName/21548920=([com.google.javascript.jscomp.JSError], java.lang.String), getScriptNode/-2009922238=([com.google.javascript.jscomp.AbstractCompiler, java.lang.String], com.google.javascript.rhino.Node), getMetadataForScript/-1584289664=([com.google.javascript.refactoring.ErrorToFixMapper, com.google.javascript.rhino.Node], com.google.javascript.refactoring.ScriptMetadata), getDescription/639719136=([com.google.javascript.jscomp.JSError], java.lang.String), matcher/468719934=([java.util.regex.Pattern, java.lang.CharSequence], java.util.regex.Matcher), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), matches/-149940873=([java.util.regex.Matcher], boolean), var1078_checkState/1633726539=([boolean, java.lang.Object], void), cast-from-String-to-var463=([java.lang.String], java.lang.Object), group/-653887691=([java.util.regex.Matcher, int], java.lang.String), addGoogRequire/38505993=([com.google.javascript.refactoring.SuggestedFix$Builder, com.google.javascript.refactoring.Match, java.lang.String, com.google.javascript.refactoring.ScriptMetadata], com.google.javascript.refactoring.SuggestedFix$Builder), getAlias/-1883926512=([com.google.javascript.refactoring.ScriptMetadata, java.lang.String], java.lang.String), isQualifiedName/358135215=([com.google.javascript.rhino.Node], boolean), getString/-897720134=([com.google.javascript.rhino.Node], java.lang.String), replace/2138489945=([java.lang.String, java.lang.CharSequence, java.lang.CharSequence], java.lang.String), var3002_newQName/1842138164=([com.google.javascript.jscomp.AbstractCompiler, java.lang.String], com.google.javascript.rhino.Node), replace/1095141889=([com.google.javascript.refactoring.SuggestedFix$Builder, com.google.javascript.rhino.Node, com.google.javascript.rhino.Node, com.google.javascript.jscomp.AbstractCompiler], com.google.javascript.refactoring.SuggestedFix$Builder), build/-1745487932=([com.google.javascript.refactoring.SuggestedFix$Builder], com.google.javascript.refactoring.SuggestedFix)}
; {var3638=com.google.javascript.refactoring.ErrorToFixMapper, var2769=r2, var2624=com.google.javascript.jscomp.JSError, var3835=r1, var2645=com.google.javascript.refactoring.SuggestedFix$Builder, var3759=$r0, var889=com.google.javascript.rhino.Node, var2164=$r4, var2503=com.google.javascript.jscomp.AbstractCompiler, var2666=$r3, var817=r5, var1145=com.google.javascript.refactoring.NodeMetadata, var3643=$r6, var3166=$r7, var2648=com.google.javascript.refactoring.Match, var1005=$r8, var2521=$r9, var1832=$r10, var1929=$r11, var3211=r12, var3442=com.google.javascript.refactoring.ScriptMetadata, var21=r13, var2743=java.util.regex.Pattern, var2211=$r14, var3218=$r15, var368=java.util.regex.Matcher, var3705=r16, var2232=$z0, var3099=$r17, var1078=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var463=java.lang.Object, var1796=r18, var3575=$r19, var3543=$r20, var2705=r21, var3281=$z1, var2173=r32, var1320=$r22, var3912=$z2, var3902=$r23, var1435=$r33, var295=$r28, var3601=$r24, var2107=$r25, var3002=com.google.javascript.jscomp.NodeUtil, var1391=$r27, var2416=$r26, var2311=$r29, var472=com.google.javascript.refactoring.SuggestedFix, var474=$r30}
; {com.google.javascript.refactoring.ErrorToFixMapper=var3638, r2=var2769, com.google.javascript.jscomp.JSError=var2624, r1=var3835, com.google.javascript.refactoring.SuggestedFix$Builder=var2645, $r0=var3759, com.google.javascript.rhino.Node=var889, $r4=var2164, com.google.javascript.jscomp.AbstractCompiler=var2503, $r3=var2666, r5=var817, com.google.javascript.refactoring.NodeMetadata=var1145, $r6=var3643, $r7=var3166, com.google.javascript.refactoring.Match=var2648, $r8=var1005, $r9=var2521, $r10=var1832, $r11=var1929, r12=var3211, com.google.javascript.refactoring.ScriptMetadata=var3442, r13=var21, java.util.regex.Pattern=var2743, $r14=var2211, $r15=var3218, java.util.regex.Matcher=var368, r16=var3705, $z0=var2232, $r17=var3099, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var1078, java.lang.Object=var463, r18=var1796, $r19=var3575, $r20=var3543, r21=var2705, $z1=var3281, r32=var2173, $r22=var1320, $z2=var3912, $r23=var3902, $r33=var1435, $r28=var295, $r24=var3601, $r25=var2107, com.google.javascript.jscomp.NodeUtil=var3002, $r27=var1391, $r26=var2416, $r29=var2311, com.google.javascript.refactoring.SuggestedFix=var472, $r30=var474}
;seq <java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>
;cnt {"<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>": 1}
;stmts r2 := @this: com.google.javascript.refactoring.ErrorToFixMapper;	r1 := @parameter0: com.google.javascript.jscomp.JSError;	$r0 = new com.google.javascript.refactoring.SuggestedFix$Builder;	specialinvoke $r0.<com.google.javascript.refactoring.SuggestedFix$Builder: void <init>()>();	$r4 = virtualinvoke r1.<com.google.javascript.jscomp.JSError: com.google.javascript.rhino.Node getNode()>();	$r3 = r2.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.jscomp.AbstractCompiler compiler>;	r5 = virtualinvoke $r0.<com.google.javascript.refactoring.SuggestedFix$Builder: com.google.javascript.refactoring.SuggestedFix$Builder attachMatchedNodeInfo(com.google.javascript.rhino.Node,com.google.javascript.jscomp.AbstractCompiler)>($r4, $r3);	$r6 = new com.google.javascript.refactoring.NodeMetadata;	$r7 = r2.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.jscomp.AbstractCompiler compiler>;	specialinvoke $r6.<com.google.javascript.refactoring.NodeMetadata: void <init>(com.google.javascript.jscomp.AbstractCompiler)>($r7);	$r8 = new com.google.javascript.refactoring.Match;	$r9 = virtualinvoke r1.<com.google.javascript.jscomp.JSError: com.google.javascript.rhino.Node getNode()>();	specialinvoke $r8.<com.google.javascript.refactoring.Match: void <init>(com.google.javascript.rhino.Node,com.google.javascript.refactoring.NodeMetadata)>($r9, $r6);	$r10 = r2.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.jscomp.AbstractCompiler compiler>;	$r11 = virtualinvoke r1.<com.google.javascript.jscomp.JSError: java.lang.String getSourceName()>();	r12 = virtualinvoke $r10.<com.google.javascript.jscomp.AbstractCompiler: com.google.javascript.rhino.Node getScriptNode(java.lang.String)>($r11);	r13 = virtualinvoke r2.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.refactoring.ScriptMetadata getMetadataForScript(com.google.javascript.rhino.Node)>(r12);	$r14 = <com.google.javascript.refactoring.ErrorToFixMapper: java.util.regex.Pattern FULLY_QUALIFIED_NAME>;	$r15 = virtualinvoke r1.<com.google.javascript.jscomp.JSError: java.lang.String getDescription()>();	r16 = virtualinvoke $r14.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>($r15);	$z0 = virtualinvoke r16.<java.util.regex.Matcher: boolean matches()>();	$r17 = virtualinvoke r1.<com.google.javascript.jscomp.JSError: java.lang.String getDescription()>();	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean,java.lang.Object)>($z0, $r17);	r18 = virtualinvoke r16.<java.util.regex.Matcher: java.lang.String group(int)>(1);	$r19 = <com.google.javascript.refactoring.ErrorToFixMapper: java.util.regex.Pattern USE_SHORT_NAME>;	$r20 = virtualinvoke r1.<com.google.javascript.jscomp.JSError: java.lang.String getDescription()>();	r21 = virtualinvoke $r19.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>($r20);	$z1 = virtualinvoke r21.<java.util.regex.Matcher: boolean matches()>();	if $z1 == 0 goto virtualinvoke r5.<com.google.javascript.refactoring.SuggestedFix$Builder: com.google.javascript.refactoring.SuggestedFix$Builder addGoogRequire(com.google.javascript.refactoring.Match,java.lang.String,com.google.javascript.refactoring.ScriptMetadata)>($r8, r18, r13);	virtualinvoke r5.<com.google.javascript.refactoring.SuggestedFix$Builder: com.google.javascript.refactoring.SuggestedFix$Builder addGoogRequire(com.google.javascript.refactoring.Match,java.lang.String,com.google.javascript.refactoring.ScriptMetadata)>($r8, r18, r13);	r32 = virtualinvoke r13.<com.google.javascript.refactoring.ScriptMetadata: java.lang.String getAlias(java.lang.String)>(r18);	$r22 = virtualinvoke r1.<com.google.javascript.jscomp.JSError: com.google.javascript.rhino.Node getNode()>();	$z2 = virtualinvoke $r22.<com.google.javascript.rhino.Node: boolean isQualifiedName()>();	if $z2 == 0 goto $r23 = virtualinvoke r1.<com.google.javascript.jscomp.JSError: com.google.javascript.rhino.Node getNode()>();	$r23 = virtualinvoke r1.<com.google.javascript.jscomp.JSError: com.google.javascript.rhino.Node getNode()>();	$r33 = virtualinvoke $r23.<com.google.javascript.rhino.Node: java.lang.String getString()>();	$r28 = virtualinvoke r1.<com.google.javascript.jscomp.JSError: com.google.javascript.rhino.Node getNode()>();	$r24 = r2.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.jscomp.AbstractCompiler compiler>;	$r25 = virtualinvoke $r33.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>(r18, r32);	$r27 = staticinvoke <com.google.javascript.jscomp.NodeUtil: com.google.javascript.rhino.Node newQName(com.google.javascript.jscomp.AbstractCompiler,java.lang.String)>($r24, $r25);	$r26 = r2.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.jscomp.AbstractCompiler compiler>;	$r29 = virtualinvoke r5.<com.google.javascript.refactoring.SuggestedFix$Builder: com.google.javascript.refactoring.SuggestedFix$Builder replace(com.google.javascript.rhino.Node,com.google.javascript.rhino.Node,com.google.javascript.jscomp.AbstractCompiler)>($r28, $r27, $r26);	$r30 = virtualinvoke $r29.<com.google.javascript.refactoring.SuggestedFix$Builder: com.google.javascript.refactoring.SuggestedFix build()>();	return $r30
;block_num 5