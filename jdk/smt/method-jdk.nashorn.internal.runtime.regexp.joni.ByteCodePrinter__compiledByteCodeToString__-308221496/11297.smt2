(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1010 0)
(declare-sort var2398 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun code/-116239427 (var1010) (Array Int Int))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var2398-init () var2398)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/652209873 (var2398 String) void)
(declare-const null-var1010 var1010)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1010-OpCodeNames (Array Int String))
(declare-const var1010-OpCodeArgTypes (Array Int Int))
(declare-const var150 var1010) ; Statement: r1 := @this: jdk.nashorn.internal.runtime.regexp.joni.ByteCodePrinter 
(assert (not (= var150 null-var1010)))
(declare-const var649 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var649 null-String)))
(declare-const var2119 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2119 null-Int)))
(assert true)
(define-const var3892 String (append/672562846 var649 "[")) ; Statement: $r5 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[") 
(declare-const var649!1 String)
(assert (= var649!1 (str.++ var649 "[")))
(define-const var1979 (Array Int String) var1010-OpCodeNames) ; Statement: $r3 = <jdk.nashorn.internal.runtime.regexp.joni.ByteCodePrinter: java.lang.String[] OpCodeNames> 
(define-const var1260 (Array Int Int) (code/-116239427 var150)) ; Statement: $r2 = r1.<jdk.nashorn.internal.runtime.regexp.joni.ByteCodePrinter: int[] code> 
(define-const var3265 Int (select var1260 var2119)) ; Statement: $i1 = $r2[i0] 
(define-const var2867 String (select var1979 var3265)) ; Statement: $r4 = $r3[$i1] 
(assert true)
;(assert (append/672562846 var3892 var2867)) ; Statement: virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var3892!1 String)
(assert (= var3892!1 (str.++ var3892 var2867)))
(define-const var1942 (Array Int Int) var1010-OpCodeArgTypes) ; Statement: $r7 = <jdk.nashorn.internal.runtime.regexp.joni.ByteCodePrinter: int[] OpCodeArgTypes> 
(define-const var2439 (Array Int Int) (code/-116239427 var150)) ; Statement: $r6 = r1.<jdk.nashorn.internal.runtime.regexp.joni.ByteCodePrinter: int[] code> 
(define-const var446 Int (select var2439 var2119)) ; Statement: $i2 = $r6[i0] 
(define-const var3060 Int (select var1942 var446)) ; Statement: i3 = $r7[$i2] 
(define-const var2900 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i61 = (int) -1 
 ; Statement: if i3 == $i61 goto $r8 = r1.<jdk.nashorn.internal.runtime.regexp.joni.ByteCodePrinter: int[] code> 
(assert (= var3060 var2900)) ; Cond: i3 == $i61 
(define-const var368 (Array Int Int) (code/-116239427 var150)) ; Statement: $r8 = r1.<jdk.nashorn.internal.runtime.regexp.joni.ByteCodePrinter: int[] code> 
(define-const var3087 Int (+ var2119 1)) ; Statement: i16 = i0 + 1 
(define-const var1420 Int (select var368 var2119)) ; Statement: $i4 = $r8[i0] 
 ; Statement: tableswitch($i4) {     case 2: goto i15 = i16 + 1;     case 3: goto specialinvoke r1.<jdk.nashorn.internal.runtime.regexp.joni.ByteCodePrinter: void pString(java.lang.StringBuilder,int,int)>(r0, 2, i16);     case 4: goto specialinvoke r1.<jdk.nashorn.internal.runtime.regexp.joni.ByteCodePrinter: void pString(java.lang.StringBuilder,int,int)>(r0, 3, i16);     case 5: goto specialinvoke r1.<jdk.nashorn.internal.runtime.regexp.joni.ByteCodePrinter: void pString(java.lang.StringBuilder,int,int)>(r0, 4, i16);     case 6: goto specialinvoke r1.<jdk.nashorn.internal.runtime.regexp.joni.ByteCodePrinter: void pString(java.lang.StringBuilder,int,int)>(r0, 5, i16);     case 7: goto $r77 = r1.<jdk.nashorn.internal.runtime.regexp.joni.ByteCodePrinter: int[] code>;     case 8: goto $r106 = new jdk.nashorn.internal.runtime.regexp.joni.exception.InternalException;     case 9: goto $r106 = new jdk.nashorn.internal.runtime.regexp.joni.exception.InternalException;     case 10: goto $r106 = new jdk.nashorn.internal.runtime.regexp.joni.exception.InternalException;     case 11: goto $r106 = new jdk.nashorn.internal.runtime.regexp.joni.exception.InternalException;     case 12: goto $r106 = new jdk.nashorn.internal.runtime.regexp.joni.exception.InternalException;     case 13: goto $r106 = new jdk.nashorn.internal.runtime.regexp.joni.exception.InternalException;     case 14: goto specialinvoke r1.<jdk.nashorn.internal.runtime.regexp.joni.ByteCodePrinter: void pString(java.lang.StringBuilder,int,int)>(r0, 1, i16);     case 15: goto $r72 = r1.<jdk.nashorn.internal.runtime.regexp.joni.ByteCodePrinter: int[] code>;     case 16: goto $r102 = new jdk.nashorn.internal.runtime.regexp.joni.BitSet;     case 17: goto $r63 = r1.<jdk.nashorn.internal.runtime.regexp.joni.ByteCodePrinter: int[] code>;     case 18: goto $r104 = new jdk.nashorn.internal.runtime.regexp.joni.BitSet;     case 19: goto $r103 = new jdk.nashorn.internal.runtime.regexp.joni.BitSet;     case 20: goto $r63 = r1.<jdk.nashorn.internal.runtime.regexp.joni.ByteCodePrinter: int[] code>;     case 21: goto $r104 = new jdk.nashorn.internal.runtime.regexp.joni.BitSet;     case 22: goto $r42 = r1.<jdk.nashorn.internal.runtime.regexp.joni.ByteCodePrinter: java.lang.Object[] operands>;     case 23: goto $r106 = new jdk.nashorn.internal.runtime.regexp.joni.exception.InternalException;     case 24: goto $r106 = new jdk.nashorn.internal.runtime.regexp.joni.exception.InternalException;     case 25: goto $r106 = new jdk.nashorn.internal.runtime.regexp.joni.exception.InternalException;     case 26: goto $r106 = new jdk.nashorn.internal.runtime.regexp.joni.exception.InternalException;     case 27: goto i15 = i16 + 1;     case 28: goto i15 = i16 + 1;     case 29: goto $r106 = new jdk.nashorn.internal.runtime.regexp.joni.exception.InternalException;     case 30: goto $r106 = new jdk.nashorn.internal.runtime.regexp.joni.exception.InternalException;     case 31: goto $r106 = new jdk.nashorn.internal.runtime.regexp.joni.exception.InternalException;     case 32: goto $r106 = new jdk.nashorn.internal.runtime.regexp.joni.exception.InternalException;     case 33: goto $r106 = new jdk.nashorn.internal.runtime.regexp.joni.exception.InternalException;     case 34: goto $r106 = new jdk.nashorn.internal.runtime.regexp.joni.exception.InternalException;     case 35: goto $r106 = new jdk.nashorn.internal.runtime.regexp.joni.exception.InternalException;     case 36: goto $r106 = new jdk.nashorn.internal.runtime.regexp.joni.exception.InternalException;     case 37: goto $r106 = new jdk.nashorn.internal.runtime.regexp.joni.exception.InternalException;     case 38: goto $r106 = new jdk.nashorn.internal.runtime.regexp.joni.exception.InternalException;     case 39: goto $r106 = new jdk.nashorn.internal.runtime.regexp.joni.exception.InternalException;     case 40: goto $r106 = new jdk.nashorn.internal.runtime.regexp.joni.exception.InternalException;     case 41: goto $r106 = new jdk.nashorn.internal.runtime.regexp.joni.exception.InternalException;     case 42: goto $r106 = new jdk.nashorn.internal.runtime.regexp.joni.exception.InternalException;     case 43: goto $r106 = new jdk.nashorn.internal.runtime.regexp.joni.exception.InternalException;     case 44: goto $r39 = r1.<jdk.nashorn.internal.runtime.regexp.joni.ByteCodePrinter: int[] code>;     case 45: goto virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");     case 46: goto virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");     case 47: goto $r31 = r1.<jdk.nashorn.internal.runtime.regexp.joni.ByteCodePrinter: int[] code>;     case 48: goto $r106 = new jdk.nashorn.internal.runtime.regexp.joni.exception.InternalException;     case 49: goto $r106 = new jdk.nashorn.internal.runtime.regexp.joni.exception.InternalException;     case 50: goto $r106 = new jdk.nashorn.internal.runtime.regexp.joni.exception.InternalException;     case 51: goto $r106 = new jdk.nashorn.internal.runtime.regexp.joni.exception.InternalException;     case 52: goto $r106 = new jdk.nashorn.internal.runtime.regexp.joni.exception.InternalException;     case 53: goto $r106 = new jdk.nashorn.internal.runtime.regexp.joni.exception.InternalException;     case 54: goto $r106 = new jdk.nashorn.internal.runtime.regexp.joni.exception.InternalException;     case 55: goto $r106 = new jdk.nashorn.internal.runtime.regexp.joni.exception.InternalException;     case 56: goto $r106 = new jdk.nashorn.internal.runtime.regexp.joni.exception.InternalException;     case 57: goto $r106 = new jdk.nashorn.internal.runtime.regexp.joni.exception.InternalException;     case 58: goto $r28 = r1.<jdk.nashorn.internal.runtime.regexp.joni.ByteCodePrinter: int[] code>;     case 59: goto $r28 = r1.<jdk.nashorn.internal.runtime.regexp.joni.ByteCodePrinter: int[] code>;     case 60: goto $r23 = r1.<jdk.nashorn.internal.runtime.regexp.joni.ByteCodePrinter: int[] code>;     case 61: goto $r23 = r1.<jdk.nashorn.internal.runtime.regexp.joni.ByteCodePrinter: int[] code>;     case 62: goto $r106 = new jdk.nashorn.internal.runtime.regexp.joni.exception.InternalException;     case 63: goto $r106 = new jdk.nashorn.internal.runtime.regexp.joni.exception.InternalException;     case 64: goto $r106 = new jdk.nashorn.internal.runtime.regexp.joni.exception.InternalException;     case 65: goto $r106 = new jdk.nashorn.internal.runtime.regexp.joni.exception.InternalException;     case 66: goto $r106 = new jdk.nashorn.internal.runtime.regexp.joni.exception.InternalException;     case 67: goto $r106 = new jdk.nashorn.internal.runtime.regexp.joni.exception.InternalException;     case 68: goto $r106 = new jdk.nashorn.internal.runtime.regexp.joni.exception.InternalException;     case 69: goto $r106 = new jdk.nashorn.internal.runtime.regexp.joni.exception.InternalException;     case 70: goto $r106 = new jdk.nashorn.internal.runtime.regexp.joni.exception.InternalException;     case 71: goto $r106 = new jdk.nashorn.internal.runtime.regexp.joni.exception.InternalException;     case 72: goto $r106 = new jdk.nashorn.internal.runtime.regexp.joni.exception.InternalException;     case 73: goto $r106 = new jdk.nashorn.internal.runtime.regexp.joni.exception.InternalException;     case 74: goto $r106 = new jdk.nashorn.internal.runtime.regexp.joni.exception.InternalException;     case 75: goto $r106 = new jdk.nashorn.internal.runtime.regexp.joni.exception.InternalException;     case 76: goto $r21 = r1.<jdk.nashorn.internal.runtime.regexp.joni.ByteCodePrinter: int[] code>;     case 77: goto $r15 = r1.<jdk.nashorn.internal.runtime.regexp.joni.ByteCodePrinter: int[] code>;     case 78: goto $r106 = new jdk.nashorn.internal.runtime.regexp.joni.exception.InternalException;     case 79: goto $r106 = new jdk.nashorn.internal.runtime.regexp.joni.exception.InternalException;     case 80: goto $r106 = new jdk.nashorn.internal.runtime.regexp.joni.exception.InternalException;     case 81: goto $r9 = r1.<jdk.nashorn.internal.runtime.regexp.joni.ByteCodePrinter: int[] code>;     case 82: goto $r9 = r1.<jdk.nashorn.internal.runtime.regexp.joni.ByteCodePrinter: int[] code>;     default: goto $r106 = new jdk.nashorn.internal.runtime.regexp.joni.exception.InternalException; } 
