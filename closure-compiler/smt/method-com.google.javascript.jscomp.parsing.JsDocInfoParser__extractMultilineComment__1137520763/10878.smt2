(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2694 0)
(declare-sort var3666 0)
(declare-sort var2619 0)
(declare-sort var149 0)
(declare-sort var723 0)
(declare-sort var2734 0)
(declare-sort var668 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun ordinal/-291641772 (var723) Int)
(declare-fun cast-from-var3666-to-var723 (var3666) var723)
(declare-fun state/764557185 (var2694) var2734)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var668-init () var668)
(declare-fun <init>/581773183 (var668 String var3666) void)
(declare-const null-var2694 var2694)
(declare-const null-var3666 var3666)
(declare-const null-var2619 var2619)
(declare-const null-Bool Bool)
(declare-const var149-$SwitchMap$com$google$javascript$jscomp$parsing$JsDocToken (Array Int Int))
(declare-const var2734-SEARCHING_ANNOTATION var2734)
(declare-const var3666-EOC var3666)
(declare-const var2619-PRESERVE var2619)
(declare-const var2801 var2694) ; Statement: r1 := @this: com.google.javascript.jscomp.parsing.JsDocInfoParser 
(assert (not (= var2801 null-var2694)))
(declare-const var1076 var3666) ; Statement: r21 := @parameter0: com.google.javascript.jscomp.parsing.JsDocToken 
(assert (not (= var1076 null-var3666)))
(declare-const var1441 var2619) ; Statement: r2 := @parameter1: com.google.javascript.jscomp.parsing.JsDocInfoParser$WhitespaceOption 
(assert (not (= var1441 null-var2619)))
(declare-const var1300 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var1300 null-Bool)))
(declare-const var3356 Bool) ; Statement: z2 := @parameter3: boolean 
(assert (not (= var3356 null-Bool)))
(define-const var2601 String String-init) ; Statement: $r30 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2601)) ; Statement: specialinvoke $r30.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2601!1 String)
(assert (= var2601!1 ""))
(define-const var3123 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i10 = (int) -1 
(define-const var2581 Int var3123) ; Statement: i4 = $i10 
(define-const var1651 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i12 = (int) -1 
(define-const var2932 Int var1651) ; Statement: i5 = $i12 
 ; Statement: if z0 == 0 goto z3 = 0 
(assert (= (ite var1300 1 0) 0)) ; Cond: z0 == 0 
(define-const var1154 Bool (ite (= 1 0) true false)) ; Statement: z3 = 0 
(define-const var1065 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i14 = (int) -1 
(define-const var2823 Int var1065) ; Statement: i6 = $i14 
(assert true) ; Non Conditional
(define-const var1432 (Array Int Int) var149-$SwitchMap$com$google$javascript$jscomp$parsing$JsDocToken) ; Statement: $r23 = <com.google.javascript.jscomp.parsing.JsDocInfoParser$1: int[] $SwitchMap$com$google$javascript$jscomp$parsing$JsDocToken> 
(assert true)
(define-const var3632 Int (ordinal/-291641772 (cast-from-var3666-to-var723 var1076))) ; Statement: $i7 = virtualinvoke r21.<com.google.javascript.jscomp.parsing.JsDocToken: int ordinal()>() 
(define-const var228 Int (select var1432 var3632)) ; Statement: $i8 = $r23[$i7] 
 ; Statement: lookupswitch($i8) {     case 4: goto $r4 = <com.google.javascript.jscomp.parsing.JsDocInfoParser$WhitespaceOption: com.google.javascript.jscomp.parsing.JsDocInfoParser$WhitespaceOption SINGLE_LINE>;     case 18: goto if z3 == 0 goto virtualinvoke r1.<com.google.javascript.jscomp.parsing.JsDocInfoParser: void padLine(java.lang.StringBuilder,int,com.google.javascript.jscomp.parsing.JsDocInfoParser$WhitespaceOption)>($r30, i6, r2);     default: goto z3 = 0; } 
(assert (and (not (= var228 18)) (and (not (= var228 4)) true))) ; Intersect: Negate: Cond: $i8 == 18   and Intersect: Negate: Cond: $i8 == 4   and Non Conditional  
(define-const var1154!1 Bool (ite (= 1 0) true false)) ; Statement: z3 = 0 
(define-const var589 var2734 var2734-SEARCHING_ANNOTATION) ; Statement: $r5 = <com.google.javascript.jscomp.parsing.JsDocInfoParser$State: com.google.javascript.jscomp.parsing.JsDocInfoParser$State SEARCHING_ANNOTATION> 
(declare-const var2801!1 var2694)
(assert (not (= var2801!1 null-var2694)))
(assert (= (state/764557185 var2801!1) var589)) ; Statement: r1.<com.google.javascript.jscomp.parsing.JsDocInfoParser: com.google.javascript.jscomp.parsing.JsDocInfoParser$State state> = $r5 
(define-const var10 var3666 var3666-EOC) ; Statement: $r6 = <com.google.javascript.jscomp.parsing.JsDocToken: com.google.javascript.jscomp.parsing.JsDocToken EOC> 
 ; Statement: if r21 != $r6 goto $z4 = 0 
(assert (not (= var1076 var10))) ; Cond: r21 != $r6 
(define-const var2045 Bool (ite (= 1 0) true false)) ; Statement: $z4 = 0 
(assert true) ; Non Conditional
 ; Statement: if $z4 != 0 goto $r7 = <com.google.javascript.jscomp.parsing.JsDocToken: com.google.javascript.jscomp.parsing.JsDocToken EOC> 
(assert (not (= (ite var2045 1 0) 0))) ; Cond: $z4 != 0 
(define-const var3176 var3666 var3666-EOC) ; Statement: $r7 = <com.google.javascript.jscomp.parsing.JsDocToken: com.google.javascript.jscomp.parsing.JsDocToken EOC> 
 ; Statement: if r21 == $r7 goto $r25 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= var1076 var3176)) ; Cond: r21 == $r7 
(assert true)
(define-const var98 String (toString/-2075883882 var2601!1)) ; Statement: $r25 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var44 String var98) ; Statement: r26 = $r25 
(define-const var2173 var2619 var2619-PRESERVE) ; Statement: $r27 = <com.google.javascript.jscomp.parsing.JsDocInfoParser$WhitespaceOption: com.google.javascript.jscomp.parsing.JsDocInfoParser$WhitespaceOption PRESERVE> 
 ; Statement: if r2 == $r27 goto (branch) 
