(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3453 0)
(declare-sort var1267 0)
(declare-sort var1399 0)
(declare-sort var2694 0)
(declare-sort var104 0)
(declare-sort var807 0)
(declare-sort var2171 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var104) void)
(declare-fun cast-from-var3453-to-var104 (var3453) var104)
(declare-fun var807-init () var807)
(declare-fun <init>/-325640736 (var807) void)
(declare-fun currentTokens/-1834389046 (var3453) var807)
(declare-fun errorReporter/-1834389046 (var3453) var1267)
(declare-fun commentRecorder/-1834389046 (var3453) var1399)
(declare-fun source/-1834389046 (var3453) var2694)
(declare-fun var2171-init () var2171)
(declare-fun <init>/-1897638111 (var2171 var2694) void)
(declare-fun lineNumberScanner/-1834389046 (var3453) var2171)
(declare-fun contents/100576491 (var2694) String)
(declare-fun contents/-1834389046 (var3453) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun contentsLength/-1834389046 (var3453) Int)
(declare-fun index/-1834389046 (var3453) Int)
(declare-fun typeParameterLevel/-1834389046 (var3453) Int)
(declare-const null-var3453 var3453)
(declare-const null-var1267 var1267)
(declare-const null-var1399 var1399)
(declare-const null-var2694 var2694)
(declare-const null-Int Int)
(declare-const var1341 var3453) ; Statement: r0 := @this: com.google.javascript.jscomp.parsing.parser.Scanner 
(assert (not (= var1341 null-var3453)))
(declare-const var977 var1267) ; Statement: r2 := @parameter0: com.google.javascript.jscomp.parsing.parser.util.ErrorReporter 
(assert (not (= var977 null-var1267)))
(declare-const var834 var1399) ; Statement: r3 := @parameter1: com.google.javascript.jscomp.parsing.parser.Scanner$CommentRecorder 
(assert (not (= var834 null-var1399)))
(declare-const var2811 var2694) ; Statement: r4 := @parameter2: com.google.javascript.jscomp.parsing.parser.SourceFile 
(assert (not (= var2811 null-var2694)))
(declare-const var1994 Int) ; Statement: i1 := @parameter3: int 
(assert (not (= var1994 null-Int)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var3453-to-var104 var1341))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var1341!1 var3453)
(define-const var2865 var807 var807-init) ; Statement: $r1 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var2865)) ; Statement: specialinvoke $r1.<java.util.ArrayList: void <init>()>() 