(assert (and (not (= var1420 7)) (and (not (= var1420 6)) (and (not (= var1420 5)) (and (not (= var1420 4)) (and (not (= var1420 3)) (and (not (= var1420 2)) true))))))) ; Intersect: Negate: Cond: $i4 == 7   and Intersect: Negate: Cond: $i4 == 6   and Intersect: Negate: Cond: $i4 == 5   and Intersect: Negate: Cond: $i4 == 4   and Intersect: Negate: Cond: $i4 == 3   and Intersect: Negate: Cond: $i4 == 2   and Non Conditional      
(define-const var901 var2398 var2398-init) ; Statement: $r106 = new jdk.nashorn.internal.runtime.regexp.joni.exception.InternalException 
(define-const var1095 String String-init) ; Statement: $r105 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1095)) ; Statement: specialinvoke $r105.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1095!1 String)
(assert (= var1095!1 ""))
(assert true)
(define-const var2607 String (append/672562846 var1095!1 "undefined code: ")) ; Statement: $r85 = virtualinvoke $r105.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("undefined code: ") 
(declare-const var1095!2 String)
(assert (= var1095!2 (str.++ var1095!1 "undefined code: ")))
(define-const var3736 (Array Int Int) (code/-116239427 var150)) ; Statement: $r84 = r1.<jdk.nashorn.internal.runtime.regexp.joni.ByteCodePrinter: int[] code> 
(define-const var3361 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i63 = (int) -1 
(define-const var436 Int (+ var3087 var3361)) ; Statement: i59 = i16 + $i63 
(define-const var664 Int (select var3736 var436)) ; Statement: $i8 = $r84[i59] 
(assert true)
(define-const var3767 String (append/-1001720160 var2607 var664)) ; Statement: $r86 = virtualinvoke $r85.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i8) 
(declare-const var2607!1 String)
(assert (str.prefixof var2607 var2607!1))
(assert true)
(define-const var782 String (toString/-2075883882 var3767)) ; Statement: $r87 = virtualinvoke $r86.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/652209873 var901 var782)) ; Statement: specialinvoke $r106.<jdk.nashorn.internal.runtime.regexp.joni.exception.InternalException: void <init>(java.lang.String)>($r87) 

