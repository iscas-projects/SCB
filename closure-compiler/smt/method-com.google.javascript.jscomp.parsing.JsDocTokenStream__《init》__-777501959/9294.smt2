(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3668 0)
(declare-sort var21 0)
(declare-sort var163 0)
(declare-sort var1163 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var163) void)
(declare-fun cast-from-var3668-to-var163 (var3668) var163)
(declare-fun string/-795929531 (var3668) String)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun stringBuffer/-795929531 (var3668) (Array Int Int))
(declare-fun ungetBuffer/-795929531 (var3668) (Array Int Int))
(declare-fun lineStart/-795929531 (var3668) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun lineEndChar/-795929531 (var3668) Int)
(declare-fun charno/-795929531 (var3668) Int)
(declare-fun var1163_checkNotNull/1446102589 (var163) var163)
(declare-fun cast-from-String-to-var163 (String) var163)
(declare-fun lineno/-795929531 (var3668) Int)
(declare-fun sourceString/-795929531 (var3668) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun sourceEnd/-795929531 (var3668) Int)
(declare-fun cursor/-795929531 (var3668) Int)
(declare-fun sourceCursor/-795929531 (var3668) Int)
(declare-fun initLineno/-795929531 (var3668) Int)
(declare-fun initCharno/-795929531 (var3668) Int)
(declare-const null-var3668 var3668)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var2547 var3668) ; Statement: r0 := @this: com.google.javascript.jscomp.parsing.JsDocTokenStream 
(assert (not (= var2547 null-var3668)))
(declare-const var490 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var490 null-String)))
(declare-const var2440 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2440 null-Int)))
(declare-const var2672 Int) ; Statement: i2 := @parameter2: int 
(assert (not (= var2672 null-Int)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var3668-to-var163 var2547))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var2547!1 var3668)
(declare-const var2547!2 var3668)
(assert (not (= var2547!2 null-var3668)))
(assert (= (string/-795929531 var2547!2) "")) ; Statement: r0.<com.google.javascript.jscomp.parsing.JsDocTokenStream: java.lang.String string> = "" 
(define-const var58 (Array Int Int) arr-Int-init) ; Statement: $r1 = newarray (char)[128] 
(declare-const var2547!3 var3668)
(assert (not (= var2547!3 null-var3668)))
(assert (= (stringBuffer/-795929531 var2547!3) var58)) ; Statement: r0.<com.google.javascript.jscomp.parsing.JsDocTokenStream: char[] stringBuffer> = $r1 
(define-const var1750 (Array Int Int) arr-Int-init) ; Statement: $r2 = newarray (int)[3] 
(declare-const var2547!4 var3668)
(assert (not (= var2547!4 null-var3668)))
(assert (= (ungetBuffer/-795929531 var2547!4) var1750)) ; Statement: r0.<com.google.javascript.jscomp.parsing.JsDocTokenStream: int[] ungetBuffer> = $r2 
(declare-const var2547!5 var3668)
(assert (not (= var2547!5 null-var3668)))
(assert (= (lineStart/-795929531 var2547!5) 0)) ; Statement: r0.<com.google.javascript.jscomp.parsing.JsDocTokenStream: int lineStart> = 0 
(define-const var209 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i4 = (int) -1 
(declare-const var2547!6 var3668)
(assert (not (= var2547!6 null-var3668)))
(assert (= (lineEndChar/-795929531 var2547!6) var209)) ; Statement: r0.<com.google.javascript.jscomp.parsing.JsDocTokenStream: int lineEndChar> = $i4 
(define-const var2075 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i6 = (int) -1 
(declare-const var2547!7 var3668)
(assert (not (= var2547!7 null-var3668)))
(assert (= (charno/-795929531 var2547!7) var2075)) ; Statement: r0.<com.google.javascript.jscomp.parsing.JsDocTokenStream: int charno> = $i6 
;(assert (var1163_checkNotNull/1446102589 (cast-from-String-to-var163 var490))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r3) 

(declare-const var490!1 String)
(declare-const var2547!8 var3668)
(assert (not (= var2547!8 null-var3668)))
(assert (= (lineno/-795929531 var2547!8) var2440)) ; Statement: r0.<com.google.javascript.jscomp.parsing.JsDocTokenStream: int lineno> = i0 
(declare-const var2547!9 var3668)
(assert (not (= var2547!9 null-var3668)))
(assert (= (sourceString/-795929531 var2547!9) var490!1)) ; Statement: r0.<com.google.javascript.jscomp.parsing.JsDocTokenStream: java.lang.String sourceString> = r3 
(assert true)
(define-const var2873 Int (length/-134980193 var490!1)) ; Statement: $i1 = virtualinvoke r3.<java.lang.String: int length()>() 
(declare-const var2547!10 var3668)
(assert (not (= var2547!10 null-var3668)))
(assert (= (sourceEnd/-795929531 var2547!10) var2873)) ; Statement: r0.<com.google.javascript.jscomp.parsing.JsDocTokenStream: int sourceEnd> = $i1 
(declare-const var2547!11 var3668)
(assert (not (= var2547!11 null-var3668)))
(assert (= (cursor/-795929531 var2547!11) 0)) ; Statement: r0.<com.google.javascript.jscomp.parsing.JsDocTokenStream: int cursor> = 0 
(declare-const var2547!12 var3668)
(assert (not (= var2547!12 null-var3668)))
(assert (= (sourceCursor/-795929531 var2547!12) 0)) ; Statement: r0.<com.google.javascript.jscomp.parsing.JsDocTokenStream: int sourceCursor> = 0 
(declare-const var2547!13 var3668)
(assert (not (= var2547!13 null-var3668)))
(assert (= (initLineno/-795929531 var2547!13) var2440)) ; Statement: r0.<com.google.javascript.jscomp.parsing.JsDocTokenStream: int initLineno> = i0 
(declare-const var2547!14 var3668)
(assert (not (= var2547!14 null-var3668)))
(assert (= (initCharno/-795929531 var2547!14) var2672)) ; Statement: r0.<com.google.javascript.jscomp.parsing.JsDocTokenStream: int initCharno> = i2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var3668-to-var163=([com.google.javascript.jscomp.parsing.JsDocTokenStream], java.lang.Object), string/-795929531=([com.google.javascript.jscomp.parsing.JsDocTokenStream], java.lang.String), arr-Int-init=([], char[]), stringBuffer/-795929531=([com.google.javascript.jscomp.parsing.JsDocTokenStream], char[]), ungetBuffer/-795929531=([com.google.javascript.jscomp.parsing.JsDocTokenStream], int[]), lineStart/-795929531=([com.google.javascript.jscomp.parsing.JsDocTokenStream], int), cast-from-Int-to-Int=([int], int), lineEndChar/-795929531=([com.google.javascript.jscomp.parsing.JsDocTokenStream], int), charno/-795929531=([com.google.javascript.jscomp.parsing.JsDocTokenStream], int), var1163_checkNotNull/1446102589=([java.lang.Object], java.lang.Object), cast-from-String-to-var163=([java.lang.String], java.lang.Object), lineno/-795929531=([com.google.javascript.jscomp.parsing.JsDocTokenStream], int), sourceString/-795929531=([com.google.javascript.jscomp.parsing.JsDocTokenStream], java.lang.String), length/-134980193=([java.lang.String], int), sourceEnd/-795929531=([com.google.javascript.jscomp.parsing.JsDocTokenStream], int), cursor/-795929531=([com.google.javascript.jscomp.parsing.JsDocTokenStream], int), sourceCursor/-795929531=([com.google.javascript.jscomp.parsing.JsDocTokenStream], int), initLineno/-795929531=([com.google.javascript.jscomp.parsing.JsDocTokenStream], int), initCharno/-795929531=([com.google.javascript.jscomp.parsing.JsDocTokenStream], int)}
; {var3668=com.google.javascript.jscomp.parsing.JsDocTokenStream, var2547=r0, var490=r3, var21=null_type, var2440=i0, var2672=i2, var163=java.lang.Object, var58=$r1, var1750=$r2, var209=$i4, var2075=$i6, var1163=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var2873=$i1}
; {com.google.javascript.jscomp.parsing.JsDocTokenStream=var3668, r0=var2547, r3=var490, null_type=var21, i0=var2440, i2=var2672, java.lang.Object=var163, $r1=var58, $r2=var1750, $i4=var209, $i6=var2075, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var1163, $i1=var2873}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.parsing.JsDocTokenStream;	r3 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i2 := @parameter2: int;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<com.google.javascript.jscomp.parsing.JsDocTokenStream: java.lang.String string> = "";	$r1 = newarray (char)[128];	r0.<com.google.javascript.jscomp.parsing.JsDocTokenStream: char[] stringBuffer> = $r1;	$r2 = newarray (int)[3];	r0.<com.google.javascript.jscomp.parsing.JsDocTokenStream: int[] ungetBuffer> = $r2;	r0.<com.google.javascript.jscomp.parsing.JsDocTokenStream: int lineStart> = 0;	$i4 = (int) -1;	r0.<com.google.javascript.jscomp.parsing.JsDocTokenStream: int lineEndChar> = $i4;	$i6 = (int) -1;	r0.<com.google.javascript.jscomp.parsing.JsDocTokenStream: int charno> = $i6;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r3);	r0.<com.google.javascript.jscomp.parsing.JsDocTokenStream: int lineno> = i0;	r0.<com.google.javascript.jscomp.parsing.JsDocTokenStream: java.lang.String sourceString> = r3;	$i1 = virtualinvoke r3.<java.lang.String: int length()>();	r0.<com.google.javascript.jscomp.parsing.JsDocTokenStream: int sourceEnd> = $i1;	r0.<com.google.javascript.jscomp.parsing.JsDocTokenStream: int cursor> = 0;	r0.<com.google.javascript.jscomp.parsing.JsDocTokenStream: int sourceCursor> = 0;	r0.<com.google.javascript.jscomp.parsing.JsDocTokenStream: int initLineno> = i0;	r0.<com.google.javascript.jscomp.parsing.JsDocTokenStream: int initCharno> = i2;	return
;block_num 1