(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3736 0)
(declare-sort var3850 0)
(declare-sort var3803 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun useOriginalName/1552939610 (var3736) Bool)
(declare-fun getOriginalName/1904446063 (var3850) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var3736 var3736)
(declare-const null-String String)
(declare-const null-var3850 var3850)
(declare-const var346 var3736) ; Statement: r0 := @this: com.google.javascript.jscomp.JSDocInfoPrinter 
(assert (not (= var346 null-var3736)))
(declare-const var313 String) ; Statement: r4 := @parameter0: java.lang.StringBuilder 
(assert (not (= var313 null-String)))
(declare-const var1305 var3850) ; Statement: r1 := @parameter1: com.google.javascript.rhino.Node 
(assert (not (= var1305 null-var3850)))
(define-const var1847 Bool (useOriginalName/1552939610 var346)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.JSDocInfoPrinter: boolean useOriginalName> 
 ; Statement: if $z0 == 0 goto $r2 = <com.google.javascript.jscomp.JSDocInfoPrinter$1: int[] $SwitchMap$com$google$javascript$rhino$Token> 
(assert (not (= (ite var1847 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var1745 String (getOriginalName/1904446063 var1305)) ; Statement: $r22 = virtualinvoke r1.<com.google.javascript.rhino.Node: java.lang.String getOriginalName()>() 
 ; Statement: if $r22 == null goto $r2 = <com.google.javascript.jscomp.JSDocInfoPrinter$1: int[] $SwitchMap$com$google$javascript$rhino$Token> 
(assert (not (= var1745 null-String))) ; Negate: Cond: $r22 == null  
(assert true)
(define-const var50 String (getOriginalName/1904446063 var1305)) ; Statement: $r23 = virtualinvoke r1.<com.google.javascript.rhino.Node: java.lang.String getOriginalName()>() 
(assert true)
;(assert (append/672562846 var313 var50)) ; Statement: virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23) 
(declare-const var313!1 String)
(assert (= var313!1 (str.++ var313 var50)))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {useOriginalName/1552939610=([com.google.javascript.jscomp.JSDocInfoPrinter], boolean), getOriginalName/1904446063=([com.google.javascript.rhino.Node], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var3736=com.google.javascript.jscomp.JSDocInfoPrinter, var346=r0, var313=r4, var3850=com.google.javascript.rhino.Node, var1305=r1, var1847=$z0, var1745=$r22, var3803=null_type, var50=$r23}
; {com.google.javascript.jscomp.JSDocInfoPrinter=var3736, r0=var346, r4=var313, com.google.javascript.rhino.Node=var3850, r1=var1305, $z0=var1847, $r22=var1745, null_type=var3803, $r23=var50}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.JSDocInfoPrinter;	r4 := @parameter0: java.lang.StringBuilder;	r1 := @parameter1: com.google.javascript.rhino.Node;	$z0 = r0.<com.google.javascript.jscomp.JSDocInfoPrinter: boolean useOriginalName>;	if $z0 == 0 goto $r2 = <com.google.javascript.jscomp.JSDocInfoPrinter$1: int[] $SwitchMap$com$google$javascript$rhino$Token>;	$r22 = virtualinvoke r1.<com.google.javascript.rhino.Node: java.lang.String getOriginalName()>();	if $r22 == null goto $r2 = <com.google.javascript.jscomp.JSDocInfoPrinter$1: int[] $SwitchMap$com$google$javascript$rhino$Token>;	$r23 = virtualinvoke r1.<com.google.javascript.rhino.Node: java.lang.String getOriginalName()>();	virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23);	return
;block_num 3