(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3893 0)
(declare-sort var1518 0)
(declare-sort var2641 0)
(declare-sort var1295 0)
(declare-sort var1321 0)
(declare-sort var2146 0)
(declare-sort var3304 0)
(declare-sort var3014 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getParent/-1802087535 (var1518) var1518)
(declare-fun isExprResult/-780013230 (var1518) Bool)
(declare-fun var1321_checkState/1431124798 (Bool) void)
(declare-fun var2146-init () var2146)
(declare-fun <init>/-1420080595 (var2146 var3893) void)
(declare-fun getFirstChild/2090828207 (var1518) var1518)
(declare-fun getNext/-860917720 (var1518) var1518)
(declare-fun buildPolyfill/-1917764348 (var2146 var1518) var3304)
(declare-fun lastIndexOf/-618837785 (String String) Int)
(declare-fun var3014-init () var3014)
(declare-fun <init>/-387155741 (var3014 var3893 var3304 String) void)
(declare-const null-var3893 var3893)
(declare-const null-var1518 var1518)
(declare-const null-var2641 var2641)
(declare-const null-String String)
(declare-const var1496 var3893) ; Statement: r3 := @this: com.google.javascript.jscomp.RemoveUnusedCode 
(assert (not (= var1496 null-var3893)))
(declare-const var2337 var1518) ; Statement: r0 := @parameter0: com.google.javascript.rhino.Node 
(assert (not (= var2337 null-var1518)))
(declare-const var2541 var2641) ; Statement: r13 := @parameter1: com.google.javascript.jscomp.Scope 
(assert (not (= var2541 null-var2641)))
(declare-const var3423 String) ; Statement: r6 := @parameter2: java.lang.String 
(assert (not (= var3423 null-String)))
(assert true)
(define-const var1015 var1518 (getParent/-1802087535 var2337)) ; Statement: $r1 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getParent()>() 
(assert true)
(define-const var2804 Bool (isExprResult/-780013230 var1015)) ; Statement: $z0 = virtualinvoke $r1.<com.google.javascript.rhino.Node: boolean isExprResult()>() 
;(assert (var1321_checkState/1431124798 var2804)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z0) 

(declare-const var2804!1 Bool)
(define-const var302 var2146 var2146-init) ; Statement: $r2 = new com.google.javascript.jscomp.RemoveUnusedCode$RemovableBuilder 
(assert true)
;(assert (<init>/-1420080595 var302 var1496)) ; Statement: specialinvoke $r2.<com.google.javascript.jscomp.RemoveUnusedCode$RemovableBuilder: void <init>(com.google.javascript.jscomp.RemoveUnusedCode)>(r3) 

(declare-const var302!1 var2146)
(declare-const var1496!1 var3893)
(assert true)
(define-const var226 var1518 (getFirstChild/2090828207 var2337)) ; Statement: $r4 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getFirstChild()>() 
(assert true)
(define-const var1822 var1518 (getNext/-860917720 var226)) ; Statement: r14 = virtualinvoke $r4.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getNext()>() 
(assert true) ; Non Conditional
 ; Statement: if r14 == null goto $r5 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getParent()>() 
(assert (= var1822 null-var1518)) ; Cond: r14 == null 
(assert true)
(define-const var1350 var1518 (getParent/-1802087535 var2337)) ; Statement: $r5 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getParent()>() 
(assert true)
(define-const var3436 var3304 (buildPolyfill/-1917764348 var302!1 var1350)) ; Statement: r15 = virtualinvoke $r2.<com.google.javascript.jscomp.RemoveUnusedCode$RemovableBuilder: com.google.javascript.jscomp.RemoveUnusedCode$Polyfill buildPolyfill(com.google.javascript.rhino.Node)>($r5) 
(assert true)
(define-const var1347 Int (lastIndexOf/-618837785 var3423 ".")) ; Statement: i0 = virtualinvoke r6.<java.lang.String: int lastIndexOf(java.lang.String)>(".") 
 ; Statement: if i0 >= 0 goto r16 = virtualinvoke r6.<java.lang.String: java.lang.String substring(int,int)>(0, i0) 
(assert (not (>= var1347 0))) ; Negate: Cond: i0 >= 0  
(define-const var1827 var3014 var3014-init) ; Statement: $r11 = new com.google.javascript.jscomp.RemoveUnusedCode$GlobalPolyfillInfo 
(assert true)
;(assert (<init>/-387155741 var1827 var1496!1 var3436 var3423)) ; Statement: specialinvoke $r11.<com.google.javascript.jscomp.RemoveUnusedCode$GlobalPolyfillInfo: void <init>(com.google.javascript.jscomp.RemoveUnusedCode,com.google.javascript.jscomp.RemoveUnusedCode$Polyfill,java.lang.String)>(r3, r15, r6) 

