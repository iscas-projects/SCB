(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2769 0)
(declare-sort var1202 0)
(declare-sort var950 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var950) void)
(declare-fun cast-from-var2769-to-var950 (var2769) var950)
(declare-fun format/1752648610 (var2769) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun length/1752648610 (var2769) Int)
(declare-const null-var2769 var2769)
(declare-const null-String String)
(declare-const var254 var2769) ; Statement: r0 := @this: com.google.javascript.jscomp.base.format.SimpleFormat$FormatSpecifierParser 
(assert (not (= var254 null-var2769)))
(declare-const var1184 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1184 null-String)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var2769-to-var950 var254))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var254!1 var2769)
(declare-const var254!2 var2769)
(assert (not (= var254!2 null-var2769)))
(assert (= (format/1752648610 var254!2) var1184)) ; Statement: r0.<com.google.javascript.jscomp.base.format.SimpleFormat$FormatSpecifierParser: java.lang.String format> = r1 
(assert true)
(define-const var252 Int (length/-134980193 var1184)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(declare-const var254!3 var2769)
(assert (not (= var254!3 null-var2769)))
(assert (= (length/1752648610 var254!3) var252)) ; Statement: r0.<com.google.javascript.jscomp.base.format.SimpleFormat$FormatSpecifierParser: int length> = $i0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var2769-to-var950=([com.google.javascript.jscomp.base.format.SimpleFormat$FormatSpecifierParser], java.lang.Object), format/1752648610=([com.google.javascript.jscomp.base.format.SimpleFormat$FormatSpecifierParser], java.lang.String), length/-134980193=([java.lang.String], int), length/1752648610=([com.google.javascript.jscomp.base.format.SimpleFormat$FormatSpecifierParser], int)}
; {var2769=com.google.javascript.jscomp.base.format.SimpleFormat$FormatSpecifierParser, var254=r0, var1184=r1, var1202=null_type, var950=java.lang.Object, var252=$i0}
; {com.google.javascript.jscomp.base.format.SimpleFormat$FormatSpecifierParser=var2769, r0=var254, r1=var1184, null_type=var1202, java.lang.Object=var950, $i0=var252}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.base.format.SimpleFormat$FormatSpecifierParser;	r1 := @parameter0: java.lang.String;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<com.google.javascript.jscomp.base.format.SimpleFormat$FormatSpecifierParser: java.lang.String format> = r1;	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	r0.<com.google.javascript.jscomp.base.format.SimpleFormat$FormatSpecifierParser: int length> = $i0;	return
;block_num 1