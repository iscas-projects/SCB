(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2153 0)
(declare-sort var72 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getNodeTypeSymbol/-1468273729 (var2153) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun bodyParameters/-1339219867 (var2153) var72)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2153 var2153)
(declare-const null-Bool Bool)
(declare-const null-var72 var72)
(declare-const var3349 var2153) ; Statement: r1 := @this: freemarker.core.BodyInstruction 
(assert (not (= var3349 null-var2153)))
(declare-const var3045 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var3045 null-Bool)))
(define-const var1041 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1041)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1041!1 String)
(assert (= var1041!1 ""))
 ; Statement: if z0 == 0 goto $r2 = virtualinvoke r1.<freemarker.core.BodyInstruction: java.lang.String getNodeTypeSymbol()>() 
(assert (= (ite var3045 1 0) 0)) ; Cond: z0 == 0 
(assert true)
(define-const var2893 String (getNodeTypeSymbol/-1468273729 var3349)) ; Statement: $r2 = virtualinvoke r1.<freemarker.core.BodyInstruction: java.lang.String getNodeTypeSymbol()>() 
(assert true)
;(assert (append/672562846 var1041!1 var2893)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1041!2 String)
(assert (= var1041!2 (str.++ var1041!1 var2893)))
(define-const var3878 var72 (bodyParameters/-1339219867 var3349)) ; Statement: $r3 = r1.<freemarker.core.BodyInstruction: java.util.List bodyParameters> 
 ; Statement: if $r3 == null goto (branch) 
(assert (= var3878 null-var72)) ; Cond: $r3 == null 
 ; Statement: if z0 == 0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var3045 1 0) 0)) ; Cond: z0 == 0 
(assert true)
(define-const var1341 String (toString/-2075883882 var1041!2)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getNodeTypeSymbol/-1468273729=([freemarker.core.BodyInstruction], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), bodyParameters/-1339219867=([freemarker.core.BodyInstruction], java.util.List), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2153=freemarker.core.BodyInstruction, var3349=r1, var3045=z0, var1041=$r0, var2893=$r2, var72=java.util.List, var3878=$r3, var1341=$r4}
; {freemarker.core.BodyInstruction=var2153, r1=var3349, z0=var3045, $r0=var1041, $r2=var2893, java.util.List=var72, $r3=var3878, $r4=var1341}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: freemarker.core.BodyInstruction;	z0 := @parameter0: boolean;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	if z0 == 0 goto $r2 = virtualinvoke r1.<freemarker.core.BodyInstruction: java.lang.String getNodeTypeSymbol()>();	$r2 = virtualinvoke r1.<freemarker.core.BodyInstruction: java.lang.String getNodeTypeSymbol()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r3 = r1.<freemarker.core.BodyInstruction: java.util.List bodyParameters>;	if $r3 == null goto (branch);	if z0 == 0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 4