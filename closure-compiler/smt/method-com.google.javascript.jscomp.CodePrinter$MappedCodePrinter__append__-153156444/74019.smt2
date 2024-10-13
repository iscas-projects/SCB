(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1956 0)
(declare-sort var1195 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun code/-862103770 (var1956) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun lineLength/-862103770 (var1956) Int)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var1956 var1956)
(declare-const null-String String)
(declare-const var1989 var1956) ; Statement: r0 := @this: com.google.javascript.jscomp.CodePrinter$MappedCodePrinter 
(assert (not (= var1989 null-var1956)))
(declare-const var431 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var431 null-String)))
(define-const var1475 String (code/-862103770 var1989)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.lang.StringBuilder code> 
(assert true)
;(assert (append/672562846 var1475 var431)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1475!1 String)
(assert (= var1475!1 (str.++ var1475 var431)))
(define-const var779 Int (lineLength/-862103770 var1989)) ; Statement: $i0 = r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLength> 
(assert true)
(define-const var1844 Int (length/-134980193 var431)) ; Statement: $i1 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var901 Int (+ var779 var1844)) ; Statement: $i2 = $i0 + $i1 
(declare-const var1989!1 var1956)
(assert (not (= var1989!1 null-var1956)))
(assert (= (lineLength/-862103770 var1989!1) var901)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLength> = $i2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {code/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), lineLength/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), length/-134980193=([java.lang.String], int)}
; {var1956=com.google.javascript.jscomp.CodePrinter$MappedCodePrinter, var1989=r0, var431=r1, var1195=null_type, var1475=$r2, var779=$i0, var1844=$i1, var901=$i2}
; {com.google.javascript.jscomp.CodePrinter$MappedCodePrinter=var1956, r0=var1989, r1=var431, null_type=var1195, $r2=var1475, $i0=var779, $i1=var1844, $i2=var901}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: int length()>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.String: int length()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.CodePrinter$MappedCodePrinter;	r1 := @parameter0: java.lang.String;	$r2 = r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.lang.StringBuilder code>;	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$i0 = r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLength>;	$i1 = virtualinvoke r1.<java.lang.String: int length()>();	$i2 = $i0 + $i1;	r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: int lineLength> = $i2;	return
;block_num 1