(declare-const var2865!1 var807)
(declare-const var1341!2 var3453)
(assert (not (= var1341!2 null-var3453)))
(assert (= (currentTokens/-1834389046 var1341!2) var2865!1)) ; Statement: r0.<com.google.javascript.jscomp.parsing.parser.Scanner: java.util.ArrayList currentTokens> = $r1 
(declare-const var1341!3 var3453)
(assert (not (= var1341!3 null-var3453)))
(assert (= (errorReporter/-1834389046 var1341!3) var977)) ; Statement: r0.<com.google.javascript.jscomp.parsing.parser.Scanner: com.google.javascript.jscomp.parsing.parser.util.ErrorReporter errorReporter> = r2 
(declare-const var1341!4 var3453)
(assert (not (= var1341!4 null-var3453)))
(assert (= (commentRecorder/-1834389046 var1341!4) var834)) ; Statement: r0.<com.google.javascript.jscomp.parsing.parser.Scanner: com.google.javascript.jscomp.parsing.parser.Scanner$CommentRecorder commentRecorder> = r3 
(declare-const var1341!5 var3453)
(assert (not (= var1341!5 null-var3453)))
(assert (= (source/-1834389046 var1341!5) var2811)) ; Statement: r0.<com.google.javascript.jscomp.parsing.parser.Scanner: com.google.javascript.jscomp.parsing.parser.SourceFile source> = r4 
(define-const var2660 var2171 var2171-init) ; Statement: $r5 = new com.google.javascript.jscomp.parsing.parser.LineNumberScanner 
(define-const var3269 var2694 (source/-1834389046 var1341!5)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.parsing.parser.Scanner: com.google.javascript.jscomp.parsing.parser.SourceFile source> 
(assert true)
;(assert (<init>/-1897638111 var2660 var3269)) ; Statement: specialinvoke $r5.<com.google.javascript.jscomp.parsing.parser.LineNumberScanner: void <init>(com.google.javascript.jscomp.parsing.parser.SourceFile)>($r6) 

(declare-const var2660!1 var2171)
(declare-const var3269!1 var2694)
(declare-const var1341!6 var3453)
(assert (not (= var1341!6 null-var3453)))
(assert (= (lineNumberScanner/-1834389046 var1341!6) var2660!1)) ; Statement: r0.<com.google.javascript.jscomp.parsing.parser.Scanner: com.google.javascript.jscomp.parsing.parser.LineNumberScanner lineNumberScanner> = $r5 
(define-const var1076 String (contents/100576491 var2811)) ; Statement: $r7 = r4.<com.google.javascript.jscomp.parsing.parser.SourceFile: java.lang.String contents> 
(declare-const var1341!7 var3453)
(assert (not (= var1341!7 null-var3453)))
(assert (= (contents/-1834389046 var1341!7) var1076)) ; Statement: r0.<com.google.javascript.jscomp.parsing.parser.Scanner: java.lang.String contents> = $r7 
(define-const var2177 String (contents/100576491 var2811)) ; Statement: $r8 = r4.<com.google.javascript.jscomp.parsing.parser.SourceFile: java.lang.String contents> 
(assert true)
(define-const var501 Int (length/-134980193 var2177)) ; Statement: $i0 = virtualinvoke $r8.<java.lang.String: int length()>() 
(declare-const var1341!8 var3453)
(assert (not (= var1341!8 null-var3453)))
(assert (= (contentsLength/-1834389046 var1341!8) var501)) ; Statement: r0.<com.google.javascript.jscomp.parsing.parser.Scanner: int contentsLength> = $i0 
(declare-const var1341!9 var3453)
(assert (not (= var1341!9 null-var3453)))
(assert (= (index/-1834389046 var1341!9) var1994)) ; Statement: r0.<com.google.javascript.jscomp.parsing.parser.Scanner: int index> = i1 
(declare-const var1341!10 var3453)
(assert (not (= var1341!10 null-var3453)))
(assert (= (typeParameterLevel/-1834389046 var1341!10) 0)) ; Statement: r0.<com.google.javascript.jscomp.parsing.parser.Scanner: int typeParameterLevel> = 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var3453-to-var104=([com.google.javascript.jscomp.parsing.parser.Scanner], java.lang.Object), var807-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), currentTokens/-1834389046=([com.google.javascript.jscomp.parsing.parser.Scanner], java.util.ArrayList), errorReporter/-1834389046=([com.google.javascript.jscomp.parsing.parser.Scanner], com.google.javascript.jscomp.parsing.parser.util.ErrorReporter), commentRecorder/-1834389046=([com.google.javascript.jscomp.parsing.parser.Scanner], com.google.javascript.jscomp.parsing.parser.Scanner$CommentRecorder), source/-1834389046=([com.google.javascript.jscomp.parsing.parser.Scanner], com.google.javascript.jscomp.parsing.parser.SourceFile), var2171-init=([], com.google.javascript.jscomp.parsing.parser.LineNumberScanner), <init>/-1897638111=([com.google.javascript.jscomp.parsing.parser.LineNumberScanner, com.google.javascript.jscomp.parsing.parser.SourceFile], void), lineNumberScanner/-1834389046=([com.google.javascript.jscomp.parsing.parser.Scanner], com.google.javascript.jscomp.parsing.parser.LineNumberScanner), contents/100576491=([com.google.javascript.jscomp.parsing.parser.SourceFile], java.lang.String), contents/-1834389046=([com.google.javascript.jscomp.parsing.parser.Scanner], java.lang.String), length/-134980193=([java.lang.String], int), contentsLength/-1834389046=([com.google.javascript.jscomp.parsing.parser.Scanner], int), index/-1834389046=([com.google.javascript.jscomp.parsing.parser.Scanner], int), typeParameterLevel/-1834389046=([com.google.javascript.jscomp.parsing.parser.Scanner], int)}
; {var3453=com.google.javascript.jscomp.parsing.parser.Scanner, var1341=r0, var1267=com.google.javascript.jscomp.parsing.parser.util.ErrorReporter, var977=r2, var1399=com.google.javascript.jscomp.parsing.parser.Scanner$CommentRecorder, var834=r3, var2694=com.google.javascript.jscomp.parsing.parser.SourceFile, var2811=r4, var1994=i1, var104=java.lang.Object, var807=java.util.ArrayList, var2865=$r1, var2171=com.google.javascript.jscomp.parsing.parser.LineNumberScanner, var2660=$r5, var3269=$r6, var1076=$r7, var2177=$r8, var501=$i0}
; {com.google.javascript.jscomp.parsing.parser.Scanner=var3453, r0=var1341, com.google.javascript.jscomp.parsing.parser.util.ErrorReporter=var1267, r2=var977, com.google.javascript.jscomp.parsing.parser.Scanner$CommentRecorder=var1399, r3=var834, com.google.javascript.jscomp.parsing.parser.SourceFile=var2694, r4=var2811, i1=var1994, java.lang.Object=var104, java.util.ArrayList=var807, $r1=var2865, com.google.javascript.jscomp.parsing.parser.LineNumberScanner=var2171, $r5=var2660, $r6=var3269, $r7=var1076, $r8=var2177, $i0=var501}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.parsing.parser.Scanner;	r2 := @parameter0: com.google.javascript.jscomp.parsing.parser.util.ErrorReporter;	r3 := @parameter1: com.google.javascript.jscomp.parsing.parser.Scanner$CommentRecorder;	r4 := @parameter2: com.google.javascript.jscomp.parsing.parser.SourceFile;	i1 := @parameter3: int;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r1 = new java.util.ArrayList;	specialinvoke $r1.<java.util.ArrayList: void <init>()>();	r0.<com.google.javascript.jscomp.parsing.parser.Scanner: java.util.ArrayList currentTokens> = $r1;	r0.<com.google.javascript.jscomp.parsing.parser.Scanner: com.google.javascript.jscomp.parsing.parser.util.ErrorReporter errorReporter> = r2;	r0.<com.google.javascript.jscomp.parsing.parser.Scanner: com.google.javascript.jscomp.parsing.parser.Scanner$CommentRecorder commentRecorder> = r3;	r0.<com.google.javascript.jscomp.parsing.parser.Scanner: com.google.javascript.jscomp.parsing.parser.SourceFile source> = r4;	$r5 = new com.google.javascript.jscomp.parsing.parser.LineNumberScanner;	$r6 = r0.<com.google.javascript.jscomp.parsing.parser.Scanner: com.google.javascript.jscomp.parsing.parser.SourceFile source>;	specialinvoke $r5.<com.google.javascript.jscomp.parsing.parser.LineNumberScanner: void <init>(com.google.javascript.jscomp.parsing.parser.SourceFile)>($r6);	r0.<com.google.javascript.jscomp.parsing.parser.Scanner: com.google.javascript.jscomp.parsing.parser.LineNumberScanner lineNumberScanner> = $r5;	$r7 = r4.<com.google.javascript.jscomp.parsing.parser.SourceFile: java.lang.String contents>;	r0.<com.google.javascript.jscomp.parsing.parser.Scanner: java.lang.String contents> = $r7;	$r8 = r4.<com.google.javascript.jscomp.parsing.parser.SourceFile: java.lang.String contents>;	$i0 = virtualinvoke $r8.<java.lang.String: int length()>();	r0.<com.google.javascript.jscomp.parsing.parser.Scanner: int contentsLength> = $i0;	r0.<com.google.javascript.jscomp.parsing.parser.Scanner: int index> = i1;	r0.<com.google.javascript.jscomp.parsing.parser.Scanner: int typeParameterLevel> = 0;	return
;block_num 1