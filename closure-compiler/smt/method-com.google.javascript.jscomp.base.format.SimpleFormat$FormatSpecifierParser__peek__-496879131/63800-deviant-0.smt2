(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2820 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun i/1752648610 (var2820) Int)
(declare-fun length/1752648610 (var2820) Int)
(declare-fun format/1752648610 (var2820) String)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-const null-var2820 var2820)
(declare-const var3103 var2820) ; Statement: r0 := @this: com.google.javascript.jscomp.base.format.SimpleFormat$FormatSpecifierParser 
(assert (not (= var3103 null-var2820)))
(define-const var3134 Int (i/1752648610 var3103)) ; Statement: $i1 = r0.<com.google.javascript.jscomp.base.format.SimpleFormat$FormatSpecifierParser: int i> 
(define-const var510 Int (length/1752648610 var3103)) ; Statement: $i0 = r0.<com.google.javascript.jscomp.base.format.SimpleFormat$FormatSpecifierParser: int length> 
 ; Statement: if $i1 >= $i0 goto $s3 = -1 
(assert (not (>= var3134 var510))) ; Negate: Cond: $i1 >= $i0  
(define-const var1760 String (format/1752648610 var3103)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.base.format.SimpleFormat$FormatSpecifierParser: java.lang.String format> 
(define-const var1527 Int (i/1752648610 var3103)) ; Statement: $i2 = r0.<com.google.javascript.jscomp.base.format.SimpleFormat$FormatSpecifierParser: int i> 
(assert (not (and true (and (> (str.len var1760) var1527) (<= 0 var1527)))))
(check-sat)
(get-model)
(get-unsat-core)
; {i/1752648610=([com.google.javascript.jscomp.base.format.SimpleFormat$FormatSpecifierParser], int), length/1752648610=([com.google.javascript.jscomp.base.format.SimpleFormat$FormatSpecifierParser], int), format/1752648610=([com.google.javascript.jscomp.base.format.SimpleFormat$FormatSpecifierParser], java.lang.String), charAt/698050440=([java.lang.String, int], char)}
; {var2820=com.google.javascript.jscomp.base.format.SimpleFormat$FormatSpecifierParser, var3103=r0, var3134=$i1, var510=$i0, var1760=$r1, var1527=$i2, var2187=$s3}
; {com.google.javascript.jscomp.base.format.SimpleFormat$FormatSpecifierParser=var2820, r0=var3103, $i1=var3134, $i0=var510, $r1=var1760, $i2=var1527, $s3=var2187}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.base.format.SimpleFormat$FormatSpecifierParser;	$i1 = r0.<com.google.javascript.jscomp.base.format.SimpleFormat$FormatSpecifierParser: int i>;	$i0 = r0.<com.google.javascript.jscomp.base.format.SimpleFormat$FormatSpecifierParser: int length>;	if $i1 >= $i0 goto $s3 = -1;	$r1 = r0.<com.google.javascript.jscomp.base.format.SimpleFormat$FormatSpecifierParser: java.lang.String format>;	$i2 = r0.<com.google.javascript.jscomp.base.format.SimpleFormat$FormatSpecifierParser: int i>;	$s3 = virtualinvoke $r1.<java.lang.String: char charAt(int)>($i2);	goto [?= return $s3];	return $s3
;block_num 3