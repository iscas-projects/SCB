(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3558 0)
(declare-sort var930 0)
(declare-sort var2257 0)
(declare-sort var1006 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var2257) void)
(declare-fun cast-from-var3558-to-var2257 (var3558) var2257)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun lastChar/-806106376 (var3558) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun textBuffer/-806106376 (var3558) String)
(declare-fun var1006-init () var1006)
(declare-fun <init>/803401363 (var1006) void)
(declare-fun currentToken/-806106376 (var3558) var1006)
(declare-fun lookAheadTokens/-806106376 (var3558) var1006)
(declare-fun input/-806106376 (var3558) String)
(declare-fun position/-806106376 (var3558) Int)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun maxlen/-806106376 (var3558) Int)
(declare-fun lineNumber/-806106376 (var3558) Int)
(declare-const null-var3558 var3558)
(declare-const null-String String)
(declare-const null-var1006 var1006)
(declare-const var2165 var3558) ; Statement: r0 := @this: org.apache.ibatis.javassist.compiler.Lex 
(assert (not (= var2165 null-var3558)))
(declare-const var705 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var705 null-String)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var3558-to-var2257 var2165))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var2165!1 var3558)
(define-const var890 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i2 = (int) -1 
(declare-const var2165!2 var3558)
(assert (not (= var2165!2 null-var3558)))
(assert (= (lastChar/-806106376 var2165!2) var890)) ; Statement: r0.<org.apache.ibatis.javassist.compiler.Lex: int lastChar> = $i2 
(define-const var947 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var947)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var947!1 String)
(assert (= var947!1 ""))
(declare-const var2165!3 var3558)
(assert (not (= var2165!3 null-var3558)))
(assert (= (textBuffer/-806106376 var2165!3) var947!1)) ; Statement: r0.<org.apache.ibatis.javassist.compiler.Lex: java.lang.StringBuilder textBuffer> = $r4 
(define-const var2873 var1006 var1006-init) ; Statement: $r5 = new org.apache.ibatis.javassist.compiler.Token 
(assert true)
;(assert (<init>/803401363 var2873)) ; Statement: specialinvoke $r5.<org.apache.ibatis.javassist.compiler.Token: void <init>()>() 

(declare-const var2873!1 var1006)
(declare-const var2165!4 var3558)
(assert (not (= var2165!4 null-var3558)))
(assert (= (currentToken/-806106376 var2165!4) var2873!1)) ; Statement: r0.<org.apache.ibatis.javassist.compiler.Lex: org.apache.ibatis.javassist.compiler.Token currentToken> = $r5 
(declare-const var2165!5 var3558)
(assert (not (= var2165!5 null-var3558)))
(assert (= (lookAheadTokens/-806106376 var2165!5) null-var1006)) ; Statement: r0.<org.apache.ibatis.javassist.compiler.Lex: org.apache.ibatis.javassist.compiler.Token lookAheadTokens> = null 
(declare-const var2165!6 var3558)
(assert (not (= var2165!6 null-var3558)))
(assert (= (input/-806106376 var2165!6) var705)) ; Statement: r0.<org.apache.ibatis.javassist.compiler.Lex: java.lang.String input> = r3 
(declare-const var2165!7 var3558)
(assert (not (= var2165!7 null-var3558)))
(assert (= (position/-806106376 var2165!7) 0)) ; Statement: r0.<org.apache.ibatis.javassist.compiler.Lex: int position> = 0 
(assert true)
(define-const var2604 Int (length/-134980193 var705)) ; Statement: $i0 = virtualinvoke r3.<java.lang.String: int length()>() 
(declare-const var2165!8 var3558)
(assert (not (= var2165!8 null-var3558)))
(assert (= (maxlen/-806106376 var2165!8) var2604)) ; Statement: r0.<org.apache.ibatis.javassist.compiler.Lex: int maxlen> = $i0 
(declare-const var2165!9 var3558)
(assert (not (= var2165!9 null-var3558)))
(assert (= (lineNumber/-806106376 var2165!9) 0)) ; Statement: r0.<org.apache.ibatis.javassist.compiler.Lex: int lineNumber> = 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var3558-to-var2257=([org.apache.ibatis.javassist.compiler.Lex], java.lang.Object), cast-from-Int-to-Int=([int], int), lastChar/-806106376=([org.apache.ibatis.javassist.compiler.Lex], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), textBuffer/-806106376=([org.apache.ibatis.javassist.compiler.Lex], java.lang.StringBuilder), var1006-init=([], org.apache.ibatis.javassist.compiler.Token), <init>/803401363=([org.apache.ibatis.javassist.compiler.Token], void), currentToken/-806106376=([org.apache.ibatis.javassist.compiler.Lex], org.apache.ibatis.javassist.compiler.Token), lookAheadTokens/-806106376=([org.apache.ibatis.javassist.compiler.Lex], org.apache.ibatis.javassist.compiler.Token), input/-806106376=([org.apache.ibatis.javassist.compiler.Lex], java.lang.String), position/-806106376=([org.apache.ibatis.javassist.compiler.Lex], int), length/-134980193=([java.lang.String], int), maxlen/-806106376=([org.apache.ibatis.javassist.compiler.Lex], int), lineNumber/-806106376=([org.apache.ibatis.javassist.compiler.Lex], int)}
; {var3558=org.apache.ibatis.javassist.compiler.Lex, var2165=r0, var705=r3, var930=null_type, var2257=java.lang.Object, var890=$i2, var947=$r4, var1006=org.apache.ibatis.javassist.compiler.Token, var2873=$r5, var2604=$i0}
; {org.apache.ibatis.javassist.compiler.Lex=var3558, r0=var2165, r3=var705, null_type=var930, java.lang.Object=var2257, $i2=var890, $r4=var947, org.apache.ibatis.javassist.compiler.Token=var1006, $r5=var2873, $i0=var2604}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: int length()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: int length()>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.compiler.Lex;	r3 := @parameter0: java.lang.String;	specialinvoke r0.<java.lang.Object: void <init>()>();	$i2 = (int) -1;	r0.<org.apache.ibatis.javassist.compiler.Lex: int lastChar> = $i2;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	r0.<org.apache.ibatis.javassist.compiler.Lex: java.lang.StringBuilder textBuffer> = $r4;	$r5 = new org.apache.ibatis.javassist.compiler.Token;	specialinvoke $r5.<org.apache.ibatis.javassist.compiler.Token: void <init>()>();	r0.<org.apache.ibatis.javassist.compiler.Lex: org.apache.ibatis.javassist.compiler.Token currentToken> = $r5;	r0.<org.apache.ibatis.javassist.compiler.Lex: org.apache.ibatis.javassist.compiler.Token lookAheadTokens> = null;	r0.<org.apache.ibatis.javassist.compiler.Lex: java.lang.String input> = r3;	r0.<org.apache.ibatis.javassist.compiler.Lex: int position> = 0;	$i0 = virtualinvoke r3.<java.lang.String: int length()>();	r0.<org.apache.ibatis.javassist.compiler.Lex: int maxlen> = $i0;	r0.<org.apache.ibatis.javassist.compiler.Lex: int lineNumber> = 0;	return
;block_num 1