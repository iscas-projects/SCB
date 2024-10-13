(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var701 0)
(declare-sort var989 0)
(declare-sort var1188 0)
(declare-sort var1114 0)
(declare-sort var2695 0)
(declare-sort var3682 0)
(declare-sort var960 0)
(declare-sort var2576 0)
(declare-sort var2693 0)
(declare-sort var3831 0)
(declare-sort var3216 0)
(declare-sort var1153 0)
(declare-sort var1611 0)
(declare-sort var1307 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1188-init () var1188)
(declare-fun <init>/-1552361871 (var1188) void)
(declare-fun getNode/1659036172 (var989) var1114)
(declare-fun compiler/-1646976390 (var701) var2695)
(declare-fun attachMatchedNodeInfo/223256563 (var1188 var1114 var2695) var1188)
(declare-fun var3682-init () var3682)
(declare-fun <init>/-1911655441 (var3682 var2695) void)
(declare-fun var960-init () var960)
(declare-fun <init>/-1574478190 (var960 var1114 var3682) void)
(declare-fun getSourceName/21548920 (var989) String)
(declare-fun getScriptNode/-2009922238 (var2695 String) var1114)
(declare-fun getMetadataForScript/-1584289664 (var701 var1114) var2576)
(declare-fun getDescription/639719136 (var989) String)
(declare-fun matcher/468719934 (var2693 String) var3831)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun matches/-149940873 (var3831) Bool)
(declare-fun var3216_checkState/1633726539 (Bool var1153) void)
(declare-fun cast-from-String-to-var1153 (String) var1153)
(declare-fun group/-653887691 (var3831 Int) String)
(declare-fun isQualifiedName/358135215 (var1114) Bool)
(declare-fun getString/-897720134 (var1114) String)
(define-fun replace/2138489945 ((s String) (old String) (new String)) String (str.replace_all s old new))
(declare-fun var1611_newQName/1842138164 (var2695 String) var1114)
(declare-fun replace/1095141889 (var1188 var1114 var1114 var2695) var1188)
(declare-fun build/-1745487932 (var1188) var1307)
(declare-const null-var701 var701)
(declare-const null-var989 var989)
(declare-const var701-FULLY_QUALIFIED_NAME var2693)
(declare-const var701-USE_SHORT_NAME var2693)
(declare-const var3991 var701) ; Statement: r2 := @this: com.google.javascript.refactoring.ErrorToFixMapper 
(assert (not (= var3991 null-var701)))
(declare-const var3862 var989) ; Statement: r1 := @parameter0: com.google.javascript.jscomp.JSError 
(assert (not (= var3862 null-var989)))
(define-const var513 var1188 var1188-init) ; Statement: $r0 = new com.google.javascript.refactoring.SuggestedFix$Builder 
(assert true)
;(assert (<init>/-1552361871 var513)) ; Statement: specialinvoke $r0.<com.google.javascript.refactoring.SuggestedFix$Builder: void <init>()>() 

(declare-const var513!1 var1188)
(assert true)
(define-const var2547 var1114 (getNode/1659036172 var3862)) ; Statement: $r4 = virtualinvoke r1.<com.google.javascript.jscomp.JSError: com.google.javascript.rhino.Node getNode()>() 
(define-const var2599 var2695 (compiler/-1646976390 var3991)) ; Statement: $r3 = r2.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.jscomp.AbstractCompiler compiler> 
(assert true)
(define-const var303 var1188 (attachMatchedNodeInfo/223256563 var513!1 var2547 var2599)) ; Statement: r5 = virtualinvoke $r0.<com.google.javascript.refactoring.SuggestedFix$Builder: com.google.javascript.refactoring.SuggestedFix$Builder attachMatchedNodeInfo(com.google.javascript.rhino.Node,com.google.javascript.jscomp.AbstractCompiler)>($r4, $r3) 
(define-const var1644 var3682 var3682-init) ; Statement: $r6 = new com.google.javascript.refactoring.NodeMetadata 
(define-const var1193 var2695 (compiler/-1646976390 var3991)) ; Statement: $r7 = r2.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.jscomp.AbstractCompiler compiler> 
(assert true)
;(assert (<init>/-1911655441 var1644 var1193)) ; Statement: specialinvoke $r6.<com.google.javascript.refactoring.NodeMetadata: void <init>(com.google.javascript.jscomp.AbstractCompiler)>($r7) 

