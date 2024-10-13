(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3486 0)
(declare-sort var2814 0)
(declare-sort var3095 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var3095) void)
(declare-fun cast-from-var3486-to-var3095 (var3486) var3095)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun indent/1923421650 (var3486) String)
(declare-fun atStartOfLine/1923421650 (var3486) Bool)
(declare-fun output/1923421650 (var3486) var2814)
(declare-fun singleLineMode/1923421650 (var3486) Bool)
(declare-const null-var3486 var3486)
(declare-const null-var2814 var2814)
(declare-const null-Bool Bool)
(declare-const var2770 var3486) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$TextGenerator 
(assert (not (= var2770 null-var3486)))
(declare-const var3503 var2814) ; Statement: r2 := @parameter0: java.lang.Appendable 
(assert (not (= var3503 null-var2814)))
(declare-const var1420 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var1420 null-Bool)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var3486-to-var3095 var2770))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var2770!1 var3486)
(define-const var3724 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3724)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3724!1 String)
(assert (= var3724!1 ""))
(declare-const var2770!2 var3486)
(assert (not (= var2770!2 null-var3486)))
(assert (= (indent/1923421650 var2770!2) var3724!1)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$TextGenerator: java.lang.StringBuilder indent> = $r1 
(declare-const var2770!3 var3486)
(assert (not (= var2770!3 null-var3486)))
(assert (= (atStartOfLine/1923421650 var2770!3) (ite (= 1 0) true false))) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$TextGenerator: boolean atStartOfLine> = 0 
(declare-const var2770!4 var3486)
(assert (not (= var2770!4 null-var3486)))
(assert (= (output/1923421650 var2770!4) var3503)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$TextGenerator: java.lang.Appendable output> = r2 
(declare-const var2770!5 var3486)
(assert (not (= var2770!5 null-var3486)))
(assert (= (singleLineMode/1923421650 var2770!5) var1420)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$TextGenerator: boolean singleLineMode> = z0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var3486-to-var3095=([com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$TextGenerator], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), indent/1923421650=([com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$TextGenerator], java.lang.StringBuilder), atStartOfLine/1923421650=([com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$TextGenerator], boolean), output/1923421650=([com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$TextGenerator], java.lang.Appendable), singleLineMode/1923421650=([com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$TextGenerator], boolean)}
; {var3486=com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$TextGenerator, var2770=r0, var2814=java.lang.Appendable, var3503=r2, var1420=z0, var3095=java.lang.Object, var3724=$r1}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$TextGenerator=var3486, r0=var2770, java.lang.Appendable=var2814, r2=var3503, z0=var1420, java.lang.Object=var3095, $r1=var3724}
;seq <java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$TextGenerator;	r2 := @parameter0: java.lang.Appendable;	z0 := @parameter1: boolean;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$TextGenerator: java.lang.StringBuilder indent> = $r1;	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$TextGenerator: boolean atStartOfLine> = 0;	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$TextGenerator: java.lang.Appendable output> = r2;	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$TextGenerator: boolean singleLineMode> = z0;	return
;block_num 1