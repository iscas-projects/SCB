(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2427 0)
(declare-sort var901 0)
(declare-sort var2791 0)
(declare-sort var1298 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun index/-1834389046 (var2427) Int)
(declare-fun isAtEnd/-882235477 (var2427) Bool)
(declare-fun lineNumberScanner/-1834389046 (var2427) var2791)
(declare-fun getSourceRange/-1716200342 (var2791 Int Int) var1298)
(declare-fun contents/-1834389046 (var2427) String)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun recordComment/-613146738 (var2427 var901 var1298 String) void)
(declare-const null-var2427 var2427)
(declare-const null-var901 var901)
(declare-const var2558 var2427) ; Statement: r0 := @this: com.google.javascript.jscomp.parsing.parser.Scanner 
(assert (not (= var2558 null-var2427)))
(declare-const var2545 var901) ; Statement: r3 := @parameter0: com.google.javascript.jscomp.parsing.parser.trees.Comment$Type 
(assert (not (= var2545 null-var901)))
(define-const var1719 Int (index/-1834389046 var2558)) ; Statement: i0 = r0.<com.google.javascript.jscomp.parsing.parser.Scanner: int index> 
(assert true) ; Non Conditional
(assert true)
(define-const var505 Bool (isAtEnd/-882235477 var2558)) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.jscomp.parsing.parser.Scanner: boolean isAtEnd()>() 
 ; Statement: if $z0 != 0 goto $r1 = r0.<com.google.javascript.jscomp.parsing.parser.Scanner: com.google.javascript.jscomp.parsing.parser.LineNumberScanner lineNumberScanner> 
(assert (not (= (ite var505 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1118 var2791 (lineNumberScanner/-1834389046 var2558)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.parsing.parser.Scanner: com.google.javascript.jscomp.parsing.parser.LineNumberScanner lineNumberScanner> 
(define-const var3126 Int (index/-1834389046 var2558)) ; Statement: $i1 = r0.<com.google.javascript.jscomp.parsing.parser.Scanner: int index> 
(assert true)
(define-const var377 var1298 (getSourceRange/-1716200342 var1118 var1719 var3126)) ; Statement: $r4 = virtualinvoke $r1.<com.google.javascript.jscomp.parsing.parser.LineNumberScanner: com.google.javascript.jscomp.parsing.parser.util.SourceRange getSourceRange(int,int)>(i0, $i1) 
(define-const var2620 String (contents/-1834389046 var2558)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.parsing.parser.Scanner: java.lang.String contents> 
(define-const var3431 Int (index/-1834389046 var2558)) ; Statement: $i2 = r0.<com.google.javascript.jscomp.parsing.parser.Scanner: int index> 
(assert (and true (and (>= var1719 0) (>= (str.len var2620) var3431) (>= var3431 var1719))))
(define-const var3469 String (substring/-1240304868 var2620 var1719 var3431)) ; Statement: $r5 = virtualinvoke $r2.<java.lang.String: java.lang.String substring(int,int)>(i0, $i2) 
(assert true)
;(assert (recordComment/-613146738 var2558 var2545 var377 var3469)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.parsing.parser.Scanner: void recordComment(com.google.javascript.jscomp.parsing.parser.trees.Comment$Type,com.google.javascript.jscomp.parsing.parser.util.SourceRange,java.lang.String)>(r3, $r4, $r5) 

(declare-const var2558!1 var2427)
(declare-const var2545!1 var901)
(declare-const var377!1 var1298)
(declare-const var3469!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {index/-1834389046=([com.google.javascript.jscomp.parsing.parser.Scanner], int), isAtEnd/-882235477=([com.google.javascript.jscomp.parsing.parser.Scanner], boolean), lineNumberScanner/-1834389046=([com.google.javascript.jscomp.parsing.parser.Scanner], com.google.javascript.jscomp.parsing.parser.LineNumberScanner), getSourceRange/-1716200342=([com.google.javascript.jscomp.parsing.parser.LineNumberScanner, int, int], com.google.javascript.jscomp.parsing.parser.util.SourceRange), contents/-1834389046=([com.google.javascript.jscomp.parsing.parser.Scanner], java.lang.String), substring/-1240304868=([java.lang.String, int, int], java.lang.String), recordComment/-613146738=([com.google.javascript.jscomp.parsing.parser.Scanner, com.google.javascript.jscomp.parsing.parser.trees.Comment$Type, com.google.javascript.jscomp.parsing.parser.util.SourceRange, java.lang.String], void)}
; {var2427=com.google.javascript.jscomp.parsing.parser.Scanner, var2558=r0, var901=com.google.javascript.jscomp.parsing.parser.trees.Comment$Type, var2545=r3, var1719=i0, var505=$z0, var2791=com.google.javascript.jscomp.parsing.parser.LineNumberScanner, var1118=$r1, var3126=$i1, var1298=com.google.javascript.jscomp.parsing.parser.util.SourceRange, var377=$r4, var2620=$r2, var3431=$i2, var3469=$r5}
; {com.google.javascript.jscomp.parsing.parser.Scanner=var2427, r0=var2558, com.google.javascript.jscomp.parsing.parser.trees.Comment$Type=var901, r3=var2545, i0=var1719, $z0=var505, com.google.javascript.jscomp.parsing.parser.LineNumberScanner=var2791, $r1=var1118, $i1=var3126, com.google.javascript.jscomp.parsing.parser.util.SourceRange=var1298, $r4=var377, $r2=var2620, $i2=var3431, $r5=var3469}
;seq <java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.parsing.parser.Scanner;	r3 := @parameter0: com.google.javascript.jscomp.parsing.parser.trees.Comment$Type;	i0 = r0.<com.google.javascript.jscomp.parsing.parser.Scanner: int index>;	$z0 = virtualinvoke r0.<com.google.javascript.jscomp.parsing.parser.Scanner: boolean isAtEnd()>();	if $z0 != 0 goto $r1 = r0.<com.google.javascript.jscomp.parsing.parser.Scanner: com.google.javascript.jscomp.parsing.parser.LineNumberScanner lineNumberScanner>;	$r1 = r0.<com.google.javascript.jscomp.parsing.parser.Scanner: com.google.javascript.jscomp.parsing.parser.LineNumberScanner lineNumberScanner>;	$i1 = r0.<com.google.javascript.jscomp.parsing.parser.Scanner: int index>;	$r4 = virtualinvoke $r1.<com.google.javascript.jscomp.parsing.parser.LineNumberScanner: com.google.javascript.jscomp.parsing.parser.util.SourceRange getSourceRange(int,int)>(i0, $i1);	$r2 = r0.<com.google.javascript.jscomp.parsing.parser.Scanner: java.lang.String contents>;	$i2 = r0.<com.google.javascript.jscomp.parsing.parser.Scanner: int index>;	$r5 = virtualinvoke $r2.<java.lang.String: java.lang.String substring(int,int)>(i0, $i2);	virtualinvoke r0.<com.google.javascript.jscomp.parsing.parser.Scanner: void recordComment(com.google.javascript.jscomp.parsing.parser.trees.Comment$Type,com.google.javascript.jscomp.parsing.parser.util.SourceRange,java.lang.String)>(r3, $r4, $r5);	return
;block_num 3