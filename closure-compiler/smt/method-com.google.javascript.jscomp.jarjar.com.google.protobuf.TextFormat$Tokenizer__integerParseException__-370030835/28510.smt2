(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2850 0)
(declare-sort var3006 0)
(declare-sort var1035 0)
(declare-sort var131 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getMessage/849299655 (var1035) String)
(declare-fun cast-from-var3006-to-var1035 (var3006) var1035)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun parseException/-1701408207 (var2850 String) var131)
(declare-const null-var2850 var2850)
(declare-const null-var3006 var3006)
(declare-const var3098 var2850) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer 
(assert (not (= var3098 null-var2850)))
(declare-const var391 var3006) ; Statement: r2 := @parameter0: java.lang.NumberFormatException 
(assert (not (= var391 null-var3006)))
(define-const var1996 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1996)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1996!1 String)
(assert (= var1996!1 ""))
(assert true)
(define-const var3716 String (append/672562846 var1996!1 "Couldn\u0027t parse integer: ")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Couldn\'t parse integer: ") 
(declare-const var1996!2 String)
(assert (= var1996!2 (str.++ var1996!1 "Couldn\u0027t parse integer: ")))
(assert true)
(define-const var1404 String (getMessage/849299655 (cast-from-var3006-to-var1035 var391))) ; Statement: $r3 = virtualinvoke r2.<java.lang.NumberFormatException: java.lang.String getMessage()>() 
(assert true)
(define-const var2550 String (append/672562846 var3716 var1404)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3716!1 String)
(assert (= var3716!1 (str.++ var3716 var1404)))
(assert true)
(define-const var3900 String (toString/-2075883882 var2550)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var1751 var131 (parseException/-1701408207 var3098 var3900)) ; Statement: $r7 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$ParseException parseException(java.lang.String)>($r6) 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var3006-to-var1035=([java.lang.NumberFormatException], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), parseException/-1701408207=([com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer, java.lang.String], com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$ParseException)}
; {var2850=com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer, var3098=r0, var3006=java.lang.NumberFormatException, var391=r2, var1996=$r1, var3716=$r4, var1035=java.lang.Throwable, var1404=$r3, var2550=$r5, var3900=$r6, var131=com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$ParseException, var1751=$r7}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer=var2850, r0=var3098, java.lang.NumberFormatException=var3006, r2=var391, $r1=var1996, $r4=var3716, java.lang.Throwable=var1035, $r3=var1404, $r5=var2550, $r6=var3900, com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$ParseException=var131, $r7=var1751}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer;	r2 := @parameter0: java.lang.NumberFormatException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Couldn\'t parse integer: ");	$r3 = virtualinvoke r2.<java.lang.NumberFormatException: java.lang.String getMessage()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r7 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$ParseException parseException(java.lang.String)>($r6);	return $r7
;block_num 1