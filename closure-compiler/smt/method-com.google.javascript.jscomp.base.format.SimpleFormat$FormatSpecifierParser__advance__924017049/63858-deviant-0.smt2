(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2964 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun i/1752648610 (var2964) Int)
(declare-fun length/1752648610 (var2964) Int)
(declare-fun format/1752648610 (var2964) String)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-const null-var2964 var2964)
(declare-const var2945 var2964) ; Statement: r0 := @this: com.google.javascript.jscomp.base.format.SimpleFormat$FormatSpecifierParser 
(assert (not (= var2945 null-var2964)))
(define-const var2370 Int (i/1752648610 var2945)) ; Statement: $i1 = r0.<com.google.javascript.jscomp.base.format.SimpleFormat$FormatSpecifierParser: int i> 
(define-const var2157 Int (length/1752648610 var2945)) ; Statement: $i0 = r0.<com.google.javascript.jscomp.base.format.SimpleFormat$FormatSpecifierParser: int length> 
 ; Statement: if $i1 < $i0 goto $r1 = r0.<com.google.javascript.jscomp.base.format.SimpleFormat$FormatSpecifierParser: java.lang.String format> 
(assert (< var2370 var2157)) ; Cond: $i1 < $i0 
(define-const var2918 String (format/1752648610 var2945)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.base.format.SimpleFormat$FormatSpecifierParser: java.lang.String format> 
(define-const var1076 Int (i/1752648610 var2945)) ; Statement: $i2 = r0.<com.google.javascript.jscomp.base.format.SimpleFormat$FormatSpecifierParser: int i> 
(define-const var3902 Int (+ var1076 1)) ; Statement: $i3 = $i2 + 1 
(declare-const var2945!1 var2964)
(assert (not (= var2945!1 null-var2964)))
(assert (= (i/1752648610 var2945!1) var3902)) ; Statement: r0.<com.google.javascript.jscomp.base.format.SimpleFormat$FormatSpecifierParser: int i> = $i3 
(assert (not (and true (and (> (str.len var2918) var1076) (<= 0 var1076)))))
(check-sat)
(get-model)
(get-unsat-core)
; {i/1752648610=([com.google.javascript.jscomp.base.format.SimpleFormat$FormatSpecifierParser], int), length/1752648610=([com.google.javascript.jscomp.base.format.SimpleFormat$FormatSpecifierParser], int), format/1752648610=([com.google.javascript.jscomp.base.format.SimpleFormat$FormatSpecifierParser], java.lang.String), charAt/698050440=([java.lang.String, int], char)}
; {var2964=com.google.javascript.jscomp.base.format.SimpleFormat$FormatSpecifierParser, var2945=r0, var2370=$i1, var2157=$i0, var2918=$r1, var1076=$i2, var3902=$i3, var2557=$c4}
; {com.google.javascript.jscomp.base.format.SimpleFormat$FormatSpecifierParser=var2964, r0=var2945, $i1=var2370, $i0=var2157, $r1=var2918, $i2=var1076, $i3=var3902, $c4=var2557}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.base.format.SimpleFormat$FormatSpecifierParser;	$i1 = r0.<com.google.javascript.jscomp.base.format.SimpleFormat$FormatSpecifierParser: int i>;	$i0 = r0.<com.google.javascript.jscomp.base.format.SimpleFormat$FormatSpecifierParser: int length>;	if $i1 < $i0 goto $r1 = r0.<com.google.javascript.jscomp.base.format.SimpleFormat$FormatSpecifierParser: java.lang.String format>;	$r1 = r0.<com.google.javascript.jscomp.base.format.SimpleFormat$FormatSpecifierParser: java.lang.String format>;	$i2 = r0.<com.google.javascript.jscomp.base.format.SimpleFormat$FormatSpecifierParser: int i>;	$i3 = $i2 + 1;	r0.<com.google.javascript.jscomp.base.format.SimpleFormat$FormatSpecifierParser: int i> = $i3;	$c4 = virtualinvoke $r1.<java.lang.String: char charAt(int)>($i2);	return $c4
;block_num 2