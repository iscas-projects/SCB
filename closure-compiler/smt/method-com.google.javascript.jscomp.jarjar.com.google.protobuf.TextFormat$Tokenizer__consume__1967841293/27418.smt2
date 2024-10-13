(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1692 0)
(declare-sort var696 0)
(declare-sort var3148 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun tryConsume/-1518956060 (var1692 String) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun parseException/-1701408207 (var1692 String) var3148)
(declare-const null-var1692 var1692)
(declare-const null-String String)
(declare-const var3302 var1692) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer 
(assert (not (= var3302 null-var1692)))
(declare-const var2518 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2518 null-String)))
(assert true)
(define-const var1293 Bool (tryConsume/-1518956060 var3302 var2518)) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: boolean tryConsume(java.lang.String)>(r1) 
 ; Statement: if $z0 != 0 goto return 
(assert (not (not (= (ite var1293 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var3283 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3283)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3283!1 String)
(assert (= var3283!1 ""))
(assert true)
(define-const var3303 String (append/672562846 var3283!1 "Expected \u0022")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Expected \"") 
(declare-const var3283!2 String)
(assert (= var3283!2 (str.++ var3283!1 "Expected \u0022")))
(assert true)
(define-const var1881 String (append/672562846 var3303 var2518)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3303!1 String)
(assert (= var3303!1 (str.++ var3303 var2518)))
(assert true)
(define-const var2628 String (append/672562846 var1881 "\u0022.")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\".") 
(declare-const var1881!1 String)
(assert (= var1881!1 (str.++ var1881 "\u0022.")))
(assert true)
(define-const var1743 String (toString/-2075883882 var2628)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var1033 var3148 (parseException/-1701408207 var3302 var1743)) ; Statement: $r7 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$ParseException parseException(java.lang.String)>($r6) 
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {tryConsume/-1518956060=([com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer, java.lang.String], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), parseException/-1701408207=([com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer, java.lang.String], com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$ParseException)}
; {var1692=com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer, var3302=r0, var2518=r1, var696=null_type, var1293=$z0, var3283=$r2, var3303=$r3, var1881=$r4, var2628=$r5, var1743=$r6, var3148=com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$ParseException, var1033=$r7}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer=var1692, r0=var3302, r1=var2518, null_type=var696, $z0=var1293, $r2=var3283, $r3=var3303, $r4=var1881, $r5=var2628, $r6=var1743, com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$ParseException=var3148, $r7=var1033}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer;	r1 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: boolean tryConsume(java.lang.String)>(r1);	if $z0 != 0 goto return;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Expected \"");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\".");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r7 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$Tokenizer: com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormat$ParseException parseException(java.lang.String)>($r6);	throw $r7
;block_num 2