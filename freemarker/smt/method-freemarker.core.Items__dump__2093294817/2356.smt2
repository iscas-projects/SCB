(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2227 0)
(declare-sort var655 0)
(declare-sort var3199 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getNodeTypeSymbol/-1811678517 (var2227) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun loopVarName/-1768377895 (var2227) String)
(declare-fun var655_toFTLTopLevelIdentifierReference/76805794 (String) String)
(declare-fun loopVar2Name/-1768377895 (var2227) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2227 var2227)
(declare-const null-Bool Bool)
(declare-const null-String String)
(declare-const var457 var2227) ; Statement: r1 := @this: freemarker.core.Items 
(assert (not (= var457 null-var2227)))
(declare-const var2063 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var2063 null-Bool)))
(define-const var3586 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3586)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3586!1 String)
(assert (= var3586!1 ""))
 ; Statement: if z0 == 0 goto $r2 = virtualinvoke r1.<freemarker.core.Items: java.lang.String getNodeTypeSymbol()>() 
(assert (= (ite var2063 1 0) 0)) ; Cond: z0 == 0 
(assert true)
(define-const var502 String (getNodeTypeSymbol/-1811678517 var457)) ; Statement: $r2 = virtualinvoke r1.<freemarker.core.Items: java.lang.String getNodeTypeSymbol()>() 
(assert true)
;(assert (append/672562846 var3586!1 var502)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3586!2 String)
(assert (= var3586!2 (str.++ var3586!1 var502)))
(assert true)
;(assert (append/672562846 var3586!2 " as ")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" as ") 
(declare-const var3586!3 String)
(assert (= var3586!3 (str.++ var3586!2 " as ")))
(define-const var3401 String (loopVarName/-1768377895 var457)) ; Statement: $r3 = r1.<freemarker.core.Items: java.lang.String loopVarName> 
(define-const var2599 String (var655_toFTLTopLevelIdentifierReference/76805794 var3401)) ; Statement: $r4 = staticinvoke <freemarker.core._CoreStringUtils: java.lang.String toFTLTopLevelIdentifierReference(java.lang.String)>($r3) 
(assert true)
;(assert (append/672562846 var3586!3 var2599)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var3586!4 String)
(assert (= var3586!4 (str.++ var3586!3 var2599)))
(define-const var1871 String (loopVar2Name/-1768377895 var457)) ; Statement: $r5 = r1.<freemarker.core.Items: java.lang.String loopVar2Name> 
 ; Statement: if $r5 == null goto (branch) 
(assert (= var1871 null-String)) ; Cond: $r5 == null 
 ; Statement: if z0 == 0 goto $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var2063 1 0) 0)) ; Cond: z0 == 0 
(assert true)
(define-const var1408 String (toString/-2075883882 var3586!4)) ; Statement: $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getNodeTypeSymbol/-1811678517=([freemarker.core.Items], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), loopVarName/-1768377895=([freemarker.core.Items], java.lang.String), var655_toFTLTopLevelIdentifierReference/76805794=([java.lang.String], java.lang.String), loopVar2Name/-1768377895=([freemarker.core.Items], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2227=freemarker.core.Items, var457=r1, var2063=z0, var3586=$r0, var502=$r2, var3401=$r3, var655=freemarker.core._CoreStringUtils, var2599=$r4, var1871=$r5, var3199=null_type, var1408=$r6}
; {freemarker.core.Items=var2227, r1=var457, z0=var2063, $r0=var3586, $r2=var502, $r3=var3401, freemarker.core._CoreStringUtils=var655, $r4=var2599, $r5=var1871, null_type=var3199, $r6=var1408}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: freemarker.core.Items;	z0 := @parameter0: boolean;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	if z0 == 0 goto $r2 = virtualinvoke r1.<freemarker.core.Items: java.lang.String getNodeTypeSymbol()>();	$r2 = virtualinvoke r1.<freemarker.core.Items: java.lang.String getNodeTypeSymbol()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" as ");	$r3 = r1.<freemarker.core.Items: java.lang.String loopVarName>;	$r4 = staticinvoke <freemarker.core._CoreStringUtils: java.lang.String toFTLTopLevelIdentifierReference(java.lang.String)>($r3);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r5 = r1.<freemarker.core.Items: java.lang.String loopVar2Name>;	if $r5 == null goto (branch);	if z0 == 0 goto $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 4