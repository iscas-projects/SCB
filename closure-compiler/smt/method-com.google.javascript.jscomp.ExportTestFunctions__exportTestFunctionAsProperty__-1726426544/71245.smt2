(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3305 0)
(declare-sort var2496 0)
(declare-sort var2384 0)
(declare-sort var2302 0)
(declare-sort var3312 0)
(declare-sort var3067 0)
(declare-sort var3337 0)
(declare-sort var3850 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isGetProp/-1072994147 (var2496) Bool)
(declare-fun var2384_checkState/1633726539 (Bool var2302) void)
(declare-fun cast-from-var2496-to-var2302 (var2496) var2302)
(declare-fun getFirstChild/2090828207 (var2496) var2496)
(declare-fun var3312_getPrototypePropertyName/-624841834 (var2496) String)
(declare-fun getQualifiedName/48314856 (var2496) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun compiler/-1066486504 (var3305) var3067)
(declare-fun exportPropertyFunction/-1066486504 (var3305) String)
(declare-fun var3312_newQName/1842138164 (var3067 String) var2496)
(declare-fun arr-var2496-init () (Array Int var2496))
(declare-fun getOnlyChild/708960943 (var2496) var2496)
(declare-fun cloneTree/-1529247050 (var2496) var2496)
(declare-fun var3337_string/730211268 (String) var2496)
(declare-fun var3337_call/-535858426 (var2496 (Array Int var2496)) var2496)
(declare-fun isName/-1249361959 (var2496) Bool)
(declare-fun putBooleanProp/66408908 (var2496 var3850 Bool) void)
(declare-fun var3337_exprResult/78340659 (var2496) var2496)
(declare-fun srcrefTree/-1502961263 (var2496 var2496) var2496)
(declare-fun getParent/-1802087535 (var2496) var2496)
(declare-fun insertAfter/-1760569308 (var2496 var2496) void)
(declare-fun reportChangeToEnclosingScope/-670294105 (var3067 var2496) void)
(declare-const null-var3305 var3305)
(declare-const null-var2496 var2496)
(declare-const null-__Array__Int__var2496__ (Array Int var2496))
(declare-const var2496-FREE_CALL var3850)
(declare-const var3460 var3305) ; Statement: r5 := @this: com.google.javascript.jscomp.ExportTestFunctions 
(assert (not (= var3460 null-var3305)))
(declare-const var1803 var2496) ; Statement: r0 := @parameter0: com.google.javascript.rhino.Node 
(assert (not (= var1803 null-var2496)))
(declare-const var2800 var2496) ; Statement: r1 := @parameter1: com.google.javascript.rhino.Node 
(assert (not (= var2800 null-var2496)))
(assert true)
(define-const var3176 Bool (isGetProp/-1072994147 var1803)) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isGetProp()>() 
;(assert (var2384_checkState/1633726539 var3176 (cast-from-var2496-to-var2302 var1803))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean,java.lang.Object)>($z0, r0) 

(declare-const var3176!1 Bool)
(declare-const var1803!1 var2496)
(assert true)
(define-const var3820 var2496 (getFirstChild/2090828207 var2800)) ; Statement: $r2 = virtualinvoke r1.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getFirstChild()>() 
(define-const var1714 String (var3312_getPrototypePropertyName/-624841834 var3820)) ; Statement: r24 = staticinvoke <com.google.javascript.jscomp.NodeUtil: java.lang.String getPrototypePropertyName(com.google.javascript.rhino.Node)>($r2) 
(assert true)
(define-const var3802 var2496 (getFirstChild/2090828207 var2800)) ; Statement: $r3 = virtualinvoke r1.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getFirstChild()>() 
(assert true)
(define-const var430 String (getQualifiedName/48314856 var3802)) ; Statement: $r4 = virtualinvoke $r3.<com.google.javascript.rhino.Node: java.lang.String getQualifiedName()>() 
(assert true)
(define-const var1182 Bool (startsWith/-1785782452 var430 "window.")) ; Statement: $z1 = virtualinvoke $r4.<java.lang.String: boolean startsWith(java.lang.String)>("window.") 
 ; Statement: if $z1 == 0 goto $r7 = r5.<com.google.javascript.jscomp.ExportTestFunctions: com.google.javascript.jscomp.AbstractCompiler compiler> 