(declare-const var1644!1 var3682)
(declare-const var1193!1 var2695)
(define-const var460 var960 var960-init) ; Statement: $r8 = new com.google.javascript.refactoring.Match 
(assert true)
(define-const var3345 var1114 (getNode/1659036172 var3862)) ; Statement: $r9 = virtualinvoke r1.<com.google.javascript.jscomp.JSError: com.google.javascript.rhino.Node getNode()>() 
(assert true)
;(assert (<init>/-1574478190 var460 var3345 var1644!1)) ; Statement: specialinvoke $r8.<com.google.javascript.refactoring.Match: void <init>(com.google.javascript.rhino.Node,com.google.javascript.refactoring.NodeMetadata)>($r9, $r6) 

(declare-const var460!1 var960)
(declare-const var3345!1 var1114)
(declare-const var1644!2 var3682)
(define-const var3202 var2695 (compiler/-1646976390 var3991)) ; Statement: $r10 = r2.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.jscomp.AbstractCompiler compiler> 
(assert true)
(define-const var1223 String (getSourceName/21548920 var3862)) ; Statement: $r11 = virtualinvoke r1.<com.google.javascript.jscomp.JSError: java.lang.String getSourceName()>() 
(assert true)
(define-const var1420 var1114 (getScriptNode/-2009922238 var3202 var1223)) ; Statement: r12 = virtualinvoke $r10.<com.google.javascript.jscomp.AbstractCompiler: com.google.javascript.rhino.Node getScriptNode(java.lang.String)>($r11) 
(assert true)
(define-const var1579 var2576 (getMetadataForScript/-1584289664 var3991 var1420)) ; Statement: r13 = virtualinvoke r2.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.refactoring.ScriptMetadata getMetadataForScript(com.google.javascript.rhino.Node)>(r12) 
(define-const var2807 var2693 var701-FULLY_QUALIFIED_NAME) ; Statement: $r14 = <com.google.javascript.refactoring.ErrorToFixMapper: java.util.regex.Pattern FULLY_QUALIFIED_NAME> 
(assert true)
(define-const var1384 String (getDescription/639719136 var3862)) ; Statement: $r15 = virtualinvoke r1.<com.google.javascript.jscomp.JSError: java.lang.String getDescription()>() 
(assert true)
(define-const var1537 var3831 (matcher/468719934 var2807 (cast-from-String-to-String var1384))) ; Statement: r16 = virtualinvoke $r14.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>($r15) 
(assert true)
(define-const var2639 Bool (matches/-149940873 var1537)) ; Statement: $z0 = virtualinvoke r16.<java.util.regex.Matcher: boolean matches()>() 
(assert true)
(define-const var38 String (getDescription/639719136 var3862)) ; Statement: $r17 = virtualinvoke r1.<com.google.javascript.jscomp.JSError: java.lang.String getDescription()>() 
;(assert (var3216_checkState/1633726539 var2639 (cast-from-String-to-var1153 var38))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean,java.lang.Object)>($z0, $r17) 

