(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1271 0)
(declare-sort var1698 0)
(declare-sort var319 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var319) void)
(declare-fun cast-from-var1271-to-var319 (var1271) var319)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun lastLine/329799597 (var1271) Int)
(declare-fun lastLineStart/329799597 (var1271) Int)
(declare-fun nextLineStart/329799597 (var1271) Int)
(declare-fun sourceFile/329799597 (var1271) var1698)
(declare-fun contents/100576491 (var1698) String)
(declare-fun contents/329799597 (var1271) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun sourceLength/329799597 (var1271) Int)
(declare-const null-var1271 var1271)
(declare-const null-var1698 var1698)
(declare-const var1308 var1271) ; Statement: r0 := @this: com.google.javascript.jscomp.parsing.parser.LineNumberScanner 
(assert (not (= var1308 null-var1271)))
(declare-const var2567 var1698) ; Statement: r1 := @parameter0: com.google.javascript.jscomp.parsing.parser.SourceFile 
(assert (not (= var2567 null-var1698)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var1271-to-var319 var1308))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var1308!1 var1271)
(define-const var3276 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i2 = (int) -1 
(declare-const var1308!2 var1271)
(assert (not (= var1308!2 null-var1271)))
(assert (= (lastLine/329799597 var1308!2) var3276)) ; Statement: r0.<com.google.javascript.jscomp.parsing.parser.LineNumberScanner: int lastLine> = $i2 
(define-const var1087 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i4 = (int) -1 
(declare-const var1308!3 var1271)
(assert (not (= var1308!3 null-var1271)))
(assert (= (lastLineStart/329799597 var1308!3) var1087)) ; Statement: r0.<com.google.javascript.jscomp.parsing.parser.LineNumberScanner: int lastLineStart> = $i4 
(declare-const var1308!4 var1271)
(assert (not (= var1308!4 null-var1271)))
(assert (= (nextLineStart/329799597 var1308!4) 0)) ; Statement: r0.<com.google.javascript.jscomp.parsing.parser.LineNumberScanner: int nextLineStart> = 0 
(declare-const var1308!5 var1271)
(assert (not (= var1308!5 null-var1271)))
(assert (= (sourceFile/329799597 var1308!5) var2567)) ; Statement: r0.<com.google.javascript.jscomp.parsing.parser.LineNumberScanner: com.google.javascript.jscomp.parsing.parser.SourceFile sourceFile> = r1 
(define-const var531 String (contents/100576491 var2567)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.parsing.parser.SourceFile: java.lang.String contents> 
(declare-const var1308!6 var1271)
(assert (not (= var1308!6 null-var1271)))
(assert (= (contents/329799597 var1308!6) var531)) ; Statement: r0.<com.google.javascript.jscomp.parsing.parser.LineNumberScanner: java.lang.String contents> = $r2 
(define-const var1893 String (contents/329799597 var1308!6)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.parsing.parser.LineNumberScanner: java.lang.String contents> 
(assert true)
(define-const var944 Int (length/-134980193 var1893)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int length()>() 
(declare-const var1308!7 var1271)
(assert (not (= var1308!7 null-var1271)))
(assert (= (sourceLength/329799597 var1308!7) var944)) ; Statement: r0.<com.google.javascript.jscomp.parsing.parser.LineNumberScanner: int sourceLength> = $i0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var1271-to-var319=([com.google.javascript.jscomp.parsing.parser.LineNumberScanner], java.lang.Object), cast-from-Int-to-Int=([int], int), lastLine/329799597=([com.google.javascript.jscomp.parsing.parser.LineNumberScanner], int), lastLineStart/329799597=([com.google.javascript.jscomp.parsing.parser.LineNumberScanner], int), nextLineStart/329799597=([com.google.javascript.jscomp.parsing.parser.LineNumberScanner], int), sourceFile/329799597=([com.google.javascript.jscomp.parsing.parser.LineNumberScanner], com.google.javascript.jscomp.parsing.parser.SourceFile), contents/100576491=([com.google.javascript.jscomp.parsing.parser.SourceFile], java.lang.String), contents/329799597=([com.google.javascript.jscomp.parsing.parser.LineNumberScanner], java.lang.String), length/-134980193=([java.lang.String], int), sourceLength/329799597=([com.google.javascript.jscomp.parsing.parser.LineNumberScanner], int)}
; {var1271=com.google.javascript.jscomp.parsing.parser.LineNumberScanner, var1308=r0, var1698=com.google.javascript.jscomp.parsing.parser.SourceFile, var2567=r1, var319=java.lang.Object, var3276=$i2, var1087=$i4, var531=$r2, var1893=$r3, var944=$i0}
; {com.google.javascript.jscomp.parsing.parser.LineNumberScanner=var1271, r0=var1308, com.google.javascript.jscomp.parsing.parser.SourceFile=var1698, r1=var2567, java.lang.Object=var319, $i2=var3276, $i4=var1087, $r2=var531, $r3=var1893, $i0=var944}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.parsing.parser.LineNumberScanner;	r1 := @parameter0: com.google.javascript.jscomp.parsing.parser.SourceFile;	specialinvoke r0.<java.lang.Object: void <init>()>();	$i2 = (int) -1;	r0.<com.google.javascript.jscomp.parsing.parser.LineNumberScanner: int lastLine> = $i2;	$i4 = (int) -1;	r0.<com.google.javascript.jscomp.parsing.parser.LineNumberScanner: int lastLineStart> = $i4;	r0.<com.google.javascript.jscomp.parsing.parser.LineNumberScanner: int nextLineStart> = 0;	r0.<com.google.javascript.jscomp.parsing.parser.LineNumberScanner: com.google.javascript.jscomp.parsing.parser.SourceFile sourceFile> = r1;	$r2 = r1.<com.google.javascript.jscomp.parsing.parser.SourceFile: java.lang.String contents>;	r0.<com.google.javascript.jscomp.parsing.parser.LineNumberScanner: java.lang.String contents> = $r2;	$r3 = r0.<com.google.javascript.jscomp.parsing.parser.LineNumberScanner: java.lang.String contents>;	$i0 = virtualinvoke $r3.<java.lang.String: int length()>();	r0.<com.google.javascript.jscomp.parsing.parser.LineNumberScanner: int sourceLength> = $i0;	return
;block_num 1