(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3239 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var3239-init () var3239)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var3239 String) void)
(declare-const null-Int Int)
(declare-const var2312 Int) ; Statement: c0 := @parameter0: char 
(assert (not (= var2312 null-Int)))
(define-const var1963 Int (cast-from-Int-to-Int var2312)) ; Statement: $i1 = (int) c0 
 ; Statement: tableswitch($i1) {     case 48: goto return 0;     case 49: goto return 8;     case 50: goto return 4;     case 51: goto return 12;     case 52: goto return 2;     case 53: goto return 10;     case 54: goto return 6;     case 55: goto return 14;     case 56: goto return 1;     case 57: goto return 9;     case 58: goto $r7 = new java.lang.IllegalArgumentException;     case 59: goto $r7 = new java.lang.IllegalArgumentException;     case 60: goto $r7 = new java.lang.IllegalArgumentException;     case 61: goto $r7 = new java.lang.IllegalArgumentException;     case 62: goto $r7 = new java.lang.IllegalArgumentException;     case 63: goto $r7 = new java.lang.IllegalArgumentException;     case 64: goto $r7 = new java.lang.IllegalArgumentException;     case 65: goto return 5;     case 66: goto return 13;     case 67: goto return 3;     case 68: goto return 11;     case 69: goto return 7;     case 70: goto return 15;     case 71: goto $r7 = new java.lang.IllegalArgumentException;     case 72: goto $r7 = new java.lang.IllegalArgumentException;     case 73: goto $r7 = new java.lang.IllegalArgumentException;     case 74: goto $r7 = new java.lang.IllegalArgumentException;     case 75: goto $r7 = new java.lang.IllegalArgumentException;     case 76: goto $r7 = new java.lang.IllegalArgumentException;     case 77: goto $r7 = new java.lang.IllegalArgumentException;     case 78: goto $r7 = new java.lang.IllegalArgumentException;     case 79: goto $r7 = new java.lang.IllegalArgumentException;     case 80: goto $r7 = new java.lang.IllegalArgumentException;     case 81: goto $r7 = new java.lang.IllegalArgumentException;     case 82: goto $r7 = new java.lang.IllegalArgumentException;     case 83: goto $r7 = new java.lang.IllegalArgumentException;     case 84: goto $r7 = new java.lang.IllegalArgumentException;     case 85: goto $r7 = new java.lang.IllegalArgumentException;     case 86: goto $r7 = new java.lang.IllegalArgumentException;     case 87: goto $r7 = new java.lang.IllegalArgumentException;     case 88: goto $r7 = new java.lang.IllegalArgumentException;     case 89: goto $r7 = new java.lang.IllegalArgumentException;     case 90: goto $r7 = new java.lang.IllegalArgumentException;     case 91: goto $r7 = new java.lang.IllegalArgumentException;     case 92: goto $r7 = new java.lang.IllegalArgumentException;     case 93: goto $r7 = new java.lang.IllegalArgumentException;     case 94: goto $r7 = new java.lang.IllegalArgumentException;     case 95: goto $r7 = new java.lang.IllegalArgumentException;     case 96: goto $r7 = new java.lang.IllegalArgumentException;     case 97: goto return 5;     case 98: goto return 13;     case 99: goto return 3;     case 100: goto return 11;     case 101: goto return 7;     case 102: goto return 15;     default: goto $r7 = new java.lang.IllegalArgumentException; } 
(assert (and (not (= var1963 57)) (and (not (= var1963 56)) (and (not (= var1963 55)) (and (not (= var1963 54)) (and (not (= var1963 53)) (and (not (= var1963 52)) (and (not (= var1963 51)) (and (not (= var1963 50)) (and (not (= var1963 49)) (and (not (= var1963 48)) true))))))))))) ; Intersect: Negate: Cond: $i1 == 57   and Intersect: Negate: Cond: $i1 == 56   and Intersect: Negate: Cond: $i1 == 55   and Intersect: Negate: Cond: $i1 == 54   and Intersect: Negate: Cond: $i1 == 53   and Intersect: Negate: Cond: $i1 == 52   and Intersect: Negate: Cond: $i1 == 51   and Intersect: Negate: Cond: $i1 == 50   and Intersect: Negate: Cond: $i1 == 49   and Intersect: Negate: Cond: $i1 == 48   and Non Conditional          
(define-const var2580 var3239 var3239-init) ; Statement: $r7 = new java.lang.IllegalArgumentException 
(define-const var2647 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2647)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2647!1 String)
(assert (= var2647!1 ""))
(assert true)
(define-const var3634 String (append/672562846 var2647!1 "Cannot interpret \u0027")) ; Statement: $r2 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot interpret \'") 
(declare-const var2647!2 String)
(assert (= var2647!2 (str.++ var2647!1 "Cannot interpret \u0027")))
(assert true)
(define-const var659 String (append/-1166366385 var3634 var2312)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c0) 
(declare-const var3634!1 String)
(assert (str.prefixof var3634 var3634!1))
(assert true)
(define-const var3303 String (append/672562846 var659 "\u0027 as a hexadecimal digit")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' as a hexadecimal digit") 
(declare-const var659!1 String)
(assert (= var659!1 (str.++ var659 "\u0027 as a hexadecimal digit")))
(assert true)
(define-const var414 String (toString/-2075883882 var3303)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2580 var414)) ; Statement: specialinvoke $r7.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r5) 

