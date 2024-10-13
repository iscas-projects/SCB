(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1967 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun i/1752648610 (var1967) Int)
(declare-fun length/1752648610 (var1967) Int)
(declare-const null-var1967 var1967)
(declare-const var1075 var1967) ; Statement: r0 := @this: com.google.javascript.jscomp.base.format.SimpleFormat$FormatSpecifierParser 
(assert (not (= var1075 null-var1967)))
(define-const var271 Int (i/1752648610 var1075)) ; Statement: $i1 = r0.<com.google.javascript.jscomp.base.format.SimpleFormat$FormatSpecifierParser: int i> 
(define-const var873 Int (length/1752648610 var1075)) ; Statement: $i0 = r0.<com.google.javascript.jscomp.base.format.SimpleFormat$FormatSpecifierParser: int length> 
 ; Statement: if $i1 >= $i0 goto $s3 = -1 
(assert (>= var271 var873)) ; Cond: $i1 >= $i0 
(define-const var3468 Int (- 1)) ; Statement: $s3 = -1 
(assert true) ; Non Conditional
 ; Statement: return $s3 
(check-sat)
(get-model)
(get-unsat-core)
; {i/1752648610=([com.google.javascript.jscomp.base.format.SimpleFormat$FormatSpecifierParser], int), length/1752648610=([com.google.javascript.jscomp.base.format.SimpleFormat$FormatSpecifierParser], int)}
; {var1967=com.google.javascript.jscomp.base.format.SimpleFormat$FormatSpecifierParser, var1075=r0, var271=$i1, var873=$i0, var3468=$s3}
; {com.google.javascript.jscomp.base.format.SimpleFormat$FormatSpecifierParser=var1967, r0=var1075, $i1=var271, $i0=var873, $s3=var3468}
;seq 
;cnt {}
;stmts r0 := @this: com.google.javascript.jscomp.base.format.SimpleFormat$FormatSpecifierParser;	$i1 = r0.<com.google.javascript.jscomp.base.format.SimpleFormat$FormatSpecifierParser: int i>;	$i0 = r0.<com.google.javascript.jscomp.base.format.SimpleFormat$FormatSpecifierParser: int length>;	if $i1 >= $i0 goto $s3 = -1;	$s3 = -1;	return $s3
;block_num 3