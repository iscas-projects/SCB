(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1574 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun stringBuffer/-795929531 (var1574) (Array Int Int))
(declare-fun stringBufferTop/-795929531 (var1574) Int)
(declare-fun <init>/-253222812 (String (Array Int Int) Int Int) void)
(declare-const null-var1574 var1574)
(declare-const var2875 var1574) ; Statement: r1 := @this: com.google.javascript.jscomp.parsing.JsDocTokenStream 
(assert (not (= var2875 null-var1574)))
(define-const var3871 String String-init) ; Statement: $r0 = new java.lang.String 
(define-const var1544 (Array Int Int) (stringBuffer/-795929531 var2875)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.parsing.JsDocTokenStream: char[] stringBuffer> 
(define-const var3981 Int (stringBufferTop/-795929531 var2875)) ; Statement: $i0 = r1.<com.google.javascript.jscomp.parsing.JsDocTokenStream: int stringBufferTop> 
(assert true)
;(assert (<init>/-253222812 var3871 var1544 0 var3981)) ; Statement: specialinvoke $r0.<java.lang.String: void <init>(char[],int,int)>($r2, 0, $i0) 

(declare-const var3871!1 String)
(declare-const var1544!1 (Array Int Int))
(declare-const var961 Int)
(declare-const var3981!1 Int)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.String), stringBuffer/-795929531=([com.google.javascript.jscomp.parsing.JsDocTokenStream], char[]), stringBufferTop/-795929531=([com.google.javascript.jscomp.parsing.JsDocTokenStream], int), <init>/-253222812=([java.lang.String, char[], int, int], void)}
; {var1574=com.google.javascript.jscomp.parsing.JsDocTokenStream, var2875=r1, var3871=$r0, var1544=$r2, var3981=$i0, var961=0}
; {com.google.javascript.jscomp.parsing.JsDocTokenStream=var1574, r1=var2875, $r0=var3871, $r2=var1544, $i0=var3981, 0=var961}
;seq <java.lang.String: void <init>(char[],int,int)>
;cnt {"<java.lang.String: void <init>(char[],int,int)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.parsing.JsDocTokenStream;	$r0 = new java.lang.String;	$r2 = r1.<com.google.javascript.jscomp.parsing.JsDocTokenStream: char[] stringBuffer>;	$i0 = r1.<com.google.javascript.jscomp.parsing.JsDocTokenStream: int stringBufferTop>;	specialinvoke $r0.<java.lang.String: void <init>(char[],int,int)>($r2, 0, $i0);	return $r0
;block_num 1