(declare-const var2639!1 Bool)
(declare-const var38!1 String)
(assert true)
(define-const var1225 String (group/-653887691 var1537 1)) ; Statement: r18 = virtualinvoke r16.<java.util.regex.Matcher: java.lang.String group(int)>(1) 
(define-const var2845 var2693 var701-USE_SHORT_NAME) ; Statement: $r19 = <com.google.javascript.refactoring.ErrorToFixMapper: java.util.regex.Pattern USE_SHORT_NAME> 
(assert true)
(define-const var336 String (getDescription/639719136 var3862)) ; Statement: $r20 = virtualinvoke r1.<com.google.javascript.jscomp.JSError: java.lang.String getDescription()>() 
(assert true)
(define-const var1882 var3831 (matcher/468719934 var2845 (cast-from-String-to-String var336))) ; Statement: r21 = virtualinvoke $r19.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>($r20) 
(assert true)
(define-const var2591 Bool (matches/-149940873 var1882)) ; Statement: $z1 = virtualinvoke r21.<java.util.regex.Matcher: boolean matches()>() 
 ; Statement: if $z1 == 0 goto virtualinvoke r5.<com.google.javascript.refactoring.SuggestedFix$Builder: com.google.javascript.refactoring.SuggestedFix$Builder addGoogRequire(com.google.javascript.refactoring.Match,java.lang.String,com.google.javascript.refactoring.ScriptMetadata)>($r8, r18, r13) 
(assert (not (= (ite var2591 1 0) 0))) ; Negate: Cond: $z1 == 0  
(assert true)
(define-const var3466 String (group/-653887691 var1882 1)) ; Statement: r32 = virtualinvoke r21.<java.util.regex.Matcher: java.lang.String group(int)>(1) 
 ; Statement: goto [?= $r22 = virtualinvoke r1.<com.google.javascript.jscomp.JSError: com.google.javascript.rhino.Node getNode()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var3677 var1114 (getNode/1659036172 var3862)) ; Statement: $r22 = virtualinvoke r1.<com.google.javascript.jscomp.JSError: com.google.javascript.rhino.Node getNode()>() 
(assert true)
(define-const var1781 Bool (isQualifiedName/358135215 var3677)) ; Statement: $z2 = virtualinvoke $r22.<com.google.javascript.rhino.Node: boolean isQualifiedName()>() 
 ; Statement: if $z2 == 0 goto $r23 = virtualinvoke r1.<com.google.javascript.jscomp.JSError: com.google.javascript.rhino.Node getNode()>() 
(assert (= (ite var1781 1 0) 0)) ; Cond: $z2 == 0 
(assert true)
(define-const var304 var1114 (getNode/1659036172 var3862)) ; Statement: $r23 = virtualinvoke r1.<com.google.javascript.jscomp.JSError: com.google.javascript.rhino.Node getNode()>() 
(assert true)
(define-const var2416 String (getString/-897720134 var304)) ; Statement: $r33 = virtualinvoke $r23.<com.google.javascript.rhino.Node: java.lang.String getString()>() 
(assert true) ; Non Conditional
(assert true)
(define-const var561 var1114 (getNode/1659036172 var3862)) ; Statement: $r28 = virtualinvoke r1.<com.google.javascript.jscomp.JSError: com.google.javascript.rhino.Node getNode()>() 
(define-const var2651 var2695 (compiler/-1646976390 var3991)) ; Statement: $r24 = r2.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.jscomp.AbstractCompiler compiler> 
(assert true)
(define-const var2992 String (replace/2138489945 var2416 (cast-from-String-to-String var1225) (cast-from-String-to-String var3466))) ; Statement: $r25 = virtualinvoke $r33.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>(r18, r32) 
(define-const var2483 var1114 (var1611_newQName/1842138164 var2651 var2992)) ; Statement: $r27 = staticinvoke <com.google.javascript.jscomp.NodeUtil: com.google.javascript.rhino.Node newQName(com.google.javascript.jscomp.AbstractCompiler,java.lang.String)>($r24, $r25) 
(define-const var3196 var2695 (compiler/-1646976390 var3991)) ; Statement: $r26 = r2.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.jscomp.AbstractCompiler compiler> 
(assert true)
(define-const var3159 var1188 (replace/1095141889 var303 var561 var2483 var3196)) ; Statement: $r29 = virtualinvoke r5.<com.google.javascript.refactoring.SuggestedFix$Builder: com.google.javascript.refactoring.SuggestedFix$Builder replace(com.google.javascript.rhino.Node,com.google.javascript.rhino.Node,com.google.javascript.jscomp.AbstractCompiler)>($r28, $r27, $r26) 
(assert true)
(define-const var1930 var1307 (build/-1745487932 var3159)) ; Statement: $r30 = virtualinvoke $r29.<com.google.javascript.refactoring.SuggestedFix$Builder: com.google.javascript.refactoring.SuggestedFix build()>() 
 ; Statement: return $r30 
