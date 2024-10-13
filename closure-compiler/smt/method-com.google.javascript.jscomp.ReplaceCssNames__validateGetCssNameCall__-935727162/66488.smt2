(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3007 0)
(declare-sort var1897 0)
(declare-sort var720 0)
(declare-sort var574 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getChildCount/-1434875012 (var1897) Int)
(declare-fun arr-String-init () (Array Int String))
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun var574_make/233788289 (var1897 var720 (Array Int String)) var574)
(declare-const null-var3007 var3007)
(declare-const null-var1897 var1897)
(declare-const var3007-INVALID_NUM_ARGUMENTS_ERROR var720)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var2378 var3007) ; Statement: r1 := @this: com.google.javascript.jscomp.ReplaceCssNames 
(assert (not (= var2378 null-var3007)))
(declare-const var1344 var1897) ; Statement: r0 := @parameter0: com.google.javascript.rhino.Node 
(assert (not (= var1344 null-var1897)))
(assert true)
(define-const var932 Int (getChildCount/-1434875012 var1344)) ; Statement: i0 = virtualinvoke r0.<com.google.javascript.rhino.Node: int getChildCount()>() 
 ; Statement: lookupswitch(i0) {     case 2: goto $r3 = virtualinvoke r1.<com.google.javascript.jscomp.ReplaceCssNames: com.google.javascript.jscomp.JSError validateSingleArgGetCssNameCall(com.google.javascript.rhino.Node)>(r0);     case 3: goto $r2 = virtualinvoke r1.<com.google.javascript.jscomp.ReplaceCssNames: com.google.javascript.jscomp.JSError validateTwoArgGetCssNameCall(com.google.javascript.rhino.Node)>(r0);     default: goto $r5 = <com.google.javascript.jscomp.ReplaceCssNames: com.google.javascript.jscomp.DiagnosticType INVALID_NUM_ARGUMENTS_ERROR>; } 
(assert (and (not (= var932 3)) (and (not (= var932 2)) true))) ; Intersect: Negate: Cond: i0 == 3   and Intersect: Negate: Cond: i0 == 2   and Non Conditional  
(define-const var3905 var720 var3007-INVALID_NUM_ARGUMENTS_ERROR) ; Statement: $r5 = <com.google.javascript.jscomp.ReplaceCssNames: com.google.javascript.jscomp.DiagnosticType INVALID_NUM_ARGUMENTS_ERROR> 
(define-const var1733 (Array Int String) arr-String-init) ; Statement: $r4 = newarray (java.lang.String)[1] 
(define-const var1680 String (String_valueOf/1240665136 var932)) ; Statement: $r6 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(i0) 
(declare-const var1733!1 (Array Int String))
(assert (not (= var1733!1 null-__Array__Int__String__)))
(assert (= (select var1733!1 0) var1680)) ; Statement: $r4[0] = $r6 
(define-const var1133 var574 (var574_make/233788289 var1344 var3905 var1733!1)) ; Statement: $r7 = staticinvoke <com.google.javascript.jscomp.JSError: com.google.javascript.jscomp.JSError make(com.google.javascript.rhino.Node,com.google.javascript.jscomp.DiagnosticType,java.lang.String[])>(r0, $r5, $r4) 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {getChildCount/-1434875012=([com.google.javascript.rhino.Node], int), arr-String-init=([], java.lang.String[]), String_valueOf/1240665136=([int], java.lang.String), var574_make/233788289=([com.google.javascript.rhino.Node, com.google.javascript.jscomp.DiagnosticType, java.lang.String[]], com.google.javascript.jscomp.JSError)}
; {var3007=com.google.javascript.jscomp.ReplaceCssNames, var2378=r1, var1897=com.google.javascript.rhino.Node, var1344=r0, var932=i0, var720=com.google.javascript.jscomp.DiagnosticType, var3905=$r5, var1733=$r4, var1680=$r6, var574=com.google.javascript.jscomp.JSError, var1133=$r7}
; {com.google.javascript.jscomp.ReplaceCssNames=var3007, r1=var2378, com.google.javascript.rhino.Node=var1897, r0=var1344, i0=var932, com.google.javascript.jscomp.DiagnosticType=var720, $r5=var3905, $r4=var1733, $r6=var1680, com.google.javascript.jscomp.JSError=var574, $r7=var1133}
;seq <java.lang.String: java.lang.String valueOf(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.ReplaceCssNames;	r0 := @parameter0: com.google.javascript.rhino.Node;	i0 = virtualinvoke r0.<com.google.javascript.rhino.Node: int getChildCount()>();	lookupswitch(i0) {     case 2: goto $r3 = virtualinvoke r1.<com.google.javascript.jscomp.ReplaceCssNames: com.google.javascript.jscomp.JSError validateSingleArgGetCssNameCall(com.google.javascript.rhino.Node)>(r0);     case 3: goto $r2 = virtualinvoke r1.<com.google.javascript.jscomp.ReplaceCssNames: com.google.javascript.jscomp.JSError validateTwoArgGetCssNameCall(com.google.javascript.rhino.Node)>(r0);     default: goto $r5 = <com.google.javascript.jscomp.ReplaceCssNames: com.google.javascript.jscomp.DiagnosticType INVALID_NUM_ARGUMENTS_ERROR>; };	$r5 = <com.google.javascript.jscomp.ReplaceCssNames: com.google.javascript.jscomp.DiagnosticType INVALID_NUM_ARGUMENTS_ERROR>;	$r4 = newarray (java.lang.String)[1];	$r6 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(i0);	$r4[0] = $r6;	$r7 = staticinvoke <com.google.javascript.jscomp.JSError: com.google.javascript.jscomp.JSError make(com.google.javascript.rhino.Node,com.google.javascript.jscomp.DiagnosticType,java.lang.String[])>(r0, $r5, $r4);	return $r7
;block_num 2