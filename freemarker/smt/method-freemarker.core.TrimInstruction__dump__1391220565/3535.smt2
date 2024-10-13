(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3718 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getNodeTypeSymbol/-523205057 (var3718) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3718 var3718)
(declare-const null-Bool Bool)
(declare-const var1966 var3718) ; Statement: r1 := @this: freemarker.core.TrimInstruction 
(assert (not (= var1966 null-var3718)))
(declare-const var991 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var991 null-Bool)))
(define-const var143 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var143)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var143!1 String)
(assert (= var143!1 ""))
 ; Statement: if z0 == 0 goto $r2 = virtualinvoke r1.<freemarker.core.TrimInstruction: java.lang.String getNodeTypeSymbol()>() 
(assert (= (ite var991 1 0) 0)) ; Cond: z0 == 0 
(assert true)
(define-const var3108 String (getNodeTypeSymbol/-523205057 var1966)) ; Statement: $r2 = virtualinvoke r1.<freemarker.core.TrimInstruction: java.lang.String getNodeTypeSymbol()>() 
(assert true)
;(assert (append/672562846 var143!1 var3108)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var143!2 String)
(assert (= var143!2 (str.++ var143!1 var3108)))
 ; Statement: if z0 == 0 goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var991 1 0) 0)) ; Cond: z0 == 0 
(assert true)
(define-const var409 String (toString/-2075883882 var143!2)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getNodeTypeSymbol/-523205057=([freemarker.core.TrimInstruction], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3718=freemarker.core.TrimInstruction, var1966=r1, var991=z0, var143=$r0, var3108=$r2, var409=$r3}
; {freemarker.core.TrimInstruction=var3718, r1=var1966, z0=var991, $r0=var143, $r2=var3108, $r3=var409}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: freemarker.core.TrimInstruction;	z0 := @parameter0: boolean;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	if z0 == 0 goto $r2 = virtualinvoke r1.<freemarker.core.TrimInstruction: java.lang.String getNodeTypeSymbol()>();	$r2 = virtualinvoke r1.<freemarker.core.TrimInstruction: java.lang.String getNodeTypeSymbol()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	if z0 == 0 goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 3