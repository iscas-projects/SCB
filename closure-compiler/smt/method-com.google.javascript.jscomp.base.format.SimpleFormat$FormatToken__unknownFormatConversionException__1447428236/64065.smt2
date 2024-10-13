(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3644 0)
(declare-sort var194 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun conversionType/-803315618 (var3644) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var194-init () var194)
(declare-fun dateSuffix/-803315618 (var3644) Int)
(declare-fun String_valueOf/-371898945 (Int) String)
(declare-fun cast-from-Int-to-String (Int) String)
(declare-fun <init>/1756957565 (var194 String) void)
(declare-const null-var3644 var3644)
(declare-const var3617 var3644) ; Statement: r0 := @this: com.google.javascript.jscomp.base.format.SimpleFormat$FormatToken 
(assert (not (= var3617 null-var3644)))
(define-const var730 Int (conversionType/-803315618 var3617)) ; Statement: $c0 = r0.<com.google.javascript.jscomp.base.format.SimpleFormat$FormatToken: char conversionType> 
(define-const var341 Int (cast-from-Int-to-Int var730)) ; Statement: $i5 = (int) $c0 
 ; Statement: if $i5 == 116 goto $r6 = new com.google.javascript.jscomp.base.format.UnknownFormatConversionException 
(assert (= var341 116)) ; Cond: $i5 == 116 
(define-const var2911 var194 var194-init) ; Statement: $r6 = new com.google.javascript.jscomp.base.format.UnknownFormatConversionException 
(define-const var3621 Int (conversionType/-803315618 var3617)) ; Statement: $c2 = r0.<com.google.javascript.jscomp.base.format.SimpleFormat$FormatToken: char conversionType> 
(define-const var2782 Int (dateSuffix/-803315618 var3617)) ; Statement: $c1 = r0.<com.google.javascript.jscomp.base.format.SimpleFormat$FormatToken: char dateSuffix> 
(define-const var3323 String (String_valueOf/-371898945 var2782)) ; Statement: $r2 = staticinvoke <java.lang.String: java.lang.String valueOf(char)>($c1) 
(define-const var308 String (str.++ "\u0001\u0001" (cast-from-Int-to-String var3621) var3323)) ; Statement: $r3 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (char,java.lang.String)>($c2, $r2) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001\u0001") 
(assert true)
;(assert (<init>/1756957565 var2911 var308)) ; Statement: specialinvoke $r6.<com.google.javascript.jscomp.base.format.UnknownFormatConversionException: void <init>(java.lang.String)>($r3) 

(declare-const var2911!1 var194)
(declare-const var308!1 String)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {conversionType/-803315618=([com.google.javascript.jscomp.base.format.SimpleFormat$FormatToken], char), cast-from-Int-to-Int=([char], int), var194-init=([], com.google.javascript.jscomp.base.format.UnknownFormatConversionException), dateSuffix/-803315618=([com.google.javascript.jscomp.base.format.SimpleFormat$FormatToken], char), String_valueOf/-371898945=([char], java.lang.String), cast-from-Int-to-String=([char], java.lang.String), <init>/1756957565=([com.google.javascript.jscomp.base.format.UnknownFormatConversionException, java.lang.String], void)}
; {var3644=com.google.javascript.jscomp.base.format.SimpleFormat$FormatToken, var3617=r0, var730=$c0, var341=$i5, var194=com.google.javascript.jscomp.base.format.UnknownFormatConversionException, var2911=$r6, var3621=$c2, var2782=$c1, var3323=$r2, var308=$r3}
; {com.google.javascript.jscomp.base.format.SimpleFormat$FormatToken=var3644, r0=var3617, $c0=var730, $i5=var341, com.google.javascript.jscomp.base.format.UnknownFormatConversionException=var194, $r6=var2911, $c2=var3621, $c1=var2782, $r2=var3323, $r3=var308}
;seq <java.lang.String: java.lang.String valueOf(char)>
;cnt {"<java.lang.String: java.lang.String valueOf(char)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.base.format.SimpleFormat$FormatToken;	$c0 = r0.<com.google.javascript.jscomp.base.format.SimpleFormat$FormatToken: char conversionType>;	$i5 = (int) $c0;	if $i5 == 116 goto $r6 = new com.google.javascript.jscomp.base.format.UnknownFormatConversionException;	$r6 = new com.google.javascript.jscomp.base.format.UnknownFormatConversionException;	$c2 = r0.<com.google.javascript.jscomp.base.format.SimpleFormat$FormatToken: char conversionType>;	$c1 = r0.<com.google.javascript.jscomp.base.format.SimpleFormat$FormatToken: char dateSuffix>;	$r2 = staticinvoke <java.lang.String: java.lang.String valueOf(char)>($c1);	$r3 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (char,java.lang.String)>($c2, $r2) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001\u0001");	specialinvoke $r6.<com.google.javascript.jscomp.base.format.UnknownFormatConversionException: void <init>(java.lang.String)>($r3);	throw $r6
;block_num 2