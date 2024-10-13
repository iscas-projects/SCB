(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1831 0)
(declare-sort var2590 0)
(declare-sort var3442 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2590_getChar/635386524 (String Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var2590_checkClassTypeSignature/181611887 (String Int) Int)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var3442-init () var3442)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var3442 String) void)
(declare-const null-String String)
(declare-const var1154 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1154 null-String)))
(define-const var1629 Int 0) ; Statement: i2 = 0 
(define-const var3915 Int (var2590_getChar/635386524 var1154 0)) ; Statement: $c0 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: char getChar(java.lang.String,int)>(r0, 0) 
(define-const var3756 Int (cast-from-Int-to-Int var3915)) ; Statement: $i5 = (int) $c0 
 ; Statement: if $i5 != 60 goto i3 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: int checkClassTypeSignature(java.lang.String,int)>(r0, i2) 
(assert (not (= var3756 60))) ; Cond: $i5 != 60 
(define-const var669 Int (var2590_checkClassTypeSignature/181611887 var1154 var1629)) ; Statement: i3 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: int checkClassTypeSignature(java.lang.String,int)>(r0, i2) 
(assert true) ; Non Conditional
(define-const var3309 Int (var2590_getChar/635386524 var1154 var669)) ; Statement: $c4 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: char getChar(java.lang.String,int)>(r0, i3) 
(define-const var1369 Int (cast-from-Int-to-Int var3309)) ; Statement: $i6 = (int) $c4 
 ; Statement: if $i6 != 76 goto $i1 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert (not (= var1369 76))) ; Cond: $i6 != 76 
(assert true)
(define-const var762 Int (length/-134980193 var1154)) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i3 == $i1 goto return 
(assert (not (= var669 var762))) ; Negate: Cond: i3 == $i1  
(define-const var791 var3442 var3442-init) ; Statement: $r8 = new java.lang.IllegalArgumentException 
(define-const var1434 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1434)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1434!1 String)
(assert (= var1434!1 ""))
(assert true)
(define-const var1821 String (append/672562846 var1434!1 var1154)) ; Statement: $r3 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var1434!2 String)
(assert (= var1434!2 (str.++ var1434!1 var1154)))
(assert true)
(define-const var1840 String (append/672562846 var1821 ": error at index ")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": error at index ") 
(declare-const var1821!1 String)
(assert (= var1821!1 (str.++ var1821 ": error at index ")))
(assert true)
(define-const var3300 String (append/-1001720160 var1840 var669)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i3) 
(declare-const var1840!1 String)
(assert (str.prefixof var1840 var1840!1))
(assert true)
(define-const var2912 String (toString/-2075883882 var3300)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var791 var2912)) ; Statement: specialinvoke $r8.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r6) 

(declare-const var791!1 var3442)
(declare-const var2912!1 String)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {var2590_getChar/635386524=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), var2590_checkClassTypeSignature/181611887=([java.lang.String, int], int), length/-134980193=([java.lang.String], int), var3442-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1154=r0, var1831=null_type, var1629=i2, var2590=jdk.internal.org.objectweb.asm.util.CheckClassAdapter, var3915=$c0, var3756=$i5, var669=i3, var3309=$c4, var1369=$i6, var762=$i1, var3442=java.lang.IllegalArgumentException, var791=$r8, var1434=$r7, var1821=$r3, var1840=$r4, var3300=$r5, var2912=$r6}
; {r0=var1154, null_type=var1831, i2=var1629, jdk.internal.org.objectweb.asm.util.CheckClassAdapter=var2590, $c0=var3915, $i5=var3756, i3=var669, $c4=var3309, $i6=var1369, $i1=var762, java.lang.IllegalArgumentException=var3442, $r8=var791, $r7=var1434, $r3=var1821, $r4=var1840, $r5=var3300, $r6=var2912}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i2 = 0;	$c0 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: char getChar(java.lang.String,int)>(r0, 0);	$i5 = (int) $c0;	if $i5 != 60 goto i3 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: int checkClassTypeSignature(java.lang.String,int)>(r0, i2);	i3 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: int checkClassTypeSignature(java.lang.String,int)>(r0, i2);	$c4 = staticinvoke <jdk.internal.org.objectweb.asm.util.CheckClassAdapter: char getChar(java.lang.String,int)>(r0, i3);	$i6 = (int) $c4;	if $i6 != 76 goto $i1 = virtualinvoke r0.<java.lang.String: int length()>();	$i1 = virtualinvoke r0.<java.lang.String: int length()>();	if i3 == $i1 goto return;	$r8 = new java.lang.IllegalArgumentException;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": error at index ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r8.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r6);	throw $r8
;block_num 5