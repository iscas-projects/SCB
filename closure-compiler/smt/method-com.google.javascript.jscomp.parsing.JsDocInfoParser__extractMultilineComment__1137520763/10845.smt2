(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3471 0)
(declare-sort var643 0)
(declare-sort var3774 0)
(declare-sort var1570 0)
(declare-sort var3842 0)
(declare-sort var368 0)
(declare-sort var1793 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun ordinal/-291641772 (var3842) Int)
(declare-fun cast-from-var643-to-var3842 (var643) var3842)
(declare-fun state/764557185 (var3471) var368)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1793-init () var1793)
(declare-fun <init>/581773183 (var1793 String var643) void)
(declare-const null-var3471 var3471)
(declare-const null-var643 var643)
(declare-const null-var3774 var3774)
(declare-const null-Bool Bool)
(declare-const var1570-$SwitchMap$com$google$javascript$jscomp$parsing$JsDocToken (Array Int Int))
(declare-const var368-SEARCHING_ANNOTATION var368)
(declare-const var643-EOC var643)
(declare-const var3774-PRESERVE var3774)
(declare-const var635 var3471) ; Statement: r1 := @this: com.google.javascript.jscomp.parsing.JsDocInfoParser 
(assert (not (= var635 null-var3471)))
(declare-const var2418 var643) ; Statement: r21 := @parameter0: com.google.javascript.jscomp.parsing.JsDocToken 
(assert (not (= var2418 null-var643)))
(declare-const var249 var3774) ; Statement: r2 := @parameter1: com.google.javascript.jscomp.parsing.JsDocInfoParser$WhitespaceOption 
(assert (not (= var249 null-var3774)))
(declare-const var3829 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var3829 null-Bool)))
(declare-const var1321 Bool) ; Statement: z2 := @parameter3: boolean 
(assert (not (= var1321 null-Bool)))
(define-const var3201 String String-init) ; Statement: $r30 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3201)) ; Statement: specialinvoke $r30.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3201!1 String)
(assert (= var3201!1 ""))
(define-const var2560 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i10 = (int) -1 
(define-const var1962 Int var2560) ; Statement: i4 = $i10 
(define-const var3503 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i12 = (int) -1 
(define-const var3881 Int var3503) ; Statement: i5 = $i12 
 ; Statement: if z0 == 0 goto z3 = 0 
(assert (= (ite var3829 1 0) 0)) ; Cond: z0 == 0 
(define-const var818 Bool (ite (= 1 0) true false)) ; Statement: z3 = 0 
(define-const var1346 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i14 = (int) -1 
(define-const var3891 Int var1346) ; Statement: i6 = $i14 
(assert true) ; Non Conditional
(define-const var3733 (Array Int Int) var1570-$SwitchMap$com$google$javascript$jscomp$parsing$JsDocToken) ; Statement: $r23 = <com.google.javascript.jscomp.parsing.JsDocInfoParser$1: int[] $SwitchMap$com$google$javascript$jscomp$parsing$JsDocToken> 
(assert true)
(define-const var3075 Int (ordinal/-291641772 (cast-from-var643-to-var3842 var2418))) ; Statement: $i7 = virtualinvoke r21.<com.google.javascript.jscomp.parsing.JsDocToken: int ordinal()>() 
(define-const var1860 Int (select var3733 var3075)) ; Statement: $i8 = $r23[$i7] 
 ; Statement: lookupswitch($i8) {     case 4: goto $r4 = <com.google.javascript.jscomp.parsing.JsDocInfoParser$WhitespaceOption: com.google.javascript.jscomp.parsing.JsDocInfoParser$WhitespaceOption SINGLE_LINE>;     case 18: goto if z3 == 0 goto virtualinvoke r1.<com.google.javascript.jscomp.parsing.JsDocInfoParser: void padLine(java.lang.StringBuilder,int,com.google.javascript.jscomp.parsing.JsDocInfoParser$WhitespaceOption)>($r30, i6, r2);     default: goto z3 = 0; } 
(assert (and (not (= var1860 18)) (and (not (= var1860 4)) true))) ; Intersect: Negate: Cond: $i8 == 18   and Intersect: Negate: Cond: $i8 == 4   and Non Conditional  
(define-const var818!1 Bool (ite (= 1 0) true false)) ; Statement: z3 = 0 
(define-const var1052 var368 var368-SEARCHING_ANNOTATION) ; Statement: $r5 = <com.google.javascript.jscomp.parsing.JsDocInfoParser$State: com.google.javascript.jscomp.parsing.JsDocInfoParser$State SEARCHING_ANNOTATION> 
(declare-const var635!1 var3471)
(assert (not (= var635!1 null-var3471)))
(assert (= (state/764557185 var635!1) var1052)) ; Statement: r1.<com.google.javascript.jscomp.parsing.JsDocInfoParser: com.google.javascript.jscomp.parsing.JsDocInfoParser$State state> = $r5 
(define-const var1728 var643 var643-EOC) ; Statement: $r6 = <com.google.javascript.jscomp.parsing.JsDocToken: com.google.javascript.jscomp.parsing.JsDocToken EOC> 
 ; Statement: if r21 != $r6 goto $z4 = 0 
(assert (not (not (= var2418 var1728)))) ; Negate: Cond: r21 != $r6  
(define-const var2108 Bool (ite (= 1 1) true false)) ; Statement: $z4 = 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if $z4 != 0 goto $r7 = <com.google.javascript.jscomp.parsing.JsDocToken: com.google.javascript.jscomp.parsing.JsDocToken EOC> 
(assert (not (= (ite var2108 1 0) 0))) ; Cond: $z4 != 0 
(define-const var1387 var643 var643-EOC) ; Statement: $r7 = <com.google.javascript.jscomp.parsing.JsDocToken: com.google.javascript.jscomp.parsing.JsDocToken EOC> 
 ; Statement: if r21 == $r7 goto $r25 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= var2418 var1387)) ; Cond: r21 == $r7 
(assert true)
(define-const var2561 String (toString/-2075883882 var3201!1)) ; Statement: $r25 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2173 String var2561) ; Statement: r26 = $r25 
(define-const var3169 var3774 var3774-PRESERVE) ; Statement: $r27 = <com.google.javascript.jscomp.parsing.JsDocInfoParser$WhitespaceOption: com.google.javascript.jscomp.parsing.JsDocInfoParser$WhitespaceOption PRESERVE> 
 ; Statement: if r2 == $r27 goto (branch) 
