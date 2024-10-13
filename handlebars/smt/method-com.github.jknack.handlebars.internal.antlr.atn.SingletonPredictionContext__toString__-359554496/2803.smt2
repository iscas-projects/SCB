(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2033 0)
(declare-sort var983 0)
(declare-sort var2263 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun parent/1898692008 (var2033) var983)
(declare-fun toString/-522406933 (var2263) String)
(declare-fun cast-from-var983-to-var2263 (var983) var2263)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun returnState/1898692008 (var2033) Int)
(declare-fun String_valueOf/1240665136 (Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2033 var2033)
(declare-const null-var983 var983)
(declare-const var2979 var2033) ; Statement: r0 := @this: com.github.jknack.handlebars.internal.antlr.atn.SingletonPredictionContext 
(assert (not (= var2979 null-var2033)))
(define-const var1135 var983 (parent/1898692008 var2979)) ; Statement: $r1 = r0.<com.github.jknack.handlebars.internal.antlr.atn.SingletonPredictionContext: com.github.jknack.handlebars.internal.antlr.atn.PredictionContext parent> 
 ; Statement: if $r1 == null goto $r10 = "" 
(assert (not (= var1135 null-var983))) ; Negate: Cond: $r1 == null  
(define-const var3766 var983 (parent/1898692008 var2979)) ; Statement: $r9 = r0.<com.github.jknack.handlebars.internal.antlr.atn.SingletonPredictionContext: com.github.jknack.handlebars.internal.antlr.atn.PredictionContext parent> 
(assert true)
(define-const var2666 String (toString/-522406933 (cast-from-var983-to-var2263 var3766))) ; Statement: $r10 = virtualinvoke $r9.<java.lang.Object: java.lang.String toString()>() 
 ; Statement: goto [?= $i0 = virtualinvoke $r10.<java.lang.String: int length()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var947 Int (length/-134980193 var2666)) ; Statement: $i0 = virtualinvoke $r10.<java.lang.String: int length()>() 
 ; Statement: if $i0 != 0 goto $r2 = new java.lang.StringBuilder 
(assert (not (= var947 0))) ; Cond: $i0 != 0 
(define-const var1576 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1576)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1576!1 String)
(assert (= var1576!1 ""))
(define-const var3021 Int (returnState/1898692008 var2979)) ; Statement: $i1 = r0.<com.github.jknack.handlebars.internal.antlr.atn.SingletonPredictionContext: int returnState> 
(define-const var3732 String (String_valueOf/1240665136 var3021)) ; Statement: $r3 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i1) 
(assert true)
(define-const var413 String (append/672562846 var1576!1 var3732)) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1576!2 String)
(assert (= var1576!2 (str.++ var1576!1 var3732)))
(assert true)
(define-const var2231 String (append/672562846 var413 " ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ") 
(declare-const var413!1 String)
(assert (= var413!1 (str.++ var413 " ")))
(assert true)
(define-const var70 String (append/672562846 var2231 var2666)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var2231!1 String)
(assert (= var2231!1 (str.++ var2231 var2666)))
(assert true)
(define-const var3486 String (toString/-2075883882 var70)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {parent/1898692008=([com.github.jknack.handlebars.internal.antlr.atn.SingletonPredictionContext], com.github.jknack.handlebars.internal.antlr.atn.PredictionContext), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-var983-to-var2263=([com.github.jknack.handlebars.internal.antlr.atn.PredictionContext], java.lang.Object), length/-134980193=([java.lang.String], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), returnState/1898692008=([com.github.jknack.handlebars.internal.antlr.atn.SingletonPredictionContext], int), String_valueOf/1240665136=([int], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2033=com.github.jknack.handlebars.internal.antlr.atn.SingletonPredictionContext, var2979=r0, var983=com.github.jknack.handlebars.internal.antlr.atn.PredictionContext, var1135=$r1, var3766=$r9, var2263=java.lang.Object, var2666=$r10, var947=$i0, var1576=$r2, var3021=$i1, var3732=$r3, var413=$r4, var2231=$r5, var70=$r6, var3486=$r7}
; {com.github.jknack.handlebars.internal.antlr.atn.SingletonPredictionContext=var2033, r0=var2979, com.github.jknack.handlebars.internal.antlr.atn.PredictionContext=var983, $r1=var1135, $r9=var3766, java.lang.Object=var2263, $r10=var2666, $i0=var947, $r2=var1576, $i1=var3021, $r3=var3732, $r4=var413, $r5=var2231, $r6=var70, $r7=var3486}
;seq <java.lang.Object: java.lang.String toString()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.String: java.lang.String valueOf(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: java.lang.String valueOf(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.github.jknack.handlebars.internal.antlr.atn.SingletonPredictionContext;	$r1 = r0.<com.github.jknack.handlebars.internal.antlr.atn.SingletonPredictionContext: com.github.jknack.handlebars.internal.antlr.atn.PredictionContext parent>;	if $r1 == null goto $r10 = "";	$r9 = r0.<com.github.jknack.handlebars.internal.antlr.atn.SingletonPredictionContext: com.github.jknack.handlebars.internal.antlr.atn.PredictionContext parent>;	$r10 = virtualinvoke $r9.<java.lang.Object: java.lang.String toString()>();	goto [?= $i0 = virtualinvoke $r10.<java.lang.String: int length()>()];	$i0 = virtualinvoke $r10.<java.lang.String: int length()>();	if $i0 != 0 goto $r2 = new java.lang.StringBuilder;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$i1 = r0.<com.github.jknack.handlebars.internal.antlr.atn.SingletonPredictionContext: int returnState>;	$r3 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i1);	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 4