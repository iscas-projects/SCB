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
(assert (and true (and (>= 0 0) (>= (str.len var3050) 1) (>= 1 0))))
(define-const var781 String (substring/-1240304868 var3050 0 1)) ; Statement: $r4 = virtualinvoke r2.<java.lang.String: java.lang.String substring(int,int)>(0, 1) 
(define-const var3158 var522 var522-ROOT) ; Statement: $r3 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var3398 String (toUpperCase/398655892 var781 var3158)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>($r3) 
(assert (and true (and (>= 1 0) (>= (str.len var3050) 1))))
(define-const var642 String (substring/850833817 var3050 1)) ; Statement: $r5 = virtualinvoke r2.<java.lang.String: java.lang.String substring(int)>(1) 
(define-const var3048 String (str.++ "_set\u0001\u0001" var3398 var642)) ; Statement: r7 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,java.lang.String)>($r6, $r5) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("_set\u0001\u0001") 
(define-const var1644 var3846 (var76_name/56234954 "")) ; Statement: $r12 = staticinvoke <com.google.javascript.rhino.IR: com.google.javascript.rhino.Node name(java.lang.String)>("") 
(define-const var1334 (Array Int var3846) arr-var3846-init) ; Statement: $r8 = newarray (com.google.javascript.rhino.Node)[1] 
(define-const var3228 var3846 (var76_name/56234954 var3050)) ; Statement: $r9 = staticinvoke <com.google.javascript.rhino.IR: com.google.javascript.rhino.Node name(java.lang.String)>(r2) 
(declare-const var1334!1 (Array Int var3846))
(assert (not (= var1334!1 null-__Array__Int__var3846__)))
(assert (= (select var1334!1 0) var3228)) ; Statement: $r8[0] = $r9 
(define-const var3244 var3846 (var76_paramList/1499845910 var1334!1)) ; Statement: $r11 = staticinvoke <com.google.javascript.rhino.IR: com.google.javascript.rhino.Node paramList(com.google.javascript.rhino.Node[])>($r8) 
(define-const var2571 var3846 var76_block/1312945245) ; Statement: $r10 = staticinvoke <com.google.javascript.rhino.IR: com.google.javascript.rhino.Node block()>() 
(define-const var1024 var3846 (var76_function/2055024109 var1644 var3244 var2571)) ; Statement: r13 = staticinvoke <com.google.javascript.rhino.IR: com.google.javascript.rhino.Node function(com.google.javascript.rhino.Node,com.google.javascript.rhino.Node,com.google.javascript.rhino.Node)>($r12, $r11, $r10) 
(define-const var2462 var978 (compiler/-772960979 var1675)) ; Statement: $r15 = r14.<com.google.javascript.jscomp.PolymerClassRewriter: com.google.javascript.jscomp.AbstractCompiler compiler> 
(assert true)
;(assert (reportChangeToChangeScope/826661009 var2462 var1024)) ; Statement: virtualinvoke $r15.<com.google.javascript.jscomp.AbstractCompiler: void reportChangeToChangeScope(com.google.javascript.rhino.Node)>(r13) 

(declare-const var2462!1 var978)
(declare-const var1024!1 var3846)
(define-const var2144 var978 (compiler/-772960979 var1675)) ; Statement: $r17 = r14.<com.google.javascript.jscomp.PolymerClassRewriter: com.google.javascript.jscomp.AbstractCompiler compiler> 
(define-const var1822 String (str.++ "\u0001\u0001" var1353 var3048)) ; Statement: $r18 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,java.lang.String)>(r16, r7) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001\u0001") 
(define-const var822 var3846 (var835_newQName/1842138164 var2144 var1822)) ; Statement: $r19 = staticinvoke <com.google.javascript.jscomp.NodeUtil: com.google.javascript.rhino.Node newQName(com.google.javascript.jscomp.AbstractCompiler,java.lang.String)>($r17, $r18) 
(define-const var609 var3846 (var76_assign/-822116683 var822 var1024!1)) ; Statement: $r20 = staticinvoke <com.google.javascript.rhino.IR: com.google.javascript.rhino.Node assign(com.google.javascript.rhino.Node,com.google.javascript.rhino.Node)>($r19, r13) 
(define-const var199 var3846 (var76_exprResult/78340659 var609)) ; Statement: r21 = staticinvoke <com.google.javascript.rhino.IR: com.google.javascript.rhino.Node exprResult(com.google.javascript.rhino.Node)>($r20) 
(define-const var466 var770 var246_builder/1271373685) ; Statement: $r22 = staticinvoke <com.google.javascript.rhino.JSDocInfo: com.google.javascript.rhino.JSDocInfo$Builder builder()>() 
(assert true)
(define-const var1154 var770 (parseDocumentation/-1905248948 var466)) ; Statement: r23 = virtualinvoke $r22.<com.google.javascript.rhino.JSDocInfo$Builder: com.google.javascript.rhino.JSDocInfo$Builder parseDocumentation()>() 
(assert true)
;(assert (recordOverride/1051747645 var1154)) ; Statement: virtualinvoke r23.<com.google.javascript.rhino.JSDocInfo$Builder: boolean recordOverride()>() 

(declare-const var1154!1 var770)
(define-const var3974 var978 (compiler/-772960979 var1675)) ; Statement: $r24 = r14.<com.google.javascript.jscomp.PolymerClassRewriter: com.google.javascript.jscomp.AbstractCompiler compiler> 
(define-const var1918 var1864 (var3906_getTypeFromProperty/353267766 var2023 var3974)) ; Statement: r25 = staticinvoke <com.google.javascript.jscomp.PolymerPassStaticUtils: com.google.javascript.rhino.JSTypeExpression getTypeFromProperty(com.google.javascript.jscomp.PolymerPass$MemberDefinition,com.google.javascript.jscomp.AbstractCompiler)>(r0, $r24) 
(assert true)
;(assert (recordParameter/-1503186089 var1154!1 var3050 var1918)) ; Statement: virtualinvoke r23.<com.google.javascript.rhino.JSDocInfo$Builder: boolean recordParameter(java.lang.String,com.google.javascript.rhino.JSTypeExpression)>(r2, r25) 

(declare-const var1154!2 var770)
(declare-const var3050!1 String)
(declare-const var1918!1 var1864)
(assert true)
(define-const var3383 var3846 (getFirstChild/2090828207 var199)) ; Statement: $r27 = virtualinvoke r21.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getFirstChild()>() 
(assert true)
(define-const var2208 var246 (build/774568528 var1154!2)) ; Statement: $r26 = virtualinvoke r23.<com.google.javascript.rhino.JSDocInfo$Builder: com.google.javascript.rhino.JSDocInfo build()>() 
(assert true)
;(assert (setJSDocInfo/500165350 var3383 var2208)) ; Statement: virtualinvoke $r27.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node setJSDocInfo(com.google.javascript.rhino.JSDocInfo)>($r26) 

(declare-const var3383!1 var3846)
(declare-const var2208!1 var246)
 ; Statement: return r21 
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