(declare-const var1827!1 var3014)
(declare-const var1496!2 var3893)
(declare-const var3436!1 var3304)
(declare-const var3423!1 String)
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {getParent/-1802087535=([com.google.javascript.rhino.Node], com.google.javascript.rhino.Node), isExprResult/-780013230=([com.google.javascript.rhino.Node], boolean), var1321_checkState/1431124798=([boolean], void), var2146-init=([], com.google.javascript.jscomp.RemoveUnusedCode$RemovableBuilder), <init>/-1420080595=([com.google.javascript.jscomp.RemoveUnusedCode$RemovableBuilder, com.google.javascript.jscomp.RemoveUnusedCode], void), getFirstChild/2090828207=([com.google.javascript.rhino.Node], com.google.javascript.rhino.Node), getNext/-860917720=([com.google.javascript.rhino.Node], com.google.javascript.rhino.Node), buildPolyfill/-1917764348=([com.google.javascript.jscomp.RemoveUnusedCode$RemovableBuilder, com.google.javascript.rhino.Node], com.google.javascript.jscomp.RemoveUnusedCode$Polyfill), lastIndexOf/-618837785=([java.lang.String, java.lang.String], int), var3014-init=([], com.google.javascript.jscomp.RemoveUnusedCode$GlobalPolyfillInfo), <init>/-387155741=([com.google.javascript.jscomp.RemoveUnusedCode$GlobalPolyfillInfo, com.google.javascript.jscomp.RemoveUnusedCode, com.google.javascript.jscomp.RemoveUnusedCode$Polyfill, java.lang.String], void)}
; {var3893=com.google.javascript.jscomp.RemoveUnusedCode, var1496=r3, var1518=com.google.javascript.rhino.Node, var2337=r0, var2641=com.google.javascript.jscomp.Scope, var2541=r13, var3423=r6, var1295=null_type, var1015=$r1, var2804=$z0, var1321=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var2146=com.google.javascript.jscomp.RemoveUnusedCode$RemovableBuilder, var302=$r2, var226=$r4, var1822=r14, var1350=$r5, var3304=com.google.javascript.jscomp.RemoveUnusedCode$Polyfill, var3436=r15, var1347=i0, var3014=com.google.javascript.jscomp.RemoveUnusedCode$GlobalPolyfillInfo, var1827=$r11}
; {com.google.javascript.jscomp.RemoveUnusedCode=var3893, r3=var1496, com.google.javascript.rhino.Node=var1518, r0=var2337, com.google.javascript.jscomp.Scope=var2641, r13=var2541, r6=var3423, null_type=var1295, $r1=var1015, $z0=var2804, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var1321, com.google.javascript.jscomp.RemoveUnusedCode$RemovableBuilder=var2146, $r2=var302, $r4=var226, r14=var1822, $r5=var1350, com.google.javascript.jscomp.RemoveUnusedCode$Polyfill=var3304, r15=var3436, i0=var1347, com.google.javascript.jscomp.RemoveUnusedCode$GlobalPolyfillInfo=var3014, $r11=var1827}
;seq <java.lang.String: int lastIndexOf(java.lang.String)>
;cnt {"<java.lang.String: int lastIndexOf(java.lang.String)>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.RemoveUnusedCode;	r0 := @parameter0: com.google.javascript.rhino.Node;	r13 := @parameter1: com.google.javascript.jscomp.Scope;	r6 := @parameter2: java.lang.String;	$r1 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getParent()>();	$z0 = virtualinvoke $r1.<com.google.javascript.rhino.Node: boolean isExprResult()>();	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z0);	$r2 = new com.google.javascript.jscomp.RemoveUnusedCode$RemovableBuilder;	specialinvoke $r2.<com.google.javascript.jscomp.RemoveUnusedCode$RemovableBuilder: void <init>(com.google.javascript.jscomp.RemoveUnusedCode)>(r3);	$r4 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getFirstChild()>();	r14 = virtualinvoke $r4.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getNext()>();	if r14 == null goto $r5 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getParent()>();	$r5 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getParent()>();	r15 = virtualinvoke $r2.<com.google.javascript.jscomp.RemoveUnusedCode$RemovableBuilder: com.google.javascript.jscomp.RemoveUnusedCode$Polyfill buildPolyfill(com.google.javascript.rhino.Node)>($r5);	i0 = virtualinvoke r6.<java.lang.String: int lastIndexOf(java.lang.String)>(".");	if i0 >= 0 goto r16 = virtualinvoke r6.<java.lang.String: java.lang.String substring(int,int)>(0, i0);	$r11 = new com.google.javascript.jscomp.RemoveUnusedCode$GlobalPolyfillInfo;	specialinvoke $r11.<com.google.javascript.jscomp.RemoveUnusedCode$GlobalPolyfillInfo: void <init>(com.google.javascript.jscomp.RemoveUnusedCode,com.google.javascript.jscomp.RemoveUnusedCode$Polyfill,java.lang.String)>(r3, r15, r6);	return $r11
;block_num 4