(check-sat)
(get-model)
(get-unsat-core)
; {var1188-init=([], com.google.javascript.refactoring.SuggestedFix$Builder), <init>/-1552361871=([com.google.javascript.refactoring.SuggestedFix$Builder], void), getNode/1659036172=([com.google.javascript.jscomp.JSError], com.google.javascript.rhino.Node), compiler/-1646976390=([com.google.javascript.refactoring.ErrorToFixMapper], com.google.javascript.jscomp.AbstractCompiler), attachMatchedNodeInfo/223256563=([com.google.javascript.refactoring.SuggestedFix$Builder, com.google.javascript.rhino.Node, com.google.javascript.jscomp.AbstractCompiler], com.google.javascript.refactoring.SuggestedFix$Builder), var3682-init=([], com.google.javascript.refactoring.NodeMetadata), <init>/-1911655441=([com.google.javascript.refactoring.NodeMetadata, com.google.javascript.jscomp.AbstractCompiler], void), var960-init=([], com.google.javascript.refactoring.Match), <init>/-1574478190=([com.google.javascript.refactoring.Match, com.google.javascript.rhino.Node, com.google.javascript.refactoring.NodeMetadata], void), getSourceName/21548920=([com.google.javascript.jscomp.JSError], java.lang.String), getScriptNode/-2009922238=([com.google.javascript.jscomp.AbstractCompiler, java.lang.String], com.google.javascript.rhino.Node), getMetadataForScript/-1584289664=([com.google.javascript.refactoring.ErrorToFixMapper, com.google.javascript.rhino.Node], com.google.javascript.refactoring.ScriptMetadata), getDescription/639719136=([com.google.javascript.jscomp.JSError], java.lang.String), matcher/468719934=([java.util.regex.Pattern, java.lang.CharSequence], java.util.regex.Matcher), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), matches/-149940873=([java.util.regex.Matcher], boolean), var3216_checkState/1633726539=([boolean, java.lang.Object], void), cast-from-String-to-var1153=([java.lang.String], java.lang.Object), group/-653887691=([java.util.regex.Matcher, int], java.lang.String), isQualifiedName/358135215=([com.google.javascript.rhino.Node], boolean), getString/-897720134=([com.google.javascript.rhino.Node], java.lang.String), replace/2138489945=([java.lang.String, java.lang.CharSequence, java.lang.CharSequence], java.lang.String), var1611_newQName/1842138164=([com.google.javascript.jscomp.AbstractCompiler, java.lang.String], com.google.javascript.rhino.Node), replace/1095141889=([com.google.javascript.refactoring.SuggestedFix$Builder, com.google.javascript.rhino.Node, com.google.javascript.rhino.Node, com.google.javascript.jscomp.AbstractCompiler], com.google.javascript.refactoring.SuggestedFix$Builder), build/-1745487932=([com.google.javascript.refactoring.SuggestedFix$Builder], com.google.javascript.refactoring.SuggestedFix)}
; {var701=com.google.javascript.refactoring.ErrorToFixMapper, var3991=r2, var989=com.google.javascript.jscomp.JSError, var3862=r1, var1188=com.google.javascript.refactoring.SuggestedFix$Builder, var513=$r0, var1114=com.google.javascript.rhino.Node, var2547=$r4, var2695=com.google.javascript.jscomp.AbstractCompiler, var2599=$r3, var303=r5, var3682=com.google.javascript.refactoring.NodeMetadata, var1644=$r6, var1193=$r7, var960=com.google.javascript.refactoring.Match, var460=$r8, var3345=$r9, var3202=$r10, var1223=$r11, var1420=r12, var2576=com.google.javascript.refactoring.ScriptMetadata, var1579=r13, var2693=java.util.regex.Pattern, var2807=$r14, var1384=$r15, var3831=java.util.regex.Matcher, var1537=r16, var2639=$z0, var38=$r17, var3216=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var1153=java.lang.Object, var1225=r18, var2845=$r19, var336=$r20, var1882=r21, var2591=$z1, var3466=r32, var3677=$r22, var1781=$z2, var304=$r23, var2416=$r33, var561=$r28, var2651=$r24, var2992=$r25, var1611=com.google.javascript.jscomp.NodeUtil, var2483=$r27, var3196=$r26, var3159=$r29, var1307=com.google.javascript.refactoring.SuggestedFix, var1930=$r30}
; {com.google.javascript.refactoring.ErrorToFixMapper=var701, r2=var3991, com.google.javascript.jscomp.JSError=var989, r1=var3862, com.google.javascript.refactoring.SuggestedFix$Builder=var1188, $r0=var513, com.google.javascript.rhino.Node=var1114, $r4=var2547, com.google.javascript.jscomp.AbstractCompiler=var2695, $r3=var2599, r5=var303, com.google.javascript.refactoring.NodeMetadata=var3682, $r6=var1644, $r7=var1193, com.google.javascript.refactoring.Match=var960, $r8=var460, $r9=var3345, $r10=var3202, $r11=var1223, r12=var1420, com.google.javascript.refactoring.ScriptMetadata=var2576, r13=var1579, java.util.regex.Pattern=var2693, $r14=var2807, $r15=var1384, java.util.regex.Matcher=var3831, r16=var1537, $z0=var2639, $r17=var38, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var3216, java.lang.Object=var1153, r18=var1225, $r19=var2845, $r20=var336, r21=var1882, $z1=var2591, r32=var3466, $r22=var3677, $z2=var1781, $r23=var304, $r33=var2416, $r28=var561, $r24=var2651, $r25=var2992, com.google.javascript.jscomp.NodeUtil=var1611, $r27=var2483, $r26=var3196, $r29=var3159, com.google.javascript.refactoring.SuggestedFix=var1307, $r30=var1930}
;seq <java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>
;cnt {"<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>": 1}
;stmts r2 := @this: com.google.javascript.refactoring.ErrorToFixMapper;	r1 := @parameter0: com.google.javascript.jscomp.JSError;	$r0 = new com.google.javascript.refactoring.SuggestedFix$Builder;	specialinvoke $r0.<com.google.javascript.refactoring.SuggestedFix$Builder: void <init>()>();	$r4 = virtualinvoke r1.<com.google.javascript.jscomp.JSError: com.google.javascript.rhino.Node getNode()>();	$r3 = r2.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.jscomp.AbstractCompiler compiler>;	r5 = virtualinvoke $r0.<com.google.javascript.refactoring.SuggestedFix$Builder: com.google.javascript.refactoring.SuggestedFix$Builder attachMatchedNodeInfo(com.google.javascript.rhino.Node,com.google.javascript.jscomp.AbstractCompiler)>($r4, $r3);	$r6 = new com.google.javascript.refactoring.NodeMetadata;	$r7 = r2.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.jscomp.AbstractCompiler compiler>;	specialinvoke $r6.<com.google.javascript.refactoring.NodeMetadata: void <init>(com.google.javascript.jscomp.AbstractCompiler)>($r7);	$r8 = new com.google.javascript.refactoring.Match;	$r9 = virtualinvoke r1.<com.google.javascript.jscomp.JSError: com.google.javascript.rhino.Node getNode()>();	specialinvoke $r8.<com.google.javascript.refactoring.Match: void <init>(com.google.javascript.rhino.Node,com.google.javascript.refactoring.NodeMetadata)>($r9, $r6);	$r10 = r2.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.jscomp.AbstractCompiler compiler>;	$r11 = virtualinvoke r1.<com.google.javascript.jscomp.JSError: java.lang.String getSourceName()>();	r12 = virtualinvoke $r10.<com.google.javascript.jscomp.AbstractCompiler: com.google.javascript.rhino.Node getScriptNode(java.lang.String)>($r11);	r13 = virtualinvoke r2.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.refactoring.ScriptMetadata getMetadataForScript(com.google.javascript.rhino.Node)>(r12);	$r14 = <com.google.javascript.refactoring.ErrorToFixMapper: java.util.regex.Pattern FULLY_QUALIFIED_NAME>;	$r15 = virtualinvoke r1.<com.google.javascript.jscomp.JSError: java.lang.String getDescription()>();	r16 = virtualinvoke $r14.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>($r15);	$z0 = virtualinvoke r16.<java.util.regex.Matcher: boolean matches()>();	$r17 = virtualinvoke r1.<com.google.javascript.jscomp.JSError: java.lang.String getDescription()>();	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean,java.lang.Object)>($z0, $r17);	r18 = virtualinvoke r16.<java.util.regex.Matcher: java.lang.String group(int)>(1);	$r19 = <com.google.javascript.refactoring.ErrorToFixMapper: java.util.regex.Pattern USE_SHORT_NAME>;	$r20 = virtualinvoke r1.<com.google.javascript.jscomp.JSError: java.lang.String getDescription()>();	r21 = virtualinvoke $r19.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>($r20);	$z1 = virtualinvoke r21.<java.util.regex.Matcher: boolean matches()>();	if $z1 == 0 goto virtualinvoke r5.<com.google.javascript.refactoring.SuggestedFix$Builder: com.google.javascript.refactoring.SuggestedFix$Builder addGoogRequire(com.google.javascript.refactoring.Match,java.lang.String,com.google.javascript.refactoring.ScriptMetadata)>($r8, r18, r13);	r32 = virtualinvoke r21.<java.util.regex.Matcher: java.lang.String group(int)>(1);	goto [?= $r22 = virtualinvoke r1.<com.google.javascript.jscomp.JSError: com.google.javascript.rhino.Node getNode()>()];	$r22 = virtualinvoke r1.<com.google.javascript.jscomp.JSError: com.google.javascript.rhino.Node getNode()>();	$z2 = virtualinvoke $r22.<com.google.javascript.rhino.Node: boolean isQualifiedName()>();	if $z2 == 0 goto $r23 = virtualinvoke r1.<com.google.javascript.jscomp.JSError: com.google.javascript.rhino.Node getNode()>();	$r23 = virtualinvoke r1.<com.google.javascript.jscomp.JSError: com.google.javascript.rhino.Node getNode()>();	$r33 = virtualinvoke $r23.<com.google.javascript.rhino.Node: java.lang.String getString()>();	$r28 = virtualinvoke r1.<com.google.javascript.jscomp.JSError: com.google.javascript.rhino.Node getNode()>();	$r24 = r2.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.jscomp.AbstractCompiler compiler>;	$r25 = virtualinvoke $r33.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>(r18, r32);	$r27 = staticinvoke <com.google.javascript.jscomp.NodeUtil: com.google.javascript.rhino.Node newQName(com.google.javascript.jscomp.AbstractCompiler,java.lang.String)>($r24, $r25);	$r26 = r2.<com.google.javascript.refactoring.ErrorToFixMapper: com.google.javascript.jscomp.AbstractCompiler compiler>;	$r29 = virtualinvoke r5.<com.google.javascript.refactoring.SuggestedFix$Builder: com.google.javascript.refactoring.SuggestedFix$Builder replace(com.google.javascript.rhino.Node,com.google.javascript.rhino.Node,com.google.javascript.jscomp.AbstractCompiler)>($r28, $r27, $r26);	$r30 = virtualinvoke $r29.<com.google.javascript.refactoring.SuggestedFix$Builder: com.google.javascript.refactoring.SuggestedFix build()>();	return $r30
;block_num 5