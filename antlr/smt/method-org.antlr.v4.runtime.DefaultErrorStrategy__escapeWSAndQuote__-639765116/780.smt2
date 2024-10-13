(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1893 0)
(declare-sort var3669 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun replace/2138489945 ((s String) (old String) (new String)) String (str.replace_all s old new))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1893 var1893)
(declare-const null-String String)
(declare-const var2369 var1893) ; Statement: r5 := @this: org.antlr.v4.runtime.DefaultErrorStrategy 
(assert (not (= var2369 null-var1893)))
(declare-const var536 String) ; Statement: r6 := @parameter0: java.lang.String 
(assert (not (= var536 null-String)))
(assert true)
(define-const var1050 String (replace/2138489945 var536 (cast-from-String-to-String "\n") (cast-from-String-to-String "\u005cn"))) ; Statement: r7 = virtualinvoke r6.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("\n", "\\n") 
(assert true)
(define-const var1771 String (replace/2138489945 var1050 (cast-from-String-to-String "\r") (cast-from-String-to-String "\u005cr"))) ; Statement: r8 = virtualinvoke r7.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("\r", "\\r") 
(assert true)
(define-const var2174 String (replace/2138489945 var1771 (cast-from-String-to-String "\t") (cast-from-String-to-String "\u005ct"))) ; Statement: r9 = virtualinvoke r8.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("\t", "\\t") 
(define-const var2602 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2602)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2602!1 String)
(assert (= var2602!1 ""))
(assert true)
(define-const var3659 String (append/672562846 var2602!1 "\u0027")) ; Statement: $r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var2602!2 String)
(assert (= var2602!2 (str.++ var2602!1 "\u0027")))
(assert true)
(define-const var1622 String (append/672562846 var3659 var2174)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r9) 
(declare-const var3659!1 String)
(assert (= var3659!1 (str.++ var3659 var2174)))
(assert true)
(define-const var1397 String (append/672562846 var1622 "\u0027")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var1622!1 String)
(assert (= var1622!1 (str.++ var1622 "\u0027")))
(assert true)
(define-const var3054 String (toString/-2075883882 var1397)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {replace/2138489945=([java.lang.String, java.lang.CharSequence, java.lang.CharSequence], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1893=org.antlr.v4.runtime.DefaultErrorStrategy, var2369=r5, var536=r6, var3669=null_type, var1050=r7, var1771=r8, var2174=r9, var2602=$r0, var3659=$r1, var1622=$r2, var1397=$r3, var3054=$r4}
; {org.antlr.v4.runtime.DefaultErrorStrategy=var1893, r5=var2369, r6=var536, null_type=var3669, r7=var1050, r8=var1771, r9=var2174, $r0=var2602, $r1=var3659, $r2=var1622, $r3=var1397, $r4=var3054}
;seq <java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>;	<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>;	<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>": 3,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.antlr.v4.runtime.DefaultErrorStrategy;	r6 := @parameter0: java.lang.String;	r7 = virtualinvoke r6.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("\n", "\\n");	r8 = virtualinvoke r7.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("\r", "\\r");	r9 = virtualinvoke r8.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("\t", "\\t");	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r9);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 1