(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3096 0)
(declare-sort var557 0)
(declare-sort var2302 0)
(declare-sort var2951 0)
(declare-sort var2624 0)
(declare-sort var1442 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getSource/1681365446 (var1442) var2624)
(declare-fun cast-from-var3096-to-var1442 (var3096) var1442)
(declare-fun getNodeLength/-847891660 (var557) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3096 var3096)
(declare-const null-var557 var557)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-var2951 var2951)
(declare-const null-var2624 var2624)
(declare-const var1659 var3096) ; Statement: r1 := @this: com.google.javascript.jscomp.LightweightMessageFormatter 
(assert (not (= var1659 null-var3096)))
(declare-const var3777 var557) ; Statement: r3 := @parameter0: com.google.javascript.jscomp.JSError 
(assert (not (= var3777 null-var557)))
(declare-const var3489 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var3489 null-String)))
(declare-const var1318 Int) ; Statement: i2 := @parameter2: int 
(assert (not (= var1318 null-Int)))
(declare-const var1774 Int) ; Statement: i1 := @parameter3: int 
(assert (not (= var1774 null-Int)))
(declare-const var1606 var2951) ; Statement: r4 := @parameter4: com.google.javascript.jscomp.SourceExcerptProvider$SourceExcerpt 
(assert (not (= var1606 null-var2951)))
(define-const var2488 String String-init) ; Statement: $r13 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2488)) ; Statement: specialinvoke $r13.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2488!1 String)
(assert (= var2488!1 ""))
(assert true)
(define-const var1917 var2624 (getSource/1681365446 (cast-from-var3096-to-var1442 var1659))) ; Statement: r2 = virtualinvoke r1.<com.google.javascript.jscomp.LightweightMessageFormatter: com.google.javascript.jscomp.SourceExcerptProvider getSource()>() 
(assert true)
(define-const var544 Int (getNodeLength/-847891660 var3777)) ; Statement: i0 = virtualinvoke r3.<com.google.javascript.jscomp.JSError: int getNodeLength()>() 
 ; Statement: if i1 < 0 goto $i7 = (int) -1 
(assert (< var1774 0)) ; Cond: i1 < 0 
(define-const var3121 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i7 = (int) -1 
(define-const var2680 Int var3121) ; Statement: $i5 = $i7 
(assert true) ; Non Conditional
 ; Statement: if r2 != null goto $r6 = <com.google.javascript.jscomp.LightweightMessageFormatter: com.google.javascript.jscomp.SourceExcerptProvider$ExcerptFormatter excerptFormatter> 
(assert (not (not (= var1917 null-var2624)))) ; Negate: Cond: r2 != null  
(define-const var1988 String null-String) ; Statement: $r11 = null 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if $r11 == null goto $r12 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= var1988 null-String)) ; Cond: $r11 == null 
(assert true)
(define-const var2030 String (toString/-2075883882 var2488!1)) ; Statement: $r12 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getSource/1681365446=([com.google.javascript.jscomp.AbstractMessageFormatter], com.google.javascript.jscomp.SourceExcerptProvider), cast-from-var3096-to-var1442=([com.google.javascript.jscomp.LightweightMessageFormatter], com.google.javascript.jscomp.AbstractMessageFormatter), getNodeLength/-847891660=([com.google.javascript.jscomp.JSError], int), cast-from-Int-to-Int=([int], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3096=com.google.javascript.jscomp.LightweightMessageFormatter, var1659=r1, var557=com.google.javascript.jscomp.JSError, var3777=r3, var3489=r5, var2302=null_type, var1318=i2, var1774=i1, var2951=com.google.javascript.jscomp.SourceExcerptProvider$SourceExcerpt, var1606=r4, var2488=$r13, var2624=com.google.javascript.jscomp.SourceExcerptProvider, var1442=com.google.javascript.jscomp.AbstractMessageFormatter, var1917=r2, var544=i0, var3121=$i7, var2680=$i5, var1988=$r11, var2030=$r12}
; {com.google.javascript.jscomp.LightweightMessageFormatter=var3096, r1=var1659, com.google.javascript.jscomp.JSError=var557, r3=var3777, r5=var3489, null_type=var2302, i2=var1318, i1=var1774, com.google.javascript.jscomp.SourceExcerptProvider$SourceExcerpt=var2951, r4=var1606, $r13=var2488, com.google.javascript.jscomp.SourceExcerptProvider=var2624, com.google.javascript.jscomp.AbstractMessageFormatter=var1442, r2=var1917, i0=var544, $i7=var3121, $i5=var2680, $r11=var1988, $r12=var2030}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.LightweightMessageFormatter;	r3 := @parameter0: com.google.javascript.jscomp.JSError;	r5 := @parameter1: java.lang.String;	i2 := @parameter2: int;	i1 := @parameter3: int;	r4 := @parameter4: com.google.javascript.jscomp.SourceExcerptProvider$SourceExcerpt;	$r13 = new java.lang.StringBuilder;	specialinvoke $r13.<java.lang.StringBuilder: void <init>()>();	r2 = virtualinvoke r1.<com.google.javascript.jscomp.LightweightMessageFormatter: com.google.javascript.jscomp.SourceExcerptProvider getSource()>();	i0 = virtualinvoke r3.<com.google.javascript.jscomp.JSError: int getNodeLength()>();	if i1 < 0 goto $i7 = (int) -1;	$i7 = (int) -1;	$i5 = $i7;	if r2 != null goto $r6 = <com.google.javascript.jscomp.LightweightMessageFormatter: com.google.javascript.jscomp.SourceExcerptProvider$ExcerptFormatter excerptFormatter>;	$r11 = null;	goto [?= (branch)];	if $r11 == null goto $r12 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	$r12 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	return $r12
;block_num 6