(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1232 0)
(declare-sort var1076 0)
(declare-sort var2738 0)
(declare-sort var3970 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getMessage/849299655 (var2738) String)
(declare-fun cast-from-var1076-to-var2738 (var1076) var2738)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun parseException/-1701408207 (var1232 String) var3970)
(declare-const null-var1232 var1232)
(declare-const null-var1076 var1076)
(declare-const var2368 var1232) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer 
(assert (not (= var2368 null-var1232)))
(declare-const var152 var1076) ; Statement: r2 := @parameter0: java.lang.NumberFormatException 
(assert (not (= var152 null-var1076)))
(define-const var3694 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3694)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3694!1 String)
(assert (= var3694!1 ""))
(assert true)
(define-const var574 String (append/672562846 var3694!1 "Couldn\u0027t parse number: ")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Couldn\'t parse number: ") 
(declare-const var3694!2 String)
(assert (= var3694!2 (str.++ var3694!1 "Couldn\u0027t parse number: ")))
(assert true)
(define-const var3605 String (getMessage/849299655 (cast-from-var1076-to-var2738 var152))) ; Statement: $r3 = virtualinvoke r2.<java.lang.NumberFormatException: java.lang.String getMessage()>() 
(assert true)
(define-const var2764 String (append/672562846 var574 var3605)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var574!1 String)
(assert (= var574!1 (str.++ var574 var3605)))
(assert true)
(define-const var1030 String (toString/-2075883882 var2764)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var2018 var3970 (parseException/-1701408207 var2368 var1030)) ; Statement: $r7 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$ParseException parseException(java.lang.String)>($r6) 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var1076-to-var2738=([java.lang.NumberFormatException], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), parseException/-1701408207=([com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer, java.lang.String], com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$ParseException)}
; {var1232=com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer, var2368=r0, var1076=java.lang.NumberFormatException, var152=r2, var3694=$r1, var574=$r4, var2738=java.lang.Throwable, var3605=$r3, var2764=$r5, var1030=$r6, var3970=com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$ParseException, var2018=$r7}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer=var1232, r0=var2368, java.lang.NumberFormatException=var1076, r2=var152, $r1=var3694, $r4=var574, java.lang.Throwable=var2738, $r3=var3605, $r5=var2764, $r6=var1030, com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$ParseException=var3970, $r7=var2018}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer;	r2 := @parameter0: java.lang.NumberFormatException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Couldn\'t parse number: ");	$r3 = virtualinvoke r2.<java.lang.NumberFormatException: java.lang.String getMessage()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r7 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$ParseException parseException(java.lang.String)>($r6);	return $r7
;block_num 1