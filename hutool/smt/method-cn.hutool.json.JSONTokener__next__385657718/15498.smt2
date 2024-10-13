(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2024 0)
(declare-sort var3424 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun next/-1212382432 (var2024) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun syntaxError/603127542 (var2024 String) var3424)
(declare-const null-var2024 var2024)
(declare-const null-Int Int)
(declare-const var557 var2024) ; Statement: r0 := @this: cn.hutool.json.JSONTokener 
(assert (not (= var557 null-var2024)))
(declare-const var3500 Int) ; Statement: c1 := @parameter0: char 
(assert (not (= var3500 null-Int)))
(assert true)
(define-const var2870 Int (next/-1212382432 var557)) ; Statement: c0 = virtualinvoke r0.<cn.hutool.json.JSONTokener: char next()>() 
(define-const var2834 Int (cast-from-Int-to-Int var2870)) ; Statement: $i2 = (int) c0 
(define-const var3712 Int (cast-from-Int-to-Int var3500)) ; Statement: $i3 = (int) c1 
 ; Statement: if $i2 == $i3 goto return c0 
(assert (not (= var2834 var3712))) ; Negate: Cond: $i2 == $i3  
(define-const var2357 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2357)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2357!1 String)
(assert (= var2357!1 ""))
(assert true)
(define-const var2360 String (append/672562846 var2357!1 "Expected \u0027")) ; Statement: $r2 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Expected \'") 
(declare-const var2357!2 String)
(assert (= var2357!2 (str.++ var2357!1 "Expected \u0027")))
(assert true)
(define-const var90 String (append/-1166366385 var2360 var3500)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c1) 
(declare-const var2360!1 String)
(assert (str.prefixof var2360 var2360!1))
(assert true)
(define-const var2974 String (append/672562846 var90 "\u0027 and instead saw \u0027")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' and instead saw \'") 
(declare-const var90!1 String)
(assert (= var90!1 (str.++ var90 "\u0027 and instead saw \u0027")))
(assert true)
(define-const var30 String (append/-1166366385 var2974 var2870)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c0) 
(declare-const var2974!1 String)
(assert (str.prefixof var2974 var2974!1))
(assert true)
(define-const var3459 String (append/672562846 var30 "\u0027")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var30!1 String)
(assert (= var30!1 (str.++ var30 "\u0027")))
(assert true)
(define-const var2971 String (toString/-2075883882 var3459)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var1038 var3424 (syntaxError/603127542 var557 var2971)) ; Statement: $r8 = virtualinvoke r0.<cn.hutool.json.JSONTokener: cn.hutool.json.JSONException syntaxError(java.lang.String)>($r7) 
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {next/-1212382432=([cn.hutool.json.JSONTokener], char), cast-from-Int-to-Int=([char], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), syntaxError/603127542=([cn.hutool.json.JSONTokener, java.lang.String], cn.hutool.json.JSONException)}
; {var2024=cn.hutool.json.JSONTokener, var557=r0, var3500=c1, var2870=c0, var2834=$i2, var3712=$i3, var2357=$r9, var2360=$r2, var90=$r3, var2974=$r4, var30=$r5, var3459=$r6, var2971=$r7, var3424=cn.hutool.json.JSONException, var1038=$r8}
; {cn.hutool.json.JSONTokener=var2024, r0=var557, c1=var3500, c0=var2870, $i2=var2834, $i3=var3712, $r9=var2357, $r2=var2360, $r3=var90, $r4=var2974, $r5=var30, $r6=var3459, $r7=var2971, cn.hutool.json.JSONException=var3424, $r8=var1038}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: cn.hutool.json.JSONTokener;	c1 := @parameter0: char;	c0 = virtualinvoke r0.<cn.hutool.json.JSONTokener: char next()>();	$i2 = (int) c0;	$i3 = (int) c1;	if $i2 == $i3 goto return c0;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Expected \'");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' and instead saw \'");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = virtualinvoke r0.<cn.hutool.json.JSONTokener: cn.hutool.json.JSONException syntaxError(java.lang.String)>($r7);	throw $r8
;block_num 2