(declare-const var2580!1 var3239)
(declare-const var414!1 String)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([char], int), var3239-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2312=c0, var1963=$i1, var3239=java.lang.IllegalArgumentException, var2580=$r7, var2647=$r6, var3634=$r2, var659=$r3, var3303=$r4, var414=$r5}
; {c0=var2312, $i1=var1963, java.lang.IllegalArgumentException=var3239, $r7=var2580, $r6=var2647, $r2=var3634, $r3=var659, $r4=var3303, $r5=var414}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts c0 := @parameter0: char;	$i1 = (int) c0;	tableswitch($i1) {     case 48: goto return 0;     case 49: goto return 8;     case 50: goto return 4;     case 51: goto return 12;     case 52: goto return 2;     case 53: goto return 10;     case 54: goto return 6;     case 55: goto return 14;     case 56: goto return 1;     case 57: goto return 9;     case 58: goto $r7 = new java.lang.IllegalArgumentException;     case 59: goto $r7 = new java.lang.IllegalArgumentException;     case 60: goto $r7 = new java.lang.IllegalArgumentException;     case 61: goto $r7 = new java.lang.IllegalArgumentException;     case 62: goto $r7 = new java.lang.IllegalArgumentException;     case 63: goto $r7 = new java.lang.IllegalArgumentException;     case 64: goto $r7 = new java.lang.IllegalArgumentException;     case 65: goto return 5;     case 66: goto return 13;     case 67: goto return 3;     case 68: goto return 11;     case 69: goto return 7;     case 70: goto return 15;     case 71: goto $r7 = new java.lang.IllegalArgumentException;     case 72: goto $r7 = new java.lang.IllegalArgumentException;     case 73: goto $r7 = new java.lang.IllegalArgumentException;     case 74: goto $r7 = new java.lang.IllegalArgumentException;     case 75: goto $r7 = new java.lang.IllegalArgumentException;     case 76: goto $r7 = new java.lang.IllegalArgumentException;     case 77: goto $r7 = new java.lang.IllegalArgumentException;     case 78: goto $r7 = new java.lang.IllegalArgumentException;     case 79: goto $r7 = new java.lang.IllegalArgumentException;     case 80: goto $r7 = new java.lang.IllegalArgumentException;     case 81: goto $r7 = new java.lang.IllegalArgumentException;     case 82: goto $r7 = new java.lang.IllegalArgumentException;     case 83: goto $r7 = new java.lang.IllegalArgumentException;     case 84: goto $r7 = new java.lang.IllegalArgumentException;     case 85: goto $r7 = new java.lang.IllegalArgumentException;     case 86: goto $r7 = new java.lang.IllegalArgumentException;     case 87: goto $r7 = new java.lang.IllegalArgumentException;     case 88: goto $r7 = new java.lang.IllegalArgumentException;     case 89: goto $r7 = new java.lang.IllegalArgumentException;     case 90: goto $r7 = new java.lang.IllegalArgumentException;     case 91: goto $r7 = new java.lang.IllegalArgumentException;     case 92: goto $r7 = new java.lang.IllegalArgumentException;     case 93: goto $r7 = new java.lang.IllegalArgumentException;     case 94: goto $r7 = new java.lang.IllegalArgumentException;     case 95: goto $r7 = new java.lang.IllegalArgumentException;     case 96: goto $r7 = new java.lang.IllegalArgumentException;     case 97: goto return 5;     case 98: goto return 13;     case 99: goto return 3;     case 100: goto return 11;     case 101: goto return 7;     case 102: goto return 15;     default: goto $r7 = new java.lang.IllegalArgumentException; };	$r7 = new java.lang.IllegalArgumentException;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot interpret \'");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' as a hexadecimal digit");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r5);	throw $r7
;block_num 2