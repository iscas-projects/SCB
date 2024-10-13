(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3095 0)
(declare-sort var2965 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun parent/1898692008 (var3095) var2965)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun returnState/1898692008 (var3095) Int)
(declare-fun String_valueOf/1240665136 (Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3095 var3095)
(declare-const null-var2965 var2965)
(declare-const var3449 var3095) ; Statement: r0 := @this: com.github.jknack.handlebars.internal.antlr.atn.SingletonPredictionContext 
(assert (not (= var3449 null-var3095)))
(define-const var1355 var2965 (parent/1898692008 var3449)) ; Statement: $r1 = r0.<com.github.jknack.handlebars.internal.antlr.atn.SingletonPredictionContext: com.github.jknack.handlebars.internal.antlr.atn.PredictionContext parent> 
 ; Statement: if $r1 == null goto $r10 = "" 
(assert (= var1355 null-var2965)) ; Cond: $r1 == null 
(define-const var3502 String "") ; Statement: $r10 = "" 
(assert true) ; Non Conditional
(assert true)
(define-const var72 Int (length/-134980193 var3502)) ; Statement: $i0 = virtualinvoke $r10.<java.lang.String: int length()>() 
 ; Statement: if $i0 != 0 goto $r2 = new java.lang.StringBuilder 
(assert (not (= var72 0))) ; Cond: $i0 != 0 
(define-const var2832 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2832)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2832!1 String)
(assert (= var2832!1 ""))
(define-const var1721 Int (returnState/1898692008 var3449)) ; Statement: $i1 = r0.<com.github.jknack.handlebars.internal.antlr.atn.SingletonPredictionContext: int returnState> 
(define-const var3300 String (String_valueOf/1240665136 var1721)) ; Statement: $r3 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i1) 
(assert true)
(define-const var1207 String (append/672562846 var2832!1 var3300)) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2832!2 String)
(assert (= var2832!2 (str.++ var2832!1 var3300)))
(assert true)
(define-const var238 String (append/672562846 var1207 " ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ") 
(declare-const var1207!1 String)
(assert (= var1207!1 (str.++ var1207 " ")))
(assert true)
(define-const var3752 String (append/672562846 var238 var3502)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var238!1 String)
(assert (= var238!1 (str.++ var238 var3502)))
(assert true)
(define-const var3594 String (toString/-2075883882 var3752)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {parent/1898692008=([com.github.jknack.handlebars.internal.antlr.atn.SingletonPredictionContext], com.github.jknack.handlebars.internal.antlr.atn.PredictionContext), length/-134980193=([java.lang.String], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), returnState/1898692008=([com.github.jknack.handlebars.internal.antlr.atn.SingletonPredictionContext], int), String_valueOf/1240665136=([int], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3095=com.github.jknack.handlebars.internal.antlr.atn.SingletonPredictionContext, var3449=r0, var2965=com.github.jknack.handlebars.internal.antlr.atn.PredictionContext, var1355=$r1, var3502=$r10, var72=$i0, var2832=$r2, var1721=$i1, var3300=$r3, var1207=$r4, var238=$r5, var3752=$r6, var3594=$r7}
; {com.github.jknack.handlebars.internal.antlr.atn.SingletonPredictionContext=var3095, r0=var3449, com.github.jknack.handlebars.internal.antlr.atn.PredictionContext=var2965, $r1=var1355, $r10=var3502, $i0=var72, $r2=var2832, $i1=var1721, $r3=var3300, $r4=var1207, $r5=var238, $r6=var3752, $r7=var3594}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.String: java.lang.String valueOf(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: java.lang.String valueOf(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.github.jknack.handlebars.internal.antlr.atn.SingletonPredictionContext;	$r1 = r0.<com.github.jknack.handlebars.internal.antlr.atn.SingletonPredictionContext: com.github.jknack.handlebars.internal.antlr.atn.PredictionContext parent>;	if $r1 == null goto $r10 = "";	$r10 = "";	$i0 = virtualinvoke $r10.<java.lang.String: int length()>();	if $i0 != 0 goto $r2 = new java.lang.StringBuilder;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$i1 = r0.<com.github.jknack.handlebars.internal.antlr.atn.SingletonPredictionContext: int returnState>;	$r3 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i1);	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 4