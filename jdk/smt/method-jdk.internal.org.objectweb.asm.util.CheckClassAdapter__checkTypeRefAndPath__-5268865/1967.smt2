(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var269 0)
(declare-sort var3634 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3634-init () var3634)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun Int_toHexString/1865784998 (Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var3634 String) void)
(declare-const null-Int Int)
(declare-const null-var269 var269)
(declare-const var496 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var496 null-Int)))
(declare-const var594 var269) ; Statement: r0 := @parameter1: jdk.internal.org.objectweb.asm.TypePath 
(assert (not (= var594 null-var269)))
(define-const var3840 Int (div var496 (to_int (^ 2 24)))) ; Statement: $i1 = i0 >>> 24 
 ; Statement: tableswitch($i1) {     case 0: goto i6 = -65536;     case 1: goto i6 = -65536;     case 2: goto $r28 = new java.lang.IllegalArgumentException;     case 3: goto $r28 = new java.lang.IllegalArgumentException;     case 4: goto $r28 = new java.lang.IllegalArgumentException;     case 5: goto $r28 = new java.lang.IllegalArgumentException;     case 6: goto $r28 = new java.lang.IllegalArgumentException;     case 7: goto $r28 = new java.lang.IllegalArgumentException;     case 8: goto $r28 = new java.lang.IllegalArgumentException;     case 9: goto $r28 = new java.lang.IllegalArgumentException;     case 10: goto $r28 = new java.lang.IllegalArgumentException;     case 11: goto $r28 = new java.lang.IllegalArgumentException;     case 12: goto $r28 = new java.lang.IllegalArgumentException;     case 13: goto $r28 = new java.lang.IllegalArgumentException;     case 14: goto $r28 = new java.lang.IllegalArgumentException;     case 15: goto $r28 = new java.lang.IllegalArgumentException;     case 16: goto $i11 = (int) -256;     case 17: goto $i11 = (int) -256;     case 18: goto $i11 = (int) -256;     case 19: goto i6 = -16777216;     case 20: goto i6 = -16777216;     case 21: goto i6 = -16777216;     case 22: goto i6 = -65536;     case 23: goto $i11 = (int) -256;     case 24: goto $r28 = new java.lang.IllegalArgumentException;     case 25: goto $r28 = new java.lang.IllegalArgumentException;     case 26: goto $r28 = new java.lang.IllegalArgumentException;     case 27: goto $r28 = new java.lang.IllegalArgumentException;     case 28: goto $r28 = new java.lang.IllegalArgumentException;     case 29: goto $r28 = new java.lang.IllegalArgumentException;     case 30: goto $r28 = new java.lang.IllegalArgumentException;     case 31: goto $r28 = new java.lang.IllegalArgumentException;     case 32: goto $r28 = new java.lang.IllegalArgumentException;     case 33: goto $r28 = new java.lang.IllegalArgumentException;     case 34: goto $r28 = new java.lang.IllegalArgumentException;     case 35: goto $r28 = new java.lang.IllegalArgumentException;     case 36: goto $r28 = new java.lang.IllegalArgumentException;     case 37: goto $r28 = new java.lang.IllegalArgumentException;     case 38: goto $r28 = new java.lang.IllegalArgumentException;     case 39: goto $r28 = new java.lang.IllegalArgumentException;     case 40: goto $r28 = new java.lang.IllegalArgumentException;     case 41: goto $r28 = new java.lang.IllegalArgumentException;     case 42: goto $r28 = new java.lang.IllegalArgumentException;     case 43: goto $r28 = new java.lang.IllegalArgumentException;     case 44: goto $r28 = new java.lang.IllegalArgumentException;     case 45: goto $r28 = new java.lang.IllegalArgumentException;     case 46: goto $r28 = new java.lang.IllegalArgumentException;     case 47: goto $r28 = new java.lang.IllegalArgumentException;     case 48: goto $r28 = new java.lang.IllegalArgumentException;     case 49: goto $r28 = new java.lang.IllegalArgumentException;     case 50: goto $r28 = new java.lang.IllegalArgumentException;     case 51: goto $r28 = new java.lang.IllegalArgumentException;     case 52: goto $r28 = new java.lang.IllegalArgumentException;     case 53: goto $r28 = new java.lang.IllegalArgumentException;     case 54: goto $r28 = new java.lang.IllegalArgumentException;     case 55: goto $r28 = new java.lang.IllegalArgumentException;     case 56: goto $r28 = new java.lang.IllegalArgumentException;     case 57: goto $r28 = new java.lang.IllegalArgumentException;     case 58: goto $r28 = new java.lang.IllegalArgumentException;     case 59: goto $r28 = new java.lang.IllegalArgumentException;     case 60: goto $r28 = new java.lang.IllegalArgumentException;     case 61: goto $r28 = new java.lang.IllegalArgumentException;     case 62: goto $r28 = new java.lang.IllegalArgumentException;     case 63: goto $r28 = new java.lang.IllegalArgumentException;     case 64: goto i6 = -16777216;     case 65: goto i6 = -16777216;     case 66: goto $i11 = (int) -256;     case 67: goto i6 = -16777216;     case 68: goto i6 = -16777216;     case 69: goto i6 = -16777216;     case 70: goto i6 = -16777216;     case 71: goto i6 = -16776961;     case 72: goto i6 = -16776961;     case 73: goto i6 = -16776961;     case 74: goto i6 = -16776961;     case 75: goto i6 = -16776961;     default: goto $r28 = new java.lang.IllegalArgumentException; } 