(assert (= var1441 var2173)) ; Cond: r2 == $r27 
 ; Statement: if z0 == 0 goto $r31 = new com.google.javascript.jscomp.parsing.JsDocInfoParser$ExtractionInfo 
(assert (= (ite var1300 1 0) 0)) ; Cond: z0 == 0 
(define-const var2288 var668 var668-init) ; Statement: $r31 = new com.google.javascript.jscomp.parsing.JsDocInfoParser$ExtractionInfo 
(assert true)
;(assert (<init>/581773183 var2288 var44 var1076)) ; Statement: specialinvoke $r31.<com.google.javascript.jscomp.parsing.JsDocInfoParser$ExtractionInfo: void <init>(java.lang.String,com.google.javascript.jscomp.parsing.JsDocToken)>(r26, r21) 

(declare-const var2288!1 var668)
(declare-const var44!1 String)
(declare-const var1076!1 var3666)
 ; Statement: return $r31 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), cast-from-Int-to-Int=([int], int), ordinal/-291641772=([java.lang.Enum], int), cast-from-var3666-to-var723=([com.google.javascript.jscomp.parsing.JsDocToken], java.lang.Enum), state/764557185=([com.google.javascript.jscomp.parsing.JsDocInfoParser], com.google.javascript.jscomp.parsing.JsDocInfoParser$State), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var668-init=([], com.google.javascript.jscomp.parsing.JsDocInfoParser$ExtractionInfo), <init>/581773183=([com.google.javascript.jscomp.parsing.JsDocInfoParser$ExtractionInfo, java.lang.String, com.google.javascript.jscomp.parsing.JsDocToken], void)}
