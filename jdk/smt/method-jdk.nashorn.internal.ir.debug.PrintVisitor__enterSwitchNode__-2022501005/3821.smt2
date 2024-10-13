(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2233 0)
(declare-sort var2949 0)
(declare-sort var598 0)
(declare-sort var3258 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun sb/709861400 (var2233) String)
(declare-fun printTypes/709861400 (var2233) Bool)
(declare-fun toString/1371909859 (var2949 String Bool) void)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getCases/683012738 (var2949) var598)
(declare-fun var598_iterator/-912451715 (var598) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun getLocalVariableConversion/1112426851 (var2949) var3258)
(declare-fun EOLN/709861400 (var2233) String)
(declare-fun indent/-656645729 (var2233) void)
(declare-const null-var2233 var2233)
(declare-const null-var2949 var2949)
(declare-const null-var3258 var3258)
(declare-const var1365 var2233) ; Statement: r1 := @this: jdk.nashorn.internal.ir.debug.PrintVisitor 
(assert (not (= var1365 null-var2233)))
(declare-const var3818 var2949) ; Statement: r0 := @parameter0: jdk.nashorn.internal.ir.SwitchNode 
(assert (not (= var3818 null-var2949)))
(define-const var12 String (sb/709861400 var1365)) ; Statement: $r2 = r1.<jdk.nashorn.internal.ir.debug.PrintVisitor: java.lang.StringBuilder sb> 
(define-const var3531 Bool (printTypes/709861400 var1365)) ; Statement: $z0 = r1.<jdk.nashorn.internal.ir.debug.PrintVisitor: boolean printTypes> 
(assert true)
;(assert (toString/1371909859 var3818 var12 var3531)) ; Statement: virtualinvoke r0.<jdk.nashorn.internal.ir.SwitchNode: void toString(java.lang.StringBuilder,boolean)>($r2, $z0) 

