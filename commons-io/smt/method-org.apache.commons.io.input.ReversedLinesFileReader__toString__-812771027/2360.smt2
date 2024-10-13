(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2395 0)
(declare-sort var3685 0)
(declare-sort var341 0)
(declare-sort var1336 0)
(declare-sort var354 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun readLines/2104790297 (var2395 Int) var3685)
(declare-fun var341_reverse/-626513658 (var3685) void)
(declare-fun var3685_isEmpty/-153543822 (var3685) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var1336_lineSeparator/-342590142 () String)
(declare-fun String_join/1594745010 (String var354) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun cast-from-var3685-to-var354 (var3685) var354)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2395 var2395)
(declare-const null-Int Int)
(declare-const var2486 var2395) ; Statement: r0 := @this: org.apache.commons.io.input.ReversedLinesFileReader 
(assert (not (= var2486 null-var2395)))
(declare-const var2676 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2676 null-Int)))
(assert true)
(define-const var1576 var3685 (readLines/2104790297 var2486 var2676)) ; Statement: r1 = virtualinvoke r0.<org.apache.commons.io.input.ReversedLinesFileReader: java.util.List readLines(int)>(i0) 
;(assert (var341_reverse/-626513658 var1576)) ; Statement: staticinvoke <java.util.Collections: void reverse(java.util.List)>(r1) 

(declare-const var1576!1 var3685)
(define-const var665 Bool (var3685_isEmpty/-153543822 var1576!1)) ; Statement: $z0 = interfaceinvoke r1.<java.util.List: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $r2 = new java.lang.StringBuilder 
(assert (= (ite var665 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2639 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2639)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2639!1 String)
(assert (= var2639!1 ""))
(define-const var2057 String var1336_lineSeparator/-342590142) ; Statement: $r3 = staticinvoke <java.lang.System: java.lang.String lineSeparator()>() 
(define-const var3360 String (String_join/1594745010 (cast-from-String-to-String var2057) (cast-from-var3685-to-var354 var1576!1))) ; Statement: $r4 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.Iterable)>($r3, r1) 
(assert true)
(define-const var985 String (append/672562846 var2639!1 var3360)) ; Statement: $r6 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var2639!2 String)
(assert (= var2639!2 (str.++ var2639!1 var3360)))
(define-const var498 String var1336_lineSeparator/-342590142) ; Statement: $r5 = staticinvoke <java.lang.System: java.lang.String lineSeparator()>() 
(assert true)
(define-const var846 String (append/672562846 var985 var498)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var985!1 String)
(assert (= var985!1 (str.++ var985 var498)))
(assert true)
(define-const var3020 String (toString/-2075883882 var846)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {readLines/2104790297=([org.apache.commons.io.input.ReversedLinesFileReader, int], java.util.List), var341_reverse/-626513658=([java.util.List], void), var3685_isEmpty/-153543822=([java.util.List], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var1336_lineSeparator/-342590142=([], java.lang.String), String_join/1594745010=([java.lang.CharSequence, java.lang.Iterable], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), cast-from-var3685-to-var354=([java.util.List], java.lang.Iterable), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2395=org.apache.commons.io.input.ReversedLinesFileReader, var2486=r0, var2676=i0, var3685=java.util.List, var1576=r1, var341=java.util.Collections, var665=$z0, var2639=$r2, var1336=java.lang.System, var2057=$r3, var354=java.lang.Iterable, var3360=$r4, var985=$r6, var498=$r5, var846=$r7, var3020=$r8}
; {org.apache.commons.io.input.ReversedLinesFileReader=var2395, r0=var2486, i0=var2676, java.util.List=var3685, r1=var1576, java.util.Collections=var341, $z0=var665, $r2=var2639, java.lang.System=var1336, $r3=var2057, java.lang.Iterable=var354, $r4=var3360, $r6=var985, $r5=var498, $r7=var846, $r8=var3020}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.Iterable)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.Iterable)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.commons.io.input.ReversedLinesFileReader;	i0 := @parameter0: int;	r1 = virtualinvoke r0.<org.apache.commons.io.input.ReversedLinesFileReader: java.util.List readLines(int)>(i0);	staticinvoke <java.util.Collections: void reverse(java.util.List)>(r1);	$z0 = interfaceinvoke r1.<java.util.List: boolean isEmpty()>();	if $z0 == 0 goto $r2 = new java.lang.StringBuilder;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = staticinvoke <java.lang.System: java.lang.String lineSeparator()>();	$r4 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.Iterable)>($r3, r1);	$r6 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r5 = staticinvoke <java.lang.System: java.lang.String lineSeparator()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 3