; {var2694=com.google.javascript.jscomp.parsing.JsDocInfoParser, var2801=r1, var3666=com.google.javascript.jscomp.parsing.JsDocToken, var1076=r21, var2619=com.google.javascript.jscomp.parsing.JsDocInfoParser$WhitespaceOption, var1441=r2, var1300=z0, var3356=z2, var2601=$r30, var3123=$i10, var2581=i4, var1651=$i12, var2932=i5, var1154=z3, var1065=$i14, var2823=i6, var149=com.google.javascript.jscomp.parsing.JsDocInfoParser$1, var1432=$r23, var723=java.lang.Enum, var3632=$i7, var228=$i8, var2734=com.google.javascript.jscomp.parsing.JsDocInfoParser$State, var589=$r5, var10=$r6, var2045=$z4, var3176=$r7, var98=$r25, var44=r26, var2173=$r27, var668=com.google.javascript.jscomp.parsing.JsDocInfoParser$ExtractionInfo, var2288=$r31}
; {com.google.javascript.jscomp.parsing.JsDocInfoParser=var2694, r1=var2801, com.google.javascript.jscomp.parsing.JsDocToken=var3666, r21=var1076, com.google.javascript.jscomp.parsing.JsDocInfoParser$WhitespaceOption=var2619, r2=var1441, z0=var1300, z2=var3356, $r30=var2601, $i10=var3123, i4=var2581, $i12=var1651, i5=var2932, z3=var1154, $i14=var1065, i6=var2823, com.google.javascript.jscomp.parsing.JsDocInfoParser$1=var149, $r23=var1432, java.lang.Enum=var723, $i7=var3632, $i8=var228, com.google.javascript.jscomp.parsing.JsDocInfoParser$State=var2734, $r5=var589, $r6=var10, $z4=var2045, $r7=var3176, $r25=var98, r26=var44, $r27=var2173, com.google.javascript.jscomp.parsing.JsDocInfoParser$ExtractionInfo=var668, $r31=var2288}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.parsing.JsDocInfoParser;	r21 := @parameter0: com.google.javascript.jscomp.parsing.JsDocToken;	r2 := @parameter1: com.google.javascript.jscomp.parsing.JsDocInfoParser$WhitespaceOption;	z0 := @parameter2: boolean;	z2 := @parameter3: boolean;	$r30 = new java.lang.StringBuilder;	specialinvoke $r30.<java.lang.StringBuilder: void <init>()>();	$i10 = (int) -1;	i4 = $i10;	$i12 = (int) -1;	i5 = $i12;	if z0 == 0 goto z3 = 0;	z3 = 0;	$i14 = (int) -1;	i6 = $i14;	$r23 = <com.google.javascript.jscomp.parsing.JsDocInfoParser$1: int[] $SwitchMap$com$google$javascript$jscomp$parsing$JsDocToken>;	$i7 = virtualinvoke r21.<com.google.javascript.jscomp.parsing.JsDocToken: int ordinal()>();	$i8 = $r23[$i7];	lookupswitch($i8) {     case 4: goto $r4 = <com.google.javascript.jscomp.parsing.JsDocInfoParser$WhitespaceOption: com.google.javascript.jscomp.parsing.JsDocInfoParser$WhitespaceOption SINGLE_LINE>;     case 18: goto if z3 == 0 goto virtualinvoke r1.<com.google.javascript.jscomp.parsing.JsDocInfoParser: void padLine(java.lang.StringBuilder,int,com.google.javascript.jscomp.parsing.JsDocInfoParser$WhitespaceOption)>($r30, i6, r2);     default: goto z3 = 0; };	z3 = 0;	$r5 = <com.google.javascript.jscomp.parsing.JsDocInfoParser$State: com.google.javascript.jscomp.parsing.JsDocInfoParser$State SEARCHING_ANNOTATION>;	r1.<com.google.javascript.jscomp.parsing.JsDocInfoParser: com.google.javascript.jscomp.parsing.JsDocInfoParser$State state> = $r5;	$r6 = <com.google.javascript.jscomp.parsing.JsDocToken: com.google.javascript.jscomp.parsing.JsDocToken EOC>;	if r21 != $r6 goto $z4 = 0;	$z4 = 0;	if $z4 != 0 goto $r7 = <com.google.javascript.jscomp.parsing.JsDocToken: com.google.javascript.jscomp.parsing.JsDocToken EOC>;	$r7 = <com.google.javascript.jscomp.parsing.JsDocToken: com.google.javascript.jscomp.parsing.JsDocToken EOC>;	if r21 == $r7 goto $r25 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.String toString()>();	$r25 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.String toString()>();	r26 = $r25;	$r27 = <com.google.javascript.jscomp.parsing.JsDocInfoParser$WhitespaceOption: com.google.javascript.jscomp.parsing.JsDocInfoParser$WhitespaceOption PRESERVE>;	if r2 == $r27 goto (branch);	if z0 == 0 goto $r31 = new com.google.javascript.jscomp.parsing.JsDocInfoParser$ExtractionInfo;	$r31 = new com.google.javascript.jscomp.parsing.JsDocInfoParser$ExtractionInfo;	specialinvoke $r31.<com.google.javascript.jscomp.parsing.JsDocInfoParser$ExtractionInfo: void <init>(java.lang.String,com.google.javascript.jscomp.parsing.JsDocToken)>(r26, r21);	return $r31
;block_num 10