(assert (= (ite var1182 1 0) 0)) ; Cond: $z1 == 0 
(define-const var1598 var3067 (compiler/-1066486504 var3460)) ; Statement: $r7 = r5.<com.google.javascript.jscomp.ExportTestFunctions: com.google.javascript.jscomp.AbstractCompiler compiler> 
(define-const var3762 String (exportPropertyFunction/-1066486504 var3460)) ; Statement: $r6 = r5.<com.google.javascript.jscomp.ExportTestFunctions: java.lang.String exportPropertyFunction> 
(define-const var63 var2496 (var3312_newQName/1842138164 var1598 var3762)) ; Statement: $r13 = staticinvoke <com.google.javascript.jscomp.NodeUtil: com.google.javascript.rhino.Node newQName(com.google.javascript.jscomp.AbstractCompiler,java.lang.String)>($r7, $r6) 
(define-const var1950 (Array Int var2496) arr-var2496-init) ; Statement: $r8 = newarray (com.google.javascript.rhino.Node)[3] 
(assert true)
(define-const var943 var2496 (getOnlyChild/708960943 var1803!1)) ; Statement: $r9 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getOnlyChild()>() 
(assert true)
(define-const var2969 var2496 (cloneTree/-1529247050 var943)) ; Statement: $r10 = virtualinvoke $r9.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node cloneTree()>() 
(declare-const var1950!1 (Array Int var2496))
(assert (not (= var1950!1 null-__Array__Int__var2496__)))
(assert (= (select var1950!1 0) var2969)) ; Statement: $r8[0] = $r10 
(define-const var2487 var2496 (var3337_string/730211268 var1714)) ; Statement: $r11 = staticinvoke <com.google.javascript.rhino.IR: com.google.javascript.rhino.Node string(java.lang.String)>(r24) 
(declare-const var1950!2 (Array Int var2496))
(assert (not (= var1950!2 null-__Array__Int__var2496__)))
(assert (= (select var1950!2 1) var2487)) ; Statement: $r8[1] = $r11 
(assert true)
(define-const var3031 var2496 (cloneTree/-1529247050 var1803!1)) ; Statement: $r12 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node cloneTree()>() 
(declare-const var1950!3 (Array Int var2496))
(assert (not (= var1950!3 null-__Array__Int__var2496__)))
(assert (= (select var1950!3 2) var3031)) ; Statement: $r8[2] = $r12 
(define-const var891 var2496 (var3337_call/-535858426 var63 var1950!3)) ; Statement: $r22 = staticinvoke <com.google.javascript.rhino.IR: com.google.javascript.rhino.Node call(com.google.javascript.rhino.Node,com.google.javascript.rhino.Node[])>($r13, $r8) 
(define-const var850 var3850 var2496-FREE_CALL) ; Statement: $r14 = <com.google.javascript.rhino.Node: com.google.javascript.rhino.Node$Prop FREE_CALL> 
(assert true)
(define-const var1615 var2496 (getFirstChild/2090828207 var891)) ; Statement: $r15 = virtualinvoke $r22.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getFirstChild()>() 
(assert true)
(define-const var478 Bool (isName/-1249361959 var1615)) ; Statement: $z2 = virtualinvoke $r15.<com.google.javascript.rhino.Node: boolean isName()>() 
(assert true)
;(assert (putBooleanProp/66408908 var891 var850 var478)) ; Statement: virtualinvoke $r22.<com.google.javascript.rhino.Node: void putBooleanProp(com.google.javascript.rhino.Node$Prop,boolean)>($r14, $z2) 

(declare-const var891!1 var2496)
(declare-const var850!1 var3850)
(declare-const var478!1 Bool)
(define-const var222 var2496 (var3337_exprResult/78340659 var891!1)) ; Statement: $r16 = staticinvoke <com.google.javascript.rhino.IR: com.google.javascript.rhino.Node exprResult(com.google.javascript.rhino.Node)>($r22) 
(assert true)
(define-const var3840 var2496 (srcrefTree/-1502961263 var222 var2800)) ; Statement: $r23 = virtualinvoke $r16.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node srcrefTree(com.google.javascript.rhino.Node)>(r1) 
(assert true)
(define-const var853 var2496 (getParent/-1802087535 var2800)) ; Statement: $r17 = virtualinvoke r1.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getParent()>() 
(assert true)
;(assert (insertAfter/-1760569308 var3840 var853)) ; Statement: virtualinvoke $r23.<com.google.javascript.rhino.Node: void insertAfter(com.google.javascript.rhino.Node)>($r17) 