(declare-const var901!1 var2398)
(declare-const var782!1 String)
 ; Statement: throw $r106 
(check-sat)
(get-model)
(get-unsat-core)
; {append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), code/-116239427=([jdk.nashorn.internal.runtime.regexp.joni.ByteCodePrinter], int[]), cast-from-Int-to-Int=([int], int), var2398-init=([], jdk.nashorn.internal.runtime.regexp.joni.exception.InternalException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/652209873=([jdk.nashorn.internal.runtime.regexp.joni.exception.InternalException, java.lang.String], void)}
; {var1010=jdk.nashorn.internal.runtime.regexp.joni.ByteCodePrinter, var150=r1, var649=r0, var2119=i0, var3892=$r5, var1979=$r3, var1260=$r2, var3265=$i1, var2867=$r4, var1942=$r7, var2439=$r6, var446=$i2, var3060=i3, var2900=$i61, var368=$r8, var3087=i16, var1420=$i4, var2398=jdk.nashorn.internal.runtime.regexp.joni.exception.InternalException, var901=$r106, var1095=$r105, var2607=$r85, var3736=$r84, var3361=$i63, var436=i59, var664=$i8, var3767=$r86, var782=$r87}
; {jdk.nashorn.internal.runtime.regexp.joni.ByteCodePrinter=var1010, r1=var150, r0=var649, i0=var2119, $r5=var3892, $r3=var1979, $r2=var1260, $i1=var3265, $r4=var2867, $r7=var1942, $r6=var2439, $i2=var446, i3=var3060, $i61=var2900, $r8=var368, i16=var3087, $i4=var1420, jdk.nashorn.internal.runtime.regexp.joni.exception.InternalException=var2398, $r106=var901, $r105=var1095, $r85=var2607, $r84=var3736, $i63=var3361, i59=var436, $i8=var664, $r86=var3767, $r87=var782}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.nashorn.internal.runtime.regexp.joni.ByteCodePrinter;	r0 := @parameter0: java.lang.StringBuilder;	i0 := @parameter1: int;	$r5 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[");	$r3 = <jdk.nashorn.internal.runtime.regexp.joni.ByteCodePrinter: java.lang.String[] OpCodeNames>;	$r2 = r1.<jdk.nashorn.internal.runtime.regexp.joni.ByteCodePrinter: int[] code>;	$i1 = $r2[i0];	$r4 = $r3[$i1];	virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = <jdk.nashorn.internal.runtime.regexp.joni.ByteCodePrinter: int[] OpCodeArgTypes>;	$r6 = r1.<jdk.nashorn.internal.runtime.regexp.joni.ByteCodePrinter: int[] code>;	$i2 = $r6[i0];	i3 = $r7[$i2];	$i61 = (int) -1;	if i3 == $i61 goto $r8 = r1.<jdk.nashorn.internal.runtime.regexp.joni.ByteCodePrinter: int[] code>;	$r8 = r1.<jdk.nashorn.internal.runtime.regexp.joni.ByteCodePrinter: int[] code>;	i16 = i0 + 1;	$i4 = $r8[i0];	tableswitch($i4) {     case 2: goto i15 = i16 + 1;     case 3: goto specialinvoke r1.<jdk.nashorn.internal.runtime.regexp.joni.ByteCodePrinter: void pString(java.lang.StringBuilder,int,int)>(r0, 2, i16);     case 4: goto specialinvoke r1.<jdk.nashorn.internal.runtime.regexp.joni.ByteCodePrinter: void pString(java.lang.StringBuilder,int,int)>(r0, 3, i16);     case 5: goto specialinvoke r1.<jdk.nashorn.internal.runtime.regexp.joni.ByteCodePrinter: void pString(java.lang.StringBuilder,int,int)>(r0, 4, i16);     case 6: goto specialinvoke r1.<jdk.nashorn.internal.runtime.regexp.joni.ByteCodePrinter: void pString(java.lang.StringBuilder,int,int)>(r0, 5, i16);     case 7: goto $r77 = r1.<jdk.nashorn.internal.runtime.regexp.joni.ByteCodePrinter: int[] code>;     case 8: goto $r106 = new jdk.nashorn.internal.runtime.regexp.joni.exception.InternalException;     case 9: goto $r106 = new jdk.nashorn.internal.runtime.regexp.joni.exception.InternalException;     case 10: goto $r106 = new jdk.nashorn.internal.runtime.regexp.joni.exception.InternalException;     case 11: goto $r106 = new jdk.nashorn.internal.runtime.regexp.joni.exception.InternalException;     case 12: goto $r106 = new jdk.nashorn.internal.runtime.regexp.joni.exception.InternalException;     case 13: goto $r106 = new jdk.nashorn.internal.runtime.regexp.joni.exception.InternalException;     case 14: goto specialinvoke r1.<jdk.nashorn.internal.runtime.regexp.joni.ByteCodePrinter: void pString(java.lang.StringBuilder,int,int)>(r0, 1, i16);     case 15: goto $r72 = r1.<jdk.nashorn.internal.runtime.regexp.joni.ByteCodePrinter: int[] code>;     case 16: goto $r102 = new jdk.nashorn.internal.runtime.regexp.joni.BitSet;     case 17: goto $r63 = r1.<jdk.nashorn.internal.runtime.regexp.joni.ByteCodePrinter: int[] code>;     case 18: goto $r104 = new jdk.nashorn.internal.runtime.regexp.joni.BitSet;     case 19: goto $r103 = new jdk.nashorn.internal.runtime.regexp.joni.BitSet;     case 20: goto $r63 = r1.<jdk.nashorn.internal.runtime.regexp.joni.ByteCodePrinter: int[] code>;     case 21: goto $r104 = new jdk.nashorn.internal.runtime.regexp.joni.BitSet;     case 22: goto $r42 = r1.<jdk.nashorn.internal.runtime.regexp.joni.ByteCodePrinter: java.lang.Object[] operands>;     case 23: goto $r106 = new jdk.nashorn.internal.runtime.regexp.joni.exception.InternalException;     case 24: goto $r106 = new jdk.nashorn.internal.runtime.regexp.joni.exception.InternalException;     case 25: goto $r106 = new jdk.nashorn.internal.runtime.regexp.joni.exception.InternalException;     case 26: goto $r106 = new jdk.nashorn.internal.runtime.regexp.joni.exception.InternalException;     case 27: goto i15 = i16 + 1;     case 28: goto i15 = i16 + 1;     case 29: goto $r106 = new jdk.nashorn.internal.runtime.regexp.joni.exception.InternalException;     case 30: goto $r106 = new jdk.nashorn.internal.runtime.regexp.joni.exception.InternalException;     case 31: goto $r106 = new jdk.nashorn.internal.runtime.regexp.joni.exception.InternalException;     case 32: goto $r106 = new jdk.nashorn.internal.runtime.regexp.joni.exception.InternalException;     case 33: goto $r106 = new jdk.nashorn.internal.runtime.regexp.joni.exception.InternalException;     case 34: goto $r106 = new jdk.nashorn.internal.runtime.regexp.joni.exception.InternalException;     case 35: goto $r106 = new jdk.nashorn.internal.runtime.regexp.joni.exception.InternalException;     case 36: goto $r106 = new jdk.nashorn.internal.runtime.regexp.joni.exception.InternalException;     case 37: goto $r106 = new jdk.nashorn.internal.runtime.regexp.joni.exception.InternalException;     case 38: goto $r106 = new jdk.nashorn.internal.runtime.regexp.joni.exception.InternalException;     case 39: goto $r106 = new jdk.nashorn.internal.runtime.regexp.joni.exception.InternalException;     case 40: goto $r106 = new jdk.nashorn.internal.runtime.regexp.joni.exception.InternalException;     case 41: goto $r106 = new jdk.nashorn.internal.runtime.regexp.joni.exception.InternalException;     case 42: goto $r106 = new jdk.nashorn.internal.runtime.regexp.joni.exception.InternalException;     case 43: goto $r106 = new jdk.nashorn.internal.runtime.regexp.joni.exception.InternalException;     case 44: goto $r39 = r1.<jdk.nashorn.internal.runtime.regexp.joni.ByteCodePrinter: int[] code>;     case 45: goto virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");     case 46: goto virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");     case 47: goto $r31 = r1.<jdk.nashorn.internal.runtime.regexp.joni.ByteCodePrinter: int[] code>;     case 48: goto $r106 = new jdk.nashorn.internal.runtime.regexp.joni.exception.InternalException;     case 49: goto $r106 = new jdk.nashorn.internal.runtime.regexp.joni.exception.InternalException;     case 50: goto $r106 = new jdk.nashorn.internal.runtime.regexp.joni.exception.InternalException;     case 51: goto $r106 = new jdk.nashorn.internal.runtime.regexp.joni.exception.InternalException;     case 52: goto $r106 = new jdk.nashorn.internal.runtime.regexp.joni.exception.InternalException;     case 53: goto $r106 = new jdk.nashorn.internal.runtime.regexp.joni.exception.InternalException;     case 54: goto $r106 = new jdk.nashorn.internal.runtime.regexp.joni.exception.InternalException;     case 55: goto $r106 = new jdk.nashorn.internal.runtime.regexp.joni.exception.InternalException;     case 56: goto $r106 = new jdk.nashorn.internal.runtime.regexp.joni.exception.InternalException;     case 57: goto $r106 = new jdk.nashorn.internal.runtime.regexp.joni.exception.InternalException;     case 58: goto $r28 = r1.<jdk.nashorn.internal.runtime.regexp.joni.ByteCodePrinter: int[] code>;     case 59: goto $r28 = r1.<jdk.nashorn.internal.runtime.regexp.joni.ByteCodePrinter: int[] code>;     case 60: goto $r23 = r1.<jdk.nashorn.internal.runtime.regexp.joni.ByteCodePrinter: int[] code>;     case 61: goto $r23 = r1.<jdk.nashorn.internal.runtime.regexp.joni.ByteCodePrinter: int[] code>;     case 62: goto $r106 = new jdk.nashorn.internal.runtime.regexp.joni.exception.InternalException;     case 63: goto $r106 = new jdk.nashorn.internal.runtime.regexp.joni.exception.InternalException;     case 64: goto $r106 = new jdk.nashorn.internal.runtime.regexp.joni.exception.InternalException;     case 65: goto $r106 = new jdk.nashorn.internal.runtime.regexp.joni.exception.InternalException;     case 66: goto $r106 = new jdk.nashorn.internal.runtime.regexp.joni.exception.InternalException;     case 67: goto $r106 = new jdk.nashorn.internal.runtime.regexp.joni.exception.InternalException;     case 68: goto $r106 = new jdk.nashorn.internal.runtime.regexp.joni.exception.InternalException;     case 69: goto $r106 = new jdk.nashorn.internal.runtime.regexp.joni.exception.InternalException;     case 70: goto $r106 = new jdk.nashorn.internal.runtime.regexp.joni.exception.InternalException;     case 71: goto $r106 = new jdk.nashorn.internal.runtime.regexp.joni.exception.InternalException;     case 72: goto $r106 = new jdk.nashorn.internal.runtime.regexp.joni.exception.InternalException;     case 73: goto $r106 = new jdk.nashorn.internal.runtime.regexp.joni.exception.InternalException;     case 74: goto $r106 = new jdk.nashorn.internal.runtime.regexp.joni.exception.InternalException;     case 75: goto $r106 = new jdk.nashorn.internal.runtime.regexp.joni.exception.InternalException;     case 76: goto $r21 = r1.<jdk.nashorn.internal.runtime.regexp.joni.ByteCodePrinter: int[] code>;     case 77: goto $r15 = r1.<jdk.nashorn.internal.runtime.regexp.joni.ByteCodePrinter: int[] code>;     case 78: goto $r106 = new jdk.nashorn.internal.runtime.regexp.joni.exception.InternalException;     case 79: goto $r106 = new jdk.nashorn.internal.runtime.regexp.joni.exception.InternalException;     case 80: goto $r106 = new jdk.nashorn.internal.runtime.regexp.joni.exception.InternalException;     case 81: goto $r9 = r1.<jdk.nashorn.internal.runtime.regexp.joni.ByteCodePrinter: int[] code>;     case 82: goto $r9 = r1.<jdk.nashorn.internal.runtime.regexp.joni.ByteCodePrinter: int[] code>;     default: goto $r106 = new jdk.nashorn.internal.runtime.regexp.joni.exception.InternalException; };	$r106 = new jdk.nashorn.internal.runtime.regexp.joni.exception.InternalException;	$r105 = new java.lang.StringBuilder;	specialinvoke $r105.<java.lang.StringBuilder: void <init>()>();	$r85 = virtualinvoke $r105.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("undefined code: ");	$r84 = r1.<jdk.nashorn.internal.runtime.regexp.joni.ByteCodePrinter: int[] code>;	$i63 = (int) -1;	i59 = i16 + $i63;	$i8 = $r84[i59];	$r86 = virtualinvoke $r85.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i8);	$r87 = virtualinvoke $r86.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r106.<jdk.nashorn.internal.runtime.regexp.joni.exception.InternalException: void <init>(java.lang.String)>($r87);	throw $r106
;block_num 3