(declare-const var3818!1 var2949)
(declare-const var12!1 String)
(declare-const var3531!1 Bool)
(define-const var1915 String (sb/709861400 var1365)) ; Statement: $r3 = r1.<jdk.nashorn.internal.ir.debug.PrintVisitor: java.lang.StringBuilder sb> 
(assert true)
;(assert (append/672562846 var1915 " {")) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" {") 
(declare-const var1915!1 String)
(assert (= var1915!1 (str.++ var1915 " {")))
(assert true)
(define-const var1237 var598 (getCases/683012738 var3818!1)) ; Statement: r4 = virtualinvoke r0.<jdk.nashorn.internal.ir.SwitchNode: java.util.List getCases()>() 
(define-const var3665 Iterator (var598_iterator/-912451715 var1237)) ; Statement: r5 = interfaceinvoke r4.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var701 Bool (Iterator_hasNext/-1669924200 var3665)) ; Statement: $z1 = interfaceinvoke r5.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z1 == 0 goto $r6 = virtualinvoke r0.<jdk.nashorn.internal.ir.SwitchNode: jdk.nashorn.internal.ir.LocalVariableConversion getLocalVariableConversion()>() 
(assert (= (ite var701 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var2775 var3258 (getLocalVariableConversion/1112426851 var3818!1)) ; Statement: $r6 = virtualinvoke r0.<jdk.nashorn.internal.ir.SwitchNode: jdk.nashorn.internal.ir.LocalVariableConversion getLocalVariableConversion()>() 
 ; Statement: if $r6 == null goto $r8 = r1.<jdk.nashorn.internal.ir.debug.PrintVisitor: java.lang.StringBuilder sb> 
(assert (= var2775 null-var3258)) ; Cond: $r6 == null 
(define-const var1050 String (sb/709861400 var1365)) ; Statement: $r8 = r1.<jdk.nashorn.internal.ir.debug.PrintVisitor: java.lang.StringBuilder sb> 
(define-const var1491 String (EOLN/709861400 var1365)) ; Statement: $r7 = r1.<jdk.nashorn.internal.ir.debug.PrintVisitor: java.lang.String EOLN> 
(assert true)
;(assert (append/672562846 var1050 var1491)) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var1050!1 String)
(assert (= var1050!1 (str.++ var1050 var1491)))
(assert true)
;(assert (indent/-656645729 var1365)) ; Statement: specialinvoke r1.<jdk.nashorn.internal.ir.debug.PrintVisitor: void indent()>() 

(declare-const var1365!1 var2233)
(define-const var1391 String (sb/709861400 var1365!1)) ; Statement: $r9 = r1.<jdk.nashorn.internal.ir.debug.PrintVisitor: java.lang.StringBuilder sb> 
(assert true)
;(assert (append/672562846 var1391 "}")) ; Statement: virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}") 
(declare-const var1391!1 String)
(assert (= var1391!1 (str.++ var1391 "}")))
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {sb/709861400=([jdk.nashorn.internal.ir.debug.PrintVisitor], java.lang.StringBuilder), printTypes/709861400=([jdk.nashorn.internal.ir.debug.PrintVisitor], boolean), toString/1371909859=([jdk.nashorn.internal.ir.SwitchNode, java.lang.StringBuilder, boolean], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getCases/683012738=([jdk.nashorn.internal.ir.SwitchNode], java.util.List), var598_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), getLocalVariableConversion/1112426851=([jdk.nashorn.internal.ir.SwitchNode], jdk.nashorn.internal.ir.LocalVariableConversion), EOLN/709861400=([jdk.nashorn.internal.ir.debug.PrintVisitor], java.lang.String), indent/-656645729=([jdk.nashorn.internal.ir.debug.PrintVisitor], void)}
; {var2233=jdk.nashorn.internal.ir.debug.PrintVisitor, var1365=r1, var2949=jdk.nashorn.internal.ir.SwitchNode, var3818=r0, var12=$r2, var3531=$z0, var1915=$r3, var598=java.util.List, var1237=r4, var3665=r5, var701=$z1, var3258=jdk.nashorn.internal.ir.LocalVariableConversion, var2775=$r6, var1050=$r8, var1491=$r7, var1391=$r9}
; {jdk.nashorn.internal.ir.debug.PrintVisitor=var2233, r1=var1365, jdk.nashorn.internal.ir.SwitchNode=var2949, r0=var3818, $r2=var12, $z0=var3531, $r3=var1915, java.util.List=var598, r4=var1237, r5=var3665, $z1=var701, jdk.nashorn.internal.ir.LocalVariableConversion=var3258, $r6=var2775, $r8=var1050, $r7=var1491, $r9=var1391}
;seq <jdk.nashorn.internal.ir.SwitchNode: void toString(java.lang.StringBuilder,boolean)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3}
;stmts r1 := @this: jdk.nashorn.internal.ir.debug.PrintVisitor;	r0 := @parameter0: jdk.nashorn.internal.ir.SwitchNode;	$r2 = r1.<jdk.nashorn.internal.ir.debug.PrintVisitor: java.lang.StringBuilder sb>;	$z0 = r1.<jdk.nashorn.internal.ir.debug.PrintVisitor: boolean printTypes>;	virtualinvoke r0.<jdk.nashorn.internal.ir.SwitchNode: void toString(java.lang.StringBuilder,boolean)>($r2, $z0);	$r3 = r1.<jdk.nashorn.internal.ir.debug.PrintVisitor: java.lang.StringBuilder sb>;	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" {");	r4 = virtualinvoke r0.<jdk.nashorn.internal.ir.SwitchNode: java.util.List getCases()>();	r5 = interfaceinvoke r4.<java.util.List: java.util.Iterator iterator()>();	$z1 = interfaceinvoke r5.<java.util.Iterator: boolean hasNext()>();	if $z1 == 0 goto $r6 = virtualinvoke r0.<jdk.nashorn.internal.ir.SwitchNode: jdk.nashorn.internal.ir.LocalVariableConversion getLocalVariableConversion()>();	$r6 = virtualinvoke r0.<jdk.nashorn.internal.ir.SwitchNode: jdk.nashorn.internal.ir.LocalVariableConversion getLocalVariableConversion()>();	if $r6 == null goto $r8 = r1.<jdk.nashorn.internal.ir.debug.PrintVisitor: java.lang.StringBuilder sb>;	$r8 = r1.<jdk.nashorn.internal.ir.debug.PrintVisitor: java.lang.StringBuilder sb>;	$r7 = r1.<jdk.nashorn.internal.ir.debug.PrintVisitor: java.lang.String EOLN>;	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	specialinvoke r1.<jdk.nashorn.internal.ir.debug.PrintVisitor: void indent()>();	$r9 = r1.<jdk.nashorn.internal.ir.debug.PrintVisitor: java.lang.StringBuilder sb>;	virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}");	return 0
;block_num 4