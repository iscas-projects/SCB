(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var332 0)
(declare-sort var3964 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun replace/2138489945 ((s String) (old String) (new String)) String (str.replace_all s old new))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var332 var332)
(declare-const null-String String)
(declare-const var3770 var332) ; Statement: r5 := @this: com.github.jknack.handlebars.internal.antlr.DefaultErrorStrategy 
(assert (not (= var3770 null-var332)))
(declare-const var1463 String) ; Statement: r6 := @parameter0: java.lang.String 
(assert (not (= var1463 null-String)))
(assert true)
(define-const var2003 String (replace/2138489945 var1463 (cast-from-String-to-String "\n") (cast-from-String-to-String "\u005cn"))) ; Statement: r7 = virtualinvoke r6.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("\n", "\\n") 
(assert true)
(define-const var1668 String (replace/2138489945 var2003 (cast-from-String-to-String "\r") (cast-from-String-to-String "\u005cr"))) ; Statement: r8 = virtualinvoke r7.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("\r", "\\r") 
(assert true)
(define-const var1587 String (replace/2138489945 var1668 (cast-from-String-to-String "\t") (cast-from-String-to-String "\u005ct"))) ; Statement: r9 = virtualinvoke r8.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("\t", "\\t") 
(define-const var2297 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2297)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2297!1 String)
(assert (= var2297!1 ""))
(assert true)
(define-const var3746 String (append/672562846 var2297!1 "\u0027")) ; Statement: $r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var2297!2 String)
(assert (= var2297!2 (str.++ var2297!1 "\u0027")))
(assert true)
(define-const var1408 String (append/672562846 var3746 var1587)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r9) 
(declare-const var3746!1 String)
(assert (= var3746!1 (str.++ var3746 var1587)))
(assert true)
(define-const var3655 String (append/672562846 var1408 "\u0027")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var1408!1 String)
(assert (= var1408!1 (str.++ var1408 "\u0027")))
(assert true)
(define-const var2248 String (toString/-2075883882 var3655)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {replace/2138489945=([java.lang.String, java.lang.CharSequence, java.lang.CharSequence], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var332=com.github.jknack.handlebars.internal.antlr.DefaultErrorStrategy, var3770=r5, var1463=r6, var3964=null_type, var2003=r7, var1668=r8, var1587=r9, var2297=$r0, var3746=$r1, var1408=$r2, var3655=$r3, var2248=$r4}
; {com.github.jknack.handlebars.internal.antlr.DefaultErrorStrategy=var332, r5=var3770, r6=var1463, null_type=var3964, r7=var2003, r8=var1668, r9=var1587, $r0=var2297, $r1=var3746, $r2=var1408, $r3=var3655, $r4=var2248}
;seq <java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>;	<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>;	<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>": 3,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: com.github.jknack.handlebars.internal.antlr.DefaultErrorStrategy;	r6 := @parameter0: java.lang.String;	r7 = virtualinvoke r6.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("\n", "\\n");	r8 = virtualinvoke r7.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("\r", "\\r");	r9 = virtualinvoke r8.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("\t", "\\t");	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r9);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 1