(assert (= var249 var3169)) ; Cond: r2 == $r27 
 ; Statement: if z0 == 0 goto $r31 = new com.google.javascript.jscomp.parsing.JsDocInfoParser$ExtractionInfo 
(assert (= (ite var3829 1 0) 0)) ; Cond: z0 == 0 
(define-const var3932 var1793 var1793-init) ; Statement: $r31 = new com.google.javascript.jscomp.parsing.JsDocInfoParser$ExtractionInfo 
(assert true)
;(assert (<init>/581773183 var3932 var2173 var2418)) ; Statement: specialinvoke $r31.<com.google.javascript.jscomp.parsing.JsDocInfoParser$ExtractionInfo: void <init>(java.lang.String,com.google.javascript.jscomp.parsing.JsDocToken)>(r26, r21) 

(declare-const var3932!1 var1793)
(declare-const var2173!1 String)
(declare-const var2418!1 var643)
 ; Statement: return $r31 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), cast-from-Int-to-Int=([int], int), ordinal/-291641772=([java.lang.Enum], int), cast-from-var643-to-var3842=([com.google.javascript.jscomp.parsing.JsDocToken], java.lang.Enum), state/764557185=([com.google.javascript.jscomp.parsing.JsDocInfoParser], com.google.javascript.jscomp.parsing.JsDocInfoParser$State), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1793-init=([], com.google.javascript.jscomp.parsing.JsDocInfoParser$ExtractionInfo), <init>/581773183=([com.google.javascript.jscomp.parsing.JsDocInfoParser$ExtractionInfo, java.lang.String, com.google.javascript.jscomp.parsing.JsDocToken], void)}
