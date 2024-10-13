(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2558 0)
(declare-sort var25 0)
(declare-sort var3913 0)
(declare-sort var89 0)
(declare-sort var1521 0)
(declare-sort var1338 0)
(declare-sort var415 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getSource/1681365446 (var1338) var1521)
(declare-fun cast-from-var2558-to-var1338 (var2558) var1338)
(declare-fun getNodeLength/-847891660 (var25) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun get/-1446559254 (var89 var1521 String Int Int var415) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2558 var2558)
(declare-const null-var25 var25)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-var89 var89)
(declare-const null-var1521 var1521)
(declare-const var2558-excerptFormatter var415)
(declare-const var616 var2558) ; Statement: r1 := @this: com.google.javascript.jscomp.LightweightMessageFormatter 
(assert (not (= var616 null-var2558)))
(declare-const var3650 var25) ; Statement: r3 := @parameter0: com.google.javascript.jscomp.JSError 
(assert (not (= var3650 null-var25)))
(declare-const var3745 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var3745 null-String)))
(declare-const var1040 Int) ; Statement: i2 := @parameter2: int 
(assert (not (= var1040 null-Int)))
(declare-const var1751 Int) ; Statement: i1 := @parameter3: int 
(assert (not (= var1751 null-Int)))
(declare-const var219 var89) ; Statement: r4 := @parameter4: com.google.javascript.jscomp.SourceExcerptProvider$SourceExcerpt 
(assert (not (= var219 null-var89)))
(define-const var569 String String-init) ; Statement: $r13 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var569)) ; Statement: specialinvoke $r13.<java.lang.StringBuilder: void <init>()>() 
(declare-const var569!1 String)
(assert (= var569!1 ""))
(assert true)
(define-const var1285 var1521 (getSource/1681365446 (cast-from-var2558-to-var1338 var616))) ; Statement: r2 = virtualinvoke r1.<com.google.javascript.jscomp.LightweightMessageFormatter: com.google.javascript.jscomp.SourceExcerptProvider getSource()>() 
(assert true)
(define-const var2075 Int (getNodeLength/-847891660 var3650)) ; Statement: i0 = virtualinvoke r3.<com.google.javascript.jscomp.JSError: int getNodeLength()>() 
 ; Statement: if i1 < 0 goto $i7 = (int) -1 
(assert (< var1751 0)) ; Cond: i1 < 0 
(define-const var1487 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i7 = (int) -1 
(define-const var2860 Int var1487) ; Statement: $i5 = $i7 
(assert true) ; Non Conditional
 ; Statement: if r2 != null goto $r6 = <com.google.javascript.jscomp.LightweightMessageFormatter: com.google.javascript.jscomp.SourceExcerptProvider$ExcerptFormatter excerptFormatter> 
(assert (not (= var1285 null-var1521))) ; Cond: r2 != null 
(define-const var201 var415 var2558-excerptFormatter) ; Statement: $r6 = <com.google.javascript.jscomp.LightweightMessageFormatter: com.google.javascript.jscomp.SourceExcerptProvider$ExcerptFormatter excerptFormatter> 
(assert true)
(define-const var68 String (get/-1446559254 var219 var1285 var3745 var1040 var2860 var201)) ; Statement: $r11 = virtualinvoke r4.<com.google.javascript.jscomp.SourceExcerptProvider$SourceExcerpt: java.lang.String get(com.google.javascript.jscomp.SourceExcerptProvider,java.lang.String,int,int,com.google.javascript.jscomp.SourceExcerptProvider$ExcerptFormatter)>(r2, r5, i2, $i5, $r6) 
(assert true) ; Non Conditional
 ; Statement: if $r11 == null goto $r12 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= var68 null-String)) ; Cond: $r11 == null 
(assert true)
(define-const var685 String (toString/-2075883882 var569!1)) ; Statement: $r12 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getSource/1681365446=([com.google.javascript.jscomp.AbstractMessageFormatter], com.google.javascript.jscomp.SourceExcerptProvider), cast-from-var2558-to-var1338=([com.google.javascript.jscomp.LightweightMessageFormatter], com.google.javascript.jscomp.AbstractMessageFormatter), getNodeLength/-847891660=([com.google.javascript.jscomp.JSError], int), cast-from-Int-to-Int=([int], int), get/-1446559254=([com.google.javascript.jscomp.SourceExcerptProvider$SourceExcerpt, com.google.javascript.jscomp.SourceExcerptProvider, java.lang.String, int, int, com.google.javascript.jscomp.SourceExcerptProvider$ExcerptFormatter], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2558=com.google.javascript.jscomp.LightweightMessageFormatter, var616=r1, var25=com.google.javascript.jscomp.JSError, var3650=r3, var3745=r5, var3913=null_type, var1040=i2, var1751=i1, var89=com.google.javascript.jscomp.SourceExcerptProvider$SourceExcerpt, var219=r4, var569=$r13, var1521=com.google.javascript.jscomp.SourceExcerptProvider, var1338=com.google.javascript.jscomp.AbstractMessageFormatter, var1285=r2, var2075=i0, var1487=$i7, var2860=$i5, var415=com.google.javascript.jscomp.SourceExcerptProvider$ExcerptFormatter, var201=$r6, var68=$r11, var685=$r12}
; {com.google.javascript.jscomp.LightweightMessageFormatter=var2558, r1=var616, com.google.javascript.jscomp.JSError=var25, r3=var3650, r5=var3745, null_type=var3913, i2=var1040, i1=var1751, com.google.javascript.jscomp.SourceExcerptProvider$SourceExcerpt=var89, r4=var219, $r13=var569, com.google.javascript.jscomp.SourceExcerptProvider=var1521, com.google.javascript.jscomp.AbstractMessageFormatter=var1338, r2=var1285, i0=var2075, $i7=var1487, $i5=var2860, com.google.javascript.jscomp.SourceExcerptProvider$ExcerptFormatter=var415, $r6=var201, $r11=var68, $r12=var685}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.LightweightMessageFormatter;	r3 := @parameter0: com.google.javascript.jscomp.JSError;	r5 := @parameter1: java.lang.String;	i2 := @parameter2: int;	i1 := @parameter3: int;	r4 := @parameter4: com.google.javascript.jscomp.SourceExcerptProvider$SourceExcerpt;	$r13 = new java.lang.StringBuilder;	specialinvoke $r13.<java.lang.StringBuilder: void <init>()>();	r2 = virtualinvoke r1.<com.google.javascript.jscomp.LightweightMessageFormatter: com.google.javascript.jscomp.SourceExcerptProvider getSource()>();	i0 = virtualinvoke r3.<com.google.javascript.jscomp.JSError: int getNodeLength()>();	if i1 < 0 goto $i7 = (int) -1;	$i7 = (int) -1;	$i5 = $i7;	if r2 != null goto $r6 = <com.google.javascript.jscomp.LightweightMessageFormatter: com.google.javascript.jscomp.SourceExcerptProvider$ExcerptFormatter excerptFormatter>;	$r6 = <com.google.javascript.jscomp.LightweightMessageFormatter: com.google.javascript.jscomp.SourceExcerptProvider$ExcerptFormatter excerptFormatter>;	$r11 = virtualinvoke r4.<com.google.javascript.jscomp.SourceExcerptProvider$SourceExcerpt: java.lang.String get(com.google.javascript.jscomp.SourceExcerptProvider,java.lang.String,int,int,com.google.javascript.jscomp.SourceExcerptProvider$ExcerptFormatter)>(r2, r5, i2, $i5, $r6);	if $r11 == null goto $r12 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	$r12 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	return $r12
;block_num 6