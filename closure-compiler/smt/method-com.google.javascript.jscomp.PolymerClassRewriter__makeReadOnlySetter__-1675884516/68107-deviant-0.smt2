(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var983 0)
(declare-sort var366 0)
(declare-sort var3536 0)
(declare-sort var3846 0)
(declare-sort var522 0)
(declare-sort var76 0)
(declare-sort var978 0)
(declare-sort var835 0)
(declare-sort var770 0)
(declare-sort var246 0)
(declare-sort var1864 0)
(declare-sort var3906 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/-14936049 (var366) var3846)
(declare-fun getString/-897720134 (var3846) String)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun toUpperCase/398655892 (String var522) String)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-fun var76_name/56234954 (String) var3846)
(declare-fun arr-var3846-init () (Array Int var3846))
(declare-fun var76_paramList/1499845910 ((Array Int var3846)) var3846)
(declare-fun var76_block/1312945245 () var3846)
(declare-fun var76_function/2055024109 (var3846 var3846 var3846) var3846)
(declare-fun compiler/-772960979 (var983) var978)
(declare-fun reportChangeToChangeScope/826661009 (var978 var3846) void)
(declare-fun var835_newQName/1842138164 (var978 String) var3846)
(declare-fun var76_assign/-822116683 (var3846 var3846) var3846)
(declare-fun var76_exprResult/78340659 (var3846) var3846)
(declare-fun var246_builder/1271373685 () var770)
(declare-fun parseDocumentation/-1905248948 (var770) var770)
(declare-fun recordOverride/1051747645 (var770) Bool)
(declare-fun var3906_getTypeFromProperty/353267766 (var366 var978) var1864)
(declare-fun recordParameter/-1503186089 (var770 String var1864) Bool)
(declare-fun getFirstChild/2090828207 (var3846) var3846)
(declare-fun build/774568528 (var770) var246)
(declare-fun setJSDocInfo/500165350 (var3846 var246) var3846)
(declare-const null-var983 var983)
(declare-const null-var366 var366)
(declare-const null-String String)
(declare-const var522-ROOT var522)
(declare-const null-__Array__Int__var3846__ (Array Int var3846))
(declare-const var1675 var983) ; Statement: r14 := @this: com.google.javascript.jscomp.PolymerClassRewriter 
(assert (not (= var1675 null-var983)))
(declare-const var2023 var366) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.PolymerPass$MemberDefinition 
(assert (not (= var2023 null-var366)))
(declare-const var1353 String) ; Statement: r16 := @parameter1: java.lang.String 
(assert (not (= var1353 null-String)))
(define-const var2051 var3846 (name/-14936049 var2023)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.PolymerPass$MemberDefinition: com.google.javascript.rhino.Node name> 
(assert true)
(define-const var3050 String (getString/-897720134 var2051)) ; Statement: r2 = virtualinvoke $r1.<com.google.javascript.rhino.Node: java.lang.String getString()>() 
(assert (not (and true (and (>= 0 0) (>= (str.len var3050) 1) (>= 1 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {name/-14936049=([com.google.javascript.jscomp.PolymerPass$MemberDefinition], com.google.javascript.rhino.Node), getString/-897720134=([com.google.javascript.rhino.Node], java.lang.String), substring/-1240304868=([java.lang.String, int, int], java.lang.String), toUpperCase/398655892=([java.lang.String, java.util.Locale], java.lang.String), substring/850833817=([java.lang.String, int], java.lang.String), var76_name/56234954=([java.lang.String], com.google.javascript.rhino.Node), arr-var3846-init=([], com.google.javascript.rhino.Node[]), var76_paramList/1499845910=([com.google.javascript.rhino.Node[]], com.google.javascript.rhino.Node), var76_block/1312945245=([], com.google.javascript.rhino.Node), var76_function/2055024109=([com.google.javascript.rhino.Node, com.google.javascript.rhino.Node, com.google.javascript.rhino.Node], com.google.javascript.rhino.Node), compiler/-772960979=([com.google.javascript.jscomp.PolymerClassRewriter], com.google.javascript.jscomp.AbstractCompiler), reportChangeToChangeScope/826661009=([com.google.javascript.jscomp.AbstractCompiler, com.google.javascript.rhino.Node], void), var835_newQName/1842138164=([com.google.javascript.jscomp.AbstractCompiler, java.lang.String], com.google.javascript.rhino.Node), var76_assign/-822116683=([com.google.javascript.rhino.Node, com.google.javascript.rhino.Node], com.google.javascript.rhino.Node), var76_exprResult/78340659=([com.google.javascript.rhino.Node], com.google.javascript.rhino.Node), var246_builder/1271373685=([], com.google.javascript.rhino.JSDocInfo$Builder), parseDocumentation/-1905248948=([com.google.javascript.rhino.JSDocInfo$Builder], com.google.javascript.rhino.JSDocInfo$Builder), recordOverride/1051747645=([com.google.javascript.rhino.JSDocInfo$Builder], boolean), var3906_getTypeFromProperty/353267766=([com.google.javascript.jscomp.PolymerPass$MemberDefinition, com.google.javascript.jscomp.AbstractCompiler], com.google.javascript.rhino.JSTypeExpression), recordParameter/-1503186089=([com.google.javascript.rhino.JSDocInfo$Builder, java.lang.String, com.google.javascript.rhino.JSTypeExpression], boolean), getFirstChild/2090828207=([com.google.javascript.rhino.Node], com.google.javascript.rhino.Node), build/774568528=([com.google.javascript.rhino.JSDocInfo$Builder], com.google.javascript.rhino.JSDocInfo), setJSDocInfo/500165350=([com.google.javascript.rhino.Node, com.google.javascript.rhino.JSDocInfo], com.google.javascript.rhino.Node)}
; {var983=com.google.javascript.jscomp.PolymerClassRewriter, var1675=r14, var366=com.google.javascript.jscomp.PolymerPass$MemberDefinition, var2023=r0, var1353=r16, var3536=null_type, var3846=com.google.javascript.rhino.Node, var2051=$r1, var3050=r2, var781=$r4, var522=java.util.Locale, var3158=$r3, var3398=$r6, var642=$r5, var3048=r7, var76=com.google.javascript.rhino.IR, var1644=$r12, var1334=$r8, var3228=$r9, var3244=$r11, var2571=$r10, var1024=r13, var978=com.google.javascript.jscomp.AbstractCompiler, var2462=$r15, var2144=$r17, var1822=$r18, var835=com.google.javascript.jscomp.NodeUtil, var822=$r19, var609=$r20, var199=r21, var770=com.google.javascript.rhino.JSDocInfo$Builder, var246=com.google.javascript.rhino.JSDocInfo, var466=$r22, var1154=r23, var3974=$r24, var1864=com.google.javascript.rhino.JSTypeExpression, var3906=com.google.javascript.jscomp.PolymerPassStaticUtils, var1918=r25, var3383=$r27, var2208=$r26}
; {com.google.javascript.jscomp.PolymerClassRewriter=var983, r14=var1675, com.google.javascript.jscomp.PolymerPass$MemberDefinition=var366, r0=var2023, r16=var1353, null_type=var3536, com.google.javascript.rhino.Node=var3846, $r1=var2051, r2=var3050, $r4=var781, java.util.Locale=var522, $r3=var3158, $r6=var3398, $r5=var642, r7=var3048, com.google.javascript.rhino.IR=var76, $r12=var1644, $r8=var1334, $r9=var3228, $r11=var3244, $r10=var2571, r13=var1024, com.google.javascript.jscomp.AbstractCompiler=var978, $r15=var2462, $r17=var2144, $r18=var1822, com.google.javascript.jscomp.NodeUtil=var835, $r19=var822, $r20=var609, r21=var199, com.google.javascript.rhino.JSDocInfo$Builder=var770, com.google.javascript.rhino.JSDocInfo=var246, $r22=var466, r23=var1154, $r24=var3974, com.google.javascript.rhino.JSTypeExpression=var1864, com.google.javascript.jscomp.PolymerPassStaticUtils=var3906, r25=var1918, $r27=var3383, $r26=var2208}
;seq <java.lang.String: java.lang.String substring(int,int)>;	<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>;	<java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>": 1,"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r14 := @this: com.google.javascript.jscomp.PolymerClassRewriter;	r0 := @parameter0: com.google.javascript.jscomp.PolymerPass$MemberDefinition;	r16 := @parameter1: java.lang.String;	$r1 = r0.<com.google.javascript.jscomp.PolymerPass$MemberDefinition: com.google.javascript.rhino.Node name>;	r2 = virtualinvoke $r1.<com.google.javascript.rhino.Node: java.lang.String getString()>();	$r4 = virtualinvoke r2.<java.lang.String: java.lang.String substring(int,int)>(0, 1);	$r3 = <java.util.Locale: java.util.Locale ROOT>;	$r6 = virtualinvoke $r4.<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>($r3);	$r5 = virtualinvoke r2.<java.lang.String: java.lang.String substring(int)>(1);	r7 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,java.lang.String)>($r6, $r5) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("_set\u0001\u0001");	$r12 = staticinvoke <com.google.javascript.rhino.IR: com.google.javascript.rhino.Node name(java.lang.String)>("");	$r8 = newarray (com.google.javascript.rhino.Node)[1];	$r9 = staticinvoke <com.google.javascript.rhino.IR: com.google.javascript.rhino.Node name(java.lang.String)>(r2);	$r8[0] = $r9;	$r11 = staticinvoke <com.google.javascript.rhino.IR: com.google.javascript.rhino.Node paramList(com.google.javascript.rhino.Node[])>($r8);	$r10 = staticinvoke <com.google.javascript.rhino.IR: com.google.javascript.rhino.Node block()>();	r13 = staticinvoke <com.google.javascript.rhino.IR: com.google.javascript.rhino.Node function(com.google.javascript.rhino.Node,com.google.javascript.rhino.Node,com.google.javascript.rhino.Node)>($r12, $r11, $r10);	$r15 = r14.<com.google.javascript.jscomp.PolymerClassRewriter: com.google.javascript.jscomp.AbstractCompiler compiler>;	virtualinvoke $r15.<com.google.javascript.jscomp.AbstractCompiler: void reportChangeToChangeScope(com.google.javascript.rhino.Node)>(r13);	$r17 = r14.<com.google.javascript.jscomp.PolymerClassRewriter: com.google.javascript.jscomp.AbstractCompiler compiler>;	$r18 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,java.lang.String)>(r16, r7) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001\u0001");	$r19 = staticinvoke <com.google.javascript.jscomp.NodeUtil: com.google.javascript.rhino.Node newQName(com.google.javascript.jscomp.AbstractCompiler,java.lang.String)>($r17, $r18);	$r20 = staticinvoke <com.google.javascript.rhino.IR: com.google.javascript.rhino.Node assign(com.google.javascript.rhino.Node,com.google.javascript.rhino.Node)>($r19, r13);	r21 = staticinvoke <com.google.javascript.rhino.IR: com.google.javascript.rhino.Node exprResult(com.google.javascript.rhino.Node)>($r20);	$r22 = staticinvoke <com.google.javascript.rhino.JSDocInfo: com.google.javascript.rhino.JSDocInfo$Builder builder()>();	r23 = virtualinvoke $r22.<com.google.javascript.rhino.JSDocInfo$Builder: com.google.javascript.rhino.JSDocInfo$Builder parseDocumentation()>();	virtualinvoke r23.<com.google.javascript.rhino.JSDocInfo$Builder: boolean recordOverride()>();	$r24 = r14.<com.google.javascript.jscomp.PolymerClassRewriter: com.google.javascript.jscomp.AbstractCompiler compiler>;	r25 = staticinvoke <com.google.javascript.jscomp.PolymerPassStaticUtils: com.google.javascript.rhino.JSTypeExpression getTypeFromProperty(com.google.javascript.jscomp.PolymerPass$MemberDefinition,com.google.javascript.jscomp.AbstractCompiler)>(r0, $r24);	virtualinvoke r23.<com.google.javascript.rhino.JSDocInfo$Builder: boolean recordParameter(java.lang.String,com.google.javascript.rhino.JSTypeExpression)>(r2, r25);	$r27 = virtualinvoke r21.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getFirstChild()>();	$r26 = virtualinvoke r23.<com.google.javascript.rhino.JSDocInfo$Builder: com.google.javascript.rhino.JSDocInfo build()>();	virtualinvoke $r27.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node setJSDocInfo(com.google.javascript.rhino.JSDocInfo)>($r26);	return r21
;block_num 1