(declare-const var3840!1 var2496)
(declare-const var853!1 var2496)
(define-const var819 var3067 (compiler/-1066486504 var3460)) ; Statement: $r18 = r5.<com.google.javascript.jscomp.ExportTestFunctions: com.google.javascript.jscomp.AbstractCompiler compiler> 
(assert true)
;(assert (reportChangeToEnclosingScope/-670294105 var819 var3840!1)) ; Statement: virtualinvoke $r18.<com.google.javascript.jscomp.AbstractCompiler: void reportChangeToEnclosingScope(com.google.javascript.rhino.Node)>($r23) 

(declare-const var819!1 var3067)
(declare-const var3840!2 var2496)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {isGetProp/-1072994147=([com.google.javascript.rhino.Node], boolean), var2384_checkState/1633726539=([boolean, java.lang.Object], void), cast-from-var2496-to-var2302=([com.google.javascript.rhino.Node], java.lang.Object), getFirstChild/2090828207=([com.google.javascript.rhino.Node], com.google.javascript.rhino.Node), var3312_getPrototypePropertyName/-624841834=([com.google.javascript.rhino.Node], java.lang.String), getQualifiedName/48314856=([com.google.javascript.rhino.Node], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), compiler/-1066486504=([com.google.javascript.jscomp.ExportTestFunctions], com.google.javascript.jscomp.AbstractCompiler), exportPropertyFunction/-1066486504=([com.google.javascript.jscomp.ExportTestFunctions], java.lang.String), var3312_newQName/1842138164=([com.google.javascript.jscomp.AbstractCompiler, java.lang.String], com.google.javascript.rhino.Node), arr-var2496-init=([], com.google.javascript.rhino.Node[]), getOnlyChild/708960943=([com.google.javascript.rhino.Node], com.google.javascript.rhino.Node), cloneTree/-1529247050=([com.google.javascript.rhino.Node], com.google.javascript.rhino.Node), var3337_string/730211268=([java.lang.String], com.google.javascript.rhino.Node), var3337_call/-535858426=([com.google.javascript.rhino.Node, com.google.javascript.rhino.Node[]], com.google.javascript.rhino.Node), isName/-1249361959=([com.google.javascript.rhino.Node], boolean), putBooleanProp/66408908=([com.google.javascript.rhino.Node, com.google.javascript.rhino.Node$Prop, boolean], void), var3337_exprResult/78340659=([com.google.javascript.rhino.Node], com.google.javascript.rhino.Node), srcrefTree/-1502961263=([com.google.javascript.rhino.Node, com.google.javascript.rhino.Node], com.google.javascript.rhino.Node), getParent/-1802087535=([com.google.javascript.rhino.Node], com.google.javascript.rhino.Node), insertAfter/-1760569308=([com.google.javascript.rhino.Node, com.google.javascript.rhino.Node], void), reportChangeToEnclosingScope/-670294105=([com.google.javascript.jscomp.AbstractCompiler, com.google.javascript.rhino.Node], void)}
; {var3305=com.google.javascript.jscomp.ExportTestFunctions, var3460=r5, var2496=com.google.javascript.rhino.Node, var1803=r0, var2800=r1, var3176=$z0, var2384=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var2302=java.lang.Object, var3820=$r2, var3312=com.google.javascript.jscomp.NodeUtil, var1714=r24, var3802=$r3, var430=$r4, var1182=$z1, var3067=com.google.javascript.jscomp.AbstractCompiler, var1598=$r7, var3762=$r6, var63=$r13, var1950=$r8, var943=$r9, var2969=$r10, var3337=com.google.javascript.rhino.IR, var2487=$r11, var3031=$r12, var891=$r22, var3850=com.google.javascript.rhino.Node$Prop, var850=$r14, var1615=$r15, var478=$z2, var222=$r16, var3840=$r23, var853=$r17, var819=$r18}
; {com.google.javascript.jscomp.ExportTestFunctions=var3305, r5=var3460, com.google.javascript.rhino.Node=var2496, r0=var1803, r1=var2800, $z0=var3176, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var2384, java.lang.Object=var2302, $r2=var3820, com.google.javascript.jscomp.NodeUtil=var3312, r24=var1714, $r3=var3802, $r4=var430, $z1=var1182, com.google.javascript.jscomp.AbstractCompiler=var3067, $r7=var1598, $r6=var3762, $r13=var63, $r8=var1950, $r9=var943, $r10=var2969, com.google.javascript.rhino.IR=var3337, $r11=var2487, $r12=var3031, $r22=var891, com.google.javascript.rhino.Node$Prop=var3850, $r14=var850, $r15=var1615, $z2=var478, $r16=var222, $r23=var3840, $r17=var853, $r18=var819}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r5 := @this: com.google.javascript.jscomp.ExportTestFunctions;	r0 := @parameter0: com.google.javascript.rhino.Node;	r1 := @parameter1: com.google.javascript.rhino.Node;	$z0 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isGetProp()>();	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean,java.lang.Object)>($z0, r0);	$r2 = virtualinvoke r1.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getFirstChild()>();	r24 = staticinvoke <com.google.javascript.jscomp.NodeUtil: java.lang.String getPrototypePropertyName(com.google.javascript.rhino.Node)>($r2);	$r3 = virtualinvoke r1.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getFirstChild()>();	$r4 = virtualinvoke $r3.<com.google.javascript.rhino.Node: java.lang.String getQualifiedName()>();	$z1 = virtualinvoke $r4.<java.lang.String: boolean startsWith(java.lang.String)>("window.");	if $z1 == 0 goto $r7 = r5.<com.google.javascript.jscomp.ExportTestFunctions: com.google.javascript.jscomp.AbstractCompiler compiler>;	$r7 = r5.<com.google.javascript.jscomp.ExportTestFunctions: com.google.javascript.jscomp.AbstractCompiler compiler>;	$r6 = r5.<com.google.javascript.jscomp.ExportTestFunctions: java.lang.String exportPropertyFunction>;	$r13 = staticinvoke <com.google.javascript.jscomp.NodeUtil: com.google.javascript.rhino.Node newQName(com.google.javascript.jscomp.AbstractCompiler,java.lang.String)>($r7, $r6);	$r8 = newarray (com.google.javascript.rhino.Node)[3];	$r9 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getOnlyChild()>();	$r10 = virtualinvoke $r9.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node cloneTree()>();	$r8[0] = $r10;	$r11 = staticinvoke <com.google.javascript.rhino.IR: com.google.javascript.rhino.Node string(java.lang.String)>(r24);	$r8[1] = $r11;	$r12 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node cloneTree()>();	$r8[2] = $r12;	$r22 = staticinvoke <com.google.javascript.rhino.IR: com.google.javascript.rhino.Node call(com.google.javascript.rhino.Node,com.google.javascript.rhino.Node[])>($r13, $r8);	$r14 = <com.google.javascript.rhino.Node: com.google.javascript.rhino.Node$Prop FREE_CALL>;	$r15 = virtualinvoke $r22.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getFirstChild()>();	$z2 = virtualinvoke $r15.<com.google.javascript.rhino.Node: boolean isName()>();	virtualinvoke $r22.<com.google.javascript.rhino.Node: void putBooleanProp(com.google.javascript.rhino.Node$Prop,boolean)>($r14, $z2);	$r16 = staticinvoke <com.google.javascript.rhino.IR: com.google.javascript.rhino.Node exprResult(com.google.javascript.rhino.Node)>($r22);	$r23 = virtualinvoke $r16.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node srcrefTree(com.google.javascript.rhino.Node)>(r1);	$r17 = virtualinvoke r1.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getParent()>();	virtualinvoke $r23.<com.google.javascript.rhino.Node: void insertAfter(com.google.javascript.rhino.Node)>($r17);	$r18 = r5.<com.google.javascript.jscomp.ExportTestFunctions: com.google.javascript.jscomp.AbstractCompiler compiler>;	virtualinvoke $r18.<com.google.javascript.jscomp.AbstractCompiler: void reportChangeToEnclosingScope(com.google.javascript.rhino.Node)>($r23);	return
;block_num 2