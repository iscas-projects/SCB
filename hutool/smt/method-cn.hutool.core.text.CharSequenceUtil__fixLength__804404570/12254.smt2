(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1802 0)
(declare-sort var2993 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1031950772 (String var1802) String)
(declare-fun cast-from-String-to-var1802 (String) var1802)
(declare-fun var2993_repeat/-2130777133 (Int Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var3425 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var3425 null-String)))
(declare-const var3560 Int) ; Statement: c3 := @parameter1: char 
(assert (not (= var3560 null-Int)))
(declare-const var2470 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var2470 null-Int)))
(define-const var2097 Int (String_length/-667254855 var3425)) ; Statement: $i1 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
(define-const var384 Int (- var2470 var2097)) ; Statement: i2 = i0 - $i1 
 ; Statement: if i2 > 0 goto $r1 = new java.lang.StringBuilder 
(assert (> var384 0)) ; Cond: i2 > 0 
(define-const var560 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var560)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var560!1 String)
(assert (= var560!1 ""))
(assert true)
(define-const var3802 String (append/-1031950772 var560!1 (cast-from-String-to-var1802 var3425))) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var560!2 String)
(assert (str.prefixof var560!1 var560!2))
(define-const var2904 String (var2993_repeat/-2130777133 var3560 var384)) ; Statement: $r2 = staticinvoke <cn.hutool.core.text.CharSequenceUtil: java.lang.String repeat(char,int)>(c3, i2) 
(assert true)
(define-const var2755 String (append/672562846 var3802 var2904)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3802!1 String)
(assert (= var3802!1 (str.++ var3802 var2904)))
(assert true)
(define-const var3240 String (toString/-2075883882 var2755)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String_length/-667254855=([java.lang.CharSequence], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-String-to-var1802=([java.lang.CharSequence], java.lang.Object), var2993_repeat/-2130777133=([char, int], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3425=r0, var3560=c3, var2470=i0, var2097=$i1, var384=i2, var560=$r1, var1802=java.lang.Object, var3802=$r3, var2993=cn.hutool.core.text.CharSequenceUtil, var2904=$r2, var2755=$r4, var3240=$r5}
; {r0=var3425, c3=var3560, i0=var2470, $i1=var2097, i2=var384, $r1=var560, java.lang.Object=var1802, $r3=var3802, cn.hutool.core.text.CharSequenceUtil=var2993, $r2=var2904, $r4=var2755, $r5=var3240}
;seq <java.lang.CharSequence: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.CharSequence: int length()>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.CharSequence;	c3 := @parameter1: char;	i0 := @parameter2: int;	$i1 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	i2 = i0 - $i1;	if i2 > 0 goto $r1 = new java.lang.StringBuilder;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r2 = staticinvoke <cn.hutool.core.text.CharSequenceUtil: java.lang.String repeat(char,int)>(c3, i2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 2