(assert (and (not (= var3840 1)) (and (not (= var3840 0)) true))) ; Intersect: Negate: Cond: $i1 == 1   and Intersect: Negate: Cond: $i1 == 0   and Non Conditional  
(define-const var2790 var3634 var3634-init) ; Statement: $r28 = new java.lang.IllegalArgumentException 
(define-const var2981 String String-init) ; Statement: $r27 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2981)) ; Statement: specialinvoke $r27.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2981!1 String)
(assert (= var2981!1 ""))
(assert true)
(define-const var618 String (append/672562846 var2981!1 "Invalid type reference sort 0x")) ; Statement: $r24 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid type reference sort 0x") 
(declare-const var2981!2 String)
(assert (= var2981!2 (str.++ var2981!1 "Invalid type reference sort 0x")))
(define-const var2190 Int (div var496 (to_int (^ 2 24)))) ; Statement: $i5 = i0 >>> 24 
(define-const var1128 String (Int_toHexString/1865784998 var2190)) ; Statement: $r23 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>($i5) 
(assert true)
(define-const var844 String (append/672562846 var618 var1128)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23) 
(declare-const var618!1 String)
(assert (= var618!1 (str.++ var618 var1128)))
(assert true)
(define-const var982 String (toString/-2075883882 var844)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2790 var982)) ; Statement: specialinvoke $r28.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r26) 

(declare-const var2790!1 var3634)
(declare-const var982!1 String)
 ; Statement: throw $r28 
