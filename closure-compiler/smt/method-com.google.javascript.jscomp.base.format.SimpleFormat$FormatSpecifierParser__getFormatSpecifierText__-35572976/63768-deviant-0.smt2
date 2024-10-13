(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2328 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun format/1752648610 (var2328) String)
(declare-fun startIndex/1752648610 (var2328) Int)
(declare-fun i/1752648610 (var2328) Int)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-const null-var2328 var2328)
(declare-const var3261 var2328) ; Statement: r0 := @this: com.google.javascript.jscomp.base.format.SimpleFormat$FormatSpecifierParser 
(assert (not (= var3261 null-var2328)))
(define-const var2779 String (format/1752648610 var3261)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.base.format.SimpleFormat$FormatSpecifierParser: java.lang.String format> 
(define-const var3059 Int (startIndex/1752648610 var3261)) ; Statement: $i1 = r0.<com.google.javascript.jscomp.base.format.SimpleFormat$FormatSpecifierParser: int startIndex> 
(define-const var1710 Int (i/1752648610 var3261)) ; Statement: $i0 = r0.<com.google.javascript.jscomp.base.format.SimpleFormat$FormatSpecifierParser: int i> 
(assert (not (and true (and (>= var3059 0) (>= (str.len var2779) var1710) (>= var1710 var3059)))))
(check-sat)
(get-model)
(get-unsat-core)
; {format/1752648610=([com.google.javascript.jscomp.base.format.SimpleFormat$FormatSpecifierParser], java.lang.String), startIndex/1752648610=([com.google.javascript.jscomp.base.format.SimpleFormat$FormatSpecifierParser], int), i/1752648610=([com.google.javascript.jscomp.base.format.SimpleFormat$FormatSpecifierParser], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String)}
; {var2328=com.google.javascript.jscomp.base.format.SimpleFormat$FormatSpecifierParser, var3261=r0, var2779=$r1, var3059=$i1, var1710=$i0, var1933=$r2}
; {com.google.javascript.jscomp.base.format.SimpleFormat$FormatSpecifierParser=var2328, r0=var3261, $r1=var2779, $i1=var3059, $i0=var1710, $r2=var1933}
;seq <java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.base.format.SimpleFormat$FormatSpecifierParser;	$r1 = r0.<com.google.javascript.jscomp.base.format.SimpleFormat$FormatSpecifierParser: java.lang.String format>;	$i1 = r0.<com.google.javascript.jscomp.base.format.SimpleFormat$FormatSpecifierParser: int startIndex>;	$i0 = r0.<com.google.javascript.jscomp.base.format.SimpleFormat$FormatSpecifierParser: int i>;	$r2 = virtualinvoke $r1.<java.lang.String: java.lang.String substring(int,int)>($i1, $i0);	return $r2
;block_num 1