; {var3471=com.google.javascript.jscomp.parsing.JsDocInfoParser, var635=r1, var643=com.google.javascript.jscomp.parsing.JsDocToken, var2418=r21, var3774=com.google.javascript.jscomp.parsing.JsDocInfoParser$WhitespaceOption, var249=r2, var3829=z0, var1321=z2, var3201=$r30, var2560=$i10, var1962=i4, var3503=$i12, var3881=i5, var818=z3, var1346=$i14, var3891=i6, var1570=com.google.javascript.jscomp.parsing.JsDocInfoParser$1, var3733=$r23, var3842=java.lang.Enum, var3075=$i7, var1860=$i8, var368=com.google.javascript.jscomp.parsing.JsDocInfoParser$State, var1052=$r5, var1728=$r6, var2108=$z4, var1387=$r7, var2561=$r25, var2173=r26, var3169=$r27, var1793=com.google.javascript.jscomp.parsing.JsDocInfoParser$ExtractionInfo, var3932=$r31}
; {com.google.javascript.jscomp.parsing.JsDocInfoParser=var3471, r1=var635, com.google.javascript.jscomp.parsing.JsDocToken=var643, r21=var2418, com.google.javascript.jscomp.parsing.JsDocInfoParser$WhitespaceOption=var3774, r2=var249, z0=var3829, z2=var1321, $r30=var3201, $i10=var2560, i4=var1962, $i12=var3503, i5=var3881, z3=var818, $i14=var1346, i6=var3891, com.google.javascript.jscomp.parsing.JsDocInfoParser$1=var1570, $r23=var3733, java.lang.Enum=var3842, $i7=var3075, $i8=var1860, com.google.javascript.jscomp.parsing.JsDocInfoParser$State=var368, $r5=var1052, $r6=var1728, $z4=var2108, $r7=var1387, $r25=var2561, r26=var2173, $r27=var3169, com.google.javascript.jscomp.parsing.JsDocInfoParser$ExtractionInfo=var1793, $r31=var3932}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.parsing.JsDocInfoParser;	r21 := @parameter0: com.google.javascript.jscomp.parsing.JsDocToken;	r2 := @parameter1: com.google.javascript.jscomp.parsing.JsDocInfoParser$WhitespaceOption;	z0 := @parameter2: boolean;	z2 := @parameter3: boolean;	$r30 = new java.lang.StringBuilder;	specialinvoke $r30.<java.lang.StringBuilder: void <init>()>();	$i10 = (int) -1;	i4 = $i10;	$i12 = (int) -1;	i5 = $i12;	if z0 == 0 goto z3 = 0;	z3 = 0;	$i14 = (int) -1;	i6 = $i14;	$r23 = <com.google.javascript.jscomp.parsing.JsDocInfoParser$1: int[] $SwitchMap$com$google$javascript$jscomp$parsing$JsDocToken>;	$i7 = virtualinvoke r21.<com.google.javascript.jscomp.parsing.JsDocToken: int ordinal()>();	$i8 = $r23[$i7];	lookupswitch($i8) {     case 4: goto $r4 = <com.google.javascript.jscomp.parsing.JsDocInfoParser$WhitespaceOption: com.google.javascript.jscomp.parsing.JsDocInfoParser$WhitespaceOption SINGLE_LINE>;     case 18: goto if z3 == 0 goto virtualinvoke r1.<com.google.javascript.jscomp.parsing.JsDocInfoParser: void padLine(java.lang.StringBuilder,int,com.google.javascript.jscomp.parsing.JsDocInfoParser$WhitespaceOption)>($r30, i6, r2);     default: goto z3 = 0; };	z3 = 0;	$r5 = <com.google.javascript.jscomp.parsing.JsDocInfoParser$State: com.google.javascript.jscomp.parsing.JsDocInfoParser$State SEARCHING_ANNOTATION>;	r1.<com.google.javascript.jscomp.parsing.JsDocInfoParser: com.google.javascript.jscomp.parsing.JsDocInfoParser$State state> = $r5;	$r6 = <com.google.javascript.jscomp.parsing.JsDocToken: com.google.javascript.jscomp.parsing.JsDocToken EOC>;	if r21 != $r6 goto $z4 = 0;	$z4 = 1;	goto [?= (branch)];	if $z4 != 0 goto $r7 = <com.google.javascript.jscomp.parsing.JsDocToken: com.google.javascript.jscomp.parsing.JsDocToken EOC>;	$r7 = <com.google.javascript.jscomp.parsing.JsDocToken: com.google.javascript.jscomp.parsing.JsDocToken EOC>;	if r21 == $r7 goto $r25 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.String toString()>();	$r25 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.String toString()>();	r26 = $r25;	$r27 = <com.google.javascript.jscomp.parsing.JsDocInfoParser$WhitespaceOption: com.google.javascript.jscomp.parsing.JsDocInfoParser$WhitespaceOption PRESERVE>;	if r2 == $r27 goto (branch);	if z0 == 0 goto $r31 = new com.google.javascript.jscomp.parsing.JsDocInfoParser$ExtractionInfo;	$r31 = new com.google.javascript.jscomp.parsing.JsDocInfoParser$ExtractionInfo;	specialinvoke $r31.<com.google.javascript.jscomp.parsing.JsDocInfoParser$ExtractionInfo: void <init>(java.lang.String,com.google.javascript.jscomp.parsing.JsDocToken)>(r26, r21);	return $r31
;block_num 10