(check-sat)
(get-model)
(get-unsat-core)
; {var3634-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), Int_toHexString/1865784998=([int], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var496=i0, var269=jdk.internal.org.objectweb.asm.TypePath, var594=r0, var3840=$i1, var3634=java.lang.IllegalArgumentException, var2790=$r28, var2981=$r27, var618=$r24, var2190=$i5, var1128=$r23, var844=$r25, var982=$r26}
; {i0=var496, jdk.internal.org.objectweb.asm.TypePath=var269, r0=var594, $i1=var3840, java.lang.IllegalArgumentException=var3634, $r28=var2790, $r27=var2981, $r24=var618, $i5=var2190, $r23=var1128, $r25=var844, $r26=var982}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts i0 := @parameter0: int;	r0 := @parameter1: jdk.internal.org.objectweb.asm.TypePath;	$i1 = i0 >>> 24;	tableswitch($i1) {     case 0: goto i6 = -65536;     case 1: goto i6 = -65536;     case 2: goto $r28 = new java.lang.IllegalArgumentException;     case 3: goto $r28 = new java.lang.IllegalArgumentException;     case 4: goto $r28 = new java.lang.IllegalArgumentException;     case 5: goto $r28 = new java.lang.IllegalArgumentException;     case 6: goto $r28 = new java.lang.IllegalArgumentException;     case 7: goto $r28 = new java.lang.IllegalArgumentException;     case 8: goto $r28 = new java.lang.IllegalArgumentException;     case 9: goto $r28 = new java.lang.IllegalArgumentException;     case 10: goto $r28 = new java.lang.IllegalArgumentException;     case 11: goto $r28 = new java.lang.IllegalArgumentException;     case 12: goto $r28 = new java.lang.IllegalArgumentException;     case 13: goto $r28 = new java.lang.IllegalArgumentException;     case 14: goto $r28 = new java.lang.IllegalArgumentException;     case 15: goto $r28 = new java.lang.IllegalArgumentException;     case 16: goto $i11 = (int) -256;     case 17: goto $i11 = (int) -256;     case 18: goto $i11 = (int) -256;     case 19: goto i6 = -16777216;     case 20: goto i6 = -16777216;     case 21: goto i6 = -16777216;     case 22: goto i6 = -65536;     case 23: goto $i11 = (int) -256;     case 24: goto $r28 = new java.lang.IllegalArgumentException;     case 25: goto $r28 = new java.lang.IllegalArgumentException;     case 26: goto $r28 = new java.lang.IllegalArgumentException;     case 27: goto $r28 = new java.lang.IllegalArgumentException;     case 28: goto $r28 = new java.lang.IllegalArgumentException;     case 29: goto $r28 = new java.lang.IllegalArgumentException;     case 30: goto $r28 = new java.lang.IllegalArgumentException;     case 31: goto $r28 = new java.lang.IllegalArgumentException;     case 32: goto $r28 = new java.lang.IllegalArgumentException;     case 33: goto $r28 = new java.lang.IllegalArgumentException;     case 34: goto $r28 = new java.lang.IllegalArgumentException;     case 35: goto $r28 = new java.lang.IllegalArgumentException;     case 36: goto $r28 = new java.lang.IllegalArgumentException;     case 37: goto $r28 = new java.lang.IllegalArgumentException;     case 38: goto $r28 = new java.lang.IllegalArgumentException;     case 39: goto $r28 = new java.lang.IllegalArgumentException;     case 40: goto $r28 = new java.lang.IllegalArgumentException;     case 41: goto $r28 = new java.lang.IllegalArgumentException;     case 42: goto $r28 = new java.lang.IllegalArgumentException;     case 43: goto $r28 = new java.lang.IllegalArgumentException;     case 44: goto $r28 = new java.lang.IllegalArgumentException;     case 45: goto $r28 = new java.lang.IllegalArgumentException;     case 46: goto $r28 = new java.lang.IllegalArgumentException;     case 47: goto $r28 = new java.lang.IllegalArgumentException;     case 48: goto $r28 = new java.lang.IllegalArgumentException;     case 49: goto $r28 = new java.lang.IllegalArgumentException;     case 50: goto $r28 = new java.lang.IllegalArgumentException;     case 51: goto $r28 = new java.lang.IllegalArgumentException;     case 52: goto $r28 = new java.lang.IllegalArgumentException;     case 53: goto $r28 = new java.lang.IllegalArgumentException;     case 54: goto $r28 = new java.lang.IllegalArgumentException;     case 55: goto $r28 = new java.lang.IllegalArgumentException;     case 56: goto $r28 = new java.lang.IllegalArgumentException;     case 57: goto $r28 = new java.lang.IllegalArgumentException;     case 58: goto $r28 = new java.lang.IllegalArgumentException;     case 59: goto $r28 = new java.lang.IllegalArgumentException;     case 60: goto $r28 = new java.lang.IllegalArgumentException;     case 61: goto $r28 = new java.lang.IllegalArgumentException;     case 62: goto $r28 = new java.lang.IllegalArgumentException;     case 63: goto $r28 = new java.lang.IllegalArgumentException;     case 64: goto i6 = -16777216;     case 65: goto i6 = -16777216;     case 66: goto $i11 = (int) -256;     case 67: goto i6 = -16777216;     case 68: goto i6 = -16777216;     case 69: goto i6 = -16777216;     case 70: goto i6 = -16777216;     case 71: goto i6 = -16776961;     case 72: goto i6 = -16776961;     case 73: goto i6 = -16776961;     case 74: goto i6 = -16776961;     case 75: goto i6 = -16776961;     default: goto $r28 = new java.lang.IllegalArgumentException; };	$r28 = new java.lang.IllegalArgumentException;	$r27 = new java.lang.StringBuilder;	specialinvoke $r27.<java.lang.StringBuilder: void <init>()>();	$r24 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid type reference sort 0x");	$i5 = i0 >>> 24;	$r23 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>($i5);	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23);	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r28.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r26);	throw $r28
;block_num 2