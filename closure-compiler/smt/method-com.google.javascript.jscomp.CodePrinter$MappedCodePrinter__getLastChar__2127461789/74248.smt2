(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2896 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun code/-862103770 (var2896) String)
(declare-fun length/-171891354 (String) Int)
(declare-fun charAt/1621160911 (String Int) Int)
(declare-const null-var2896 var2896)
(declare-const var177 var2896) ; Statement: r0 := @this: com.google.javascript.jscomp.CodePrinter$MappedCodePrinter 
(assert (not (= var177 null-var2896)))
(define-const var1702 String (code/-862103770 var177)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.lang.StringBuilder code> 
(assert true)
(define-const var361 Int (length/-171891354 var1702)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.StringBuilder: int length()>() 
 ; Statement: if $i0 <= 0 goto $c3 = 0 
(assert (not (<= var361 0))) ; Negate: Cond: $i0 <= 0  
(define-const var1027 String (code/-862103770 var177)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.lang.StringBuilder code> 
(define-const var2950 String (code/-862103770 var177)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.lang.StringBuilder code> 
(assert true)
(define-const var3466 Int (length/-171891354 var2950)) ; Statement: $i1 = virtualinvoke $r2.<java.lang.StringBuilder: int length()>() 
(define-const var878 Int (- var3466 1)) ; Statement: $i2 = $i1 - 1 
(assert true)
(define-const var569 Int (charAt/1621160911 var1027 var878)) ; Statement: $c3 = virtualinvoke $r3.<java.lang.StringBuilder: char charAt(int)>($i2) 
 ; Statement: goto [?= return $c3] 
(assert true) ; Non Conditional
 ; Statement: return $c3 
(check-sat)
(get-model)
(get-unsat-core)
; {code/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.lang.StringBuilder), length/-171891354=([java.lang.StringBuilder], int), charAt/1621160911=([java.lang.StringBuilder, int], char)}
; {var2896=com.google.javascript.jscomp.CodePrinter$MappedCodePrinter, var177=r0, var1702=$r1, var361=$i0, var1027=$r3, var2950=$r2, var3466=$i1, var878=$i2, var569=$c3}
; {com.google.javascript.jscomp.CodePrinter$MappedCodePrinter=var2896, r0=var177, $r1=var1702, $i0=var361, $r3=var1027, $r2=var2950, $i1=var3466, $i2=var878, $c3=var569}
;seq <java.lang.StringBuilder: int length()>;	<java.lang.StringBuilder: int length()>;	<java.lang.StringBuilder: char charAt(int)>
;cnt {"<java.lang.StringBuilder: int length()>": 2,"<java.lang.StringBuilder: char charAt(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.CodePrinter$MappedCodePrinter;	$r1 = r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.lang.StringBuilder code>;	$i0 = virtualinvoke $r1.<java.lang.StringBuilder: int length()>();	if $i0 <= 0 goto $c3 = 0;	$r3 = r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.lang.StringBuilder code>;	$r2 = r0.<com.google.javascript.jscomp.CodePrinter$MappedCodePrinter: java.lang.StringBuilder code>;	$i1 = virtualinvoke $r2.<java.lang.StringBuilder: int length()>();	$i2 = $i1 - 1;	$c3 = virtualinvoke $r3.<java.lang.StringBuilder: char charAt(int)>($i2);	goto [?= return $c3];	return $c3
;block_num 3