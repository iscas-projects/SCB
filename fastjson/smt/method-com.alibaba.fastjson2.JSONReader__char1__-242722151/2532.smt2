(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3070 0)
(declare-sort var1236 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1236-init () var1236)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun info/-1659839707 (var3070 String) String)
(declare-fun <init>/-2099196170 (var1236 String) void)
(declare-const null-var3070 var3070)
(declare-const null-Int Int)
(declare-const var3763 var3070) ; Statement: r1 := @this: com.alibaba.fastjson2.JSONReader 
(assert (not (= var3763 null-var3070)))
(declare-const var3520 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3520 null-Int)))
 ; Statement: tableswitch(i0) {     case 34: goto $c1 = (char) i0;     case 35: goto $c1 = (char) i0;     case 36: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 37: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 38: goto $c1 = (char) i0;     case 39: goto $c1 = (char) i0;     case 40: goto $c1 = (char) i0;     case 41: goto $c1 = (char) i0;     case 42: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 43: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 44: goto $c1 = (char) i0;     case 45: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 46: goto $c1 = (char) i0;     case 47: goto $c1 = (char) i0;     case 48: goto return 0;     case 49: goto return 1;     case 50: goto return 2;     case 51: goto return 3;     case 52: goto return 4;     case 53: goto return 5;     case 54: goto return 6;     case 55: goto return 7;     case 56: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 57: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 58: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 59: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 60: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 61: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 62: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 63: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 64: goto $c1 = (char) i0;     case 65: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 66: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 67: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 68: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 69: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 70: goto return 12;     case 71: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 72: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 73: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 74: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 75: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 76: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 77: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 78: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 79: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 80: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 81: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 82: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 83: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 84: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 85: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 86: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 87: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 88: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 89: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 90: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 91: goto $c1 = (char) i0;     case 92: goto $c1 = (char) i0;     case 93: goto $c1 = (char) i0;     case 94: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 95: goto $c1 = (char) i0;     case 96: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 97: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 98: goto return 8;     case 99: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 100: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 101: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 102: goto return 12;     case 103: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 104: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 105: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 106: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 107: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 108: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 109: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 110: goto return 10;     case 111: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 112: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 113: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 114: goto return 13;     case 115: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 116: goto return 9;     case 117: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 118: goto return 11;     default: goto $r0 = new com.alibaba.fastjson2.JSONException; } 
(assert (and (not (= var3520 35)) (and (not (= var3520 34)) true))) ; Intersect: Negate: Cond: i0 == 35   and Intersect: Negate: Cond: i0 == 34   and Non Conditional  
(define-const var1624 var1236 var1236-init) ; Statement: $r0 = new com.alibaba.fastjson2.JSONException 
(define-const var1200 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1200)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1200!1 String)
(assert (= var1200!1 ""))
(assert true)
(define-const var3761 String (append/672562846 var1200!1 "unclosed.str \u0027\u005c")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("unclosed.str \'\\") 
(declare-const var1200!2 String)
(assert (= var1200!2 (str.++ var1200!1 "unclosed.str \u0027\u005c")))
(define-const var74 Int (cast-from-Int-to-Int var3520)) ; Statement: $c2 = (char) i0 
(assert true)
(define-const var1403 String (append/-1166366385 var3761 var74)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c2) 
(declare-const var3761!1 String)
(assert (str.prefixof var3761 var3761!1))
(assert true)
(define-const var2927 String (toString/-2075883882 var1403)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var1677 String (info/-1659839707 var3763 var2927)) ; Statement: $r6 = virtualinvoke r1.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r5) 
(assert true)
;(assert (<init>/-2099196170 var1624 var1677)) ; Statement: specialinvoke $r0.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r6) 

(declare-const var1624!1 var1236)
(declare-const var1677!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1236-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), cast-from-Int-to-Int=([int], char), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), info/-1659839707=([com.alibaba.fastjson2.JSONReader, java.lang.String], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var3070=com.alibaba.fastjson2.JSONReader, var3763=r1, var3520=i0, var1236=com.alibaba.fastjson2.JSONException, var1624=$r0, var1200=$r2, var3761=$r3, var74=$c2, var1403=$r4, var2927=$r5, var1677=$r6}
; {com.alibaba.fastjson2.JSONReader=var3070, r1=var3763, i0=var3520, com.alibaba.fastjson2.JSONException=var1236, $r0=var1624, $r2=var1200, $r3=var3761, $c2=var74, $r4=var1403, $r5=var2927, $r6=var1677}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.alibaba.fastjson2.JSONReader;	i0 := @parameter0: int;	tableswitch(i0) {     case 34: goto $c1 = (char) i0;     case 35: goto $c1 = (char) i0;     case 36: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 37: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 38: goto $c1 = (char) i0;     case 39: goto $c1 = (char) i0;     case 40: goto $c1 = (char) i0;     case 41: goto $c1 = (char) i0;     case 42: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 43: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 44: goto $c1 = (char) i0;     case 45: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 46: goto $c1 = (char) i0;     case 47: goto $c1 = (char) i0;     case 48: goto return 0;     case 49: goto return 1;     case 50: goto return 2;     case 51: goto return 3;     case 52: goto return 4;     case 53: goto return 5;     case 54: goto return 6;     case 55: goto return 7;     case 56: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 57: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 58: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 59: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 60: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 61: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 62: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 63: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 64: goto $c1 = (char) i0;     case 65: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 66: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 67: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 68: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 69: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 70: goto return 12;     case 71: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 72: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 73: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 74: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 75: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 76: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 77: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 78: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 79: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 80: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 81: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 82: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 83: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 84: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 85: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 86: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 87: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 88: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 89: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 90: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 91: goto $c1 = (char) i0;     case 92: goto $c1 = (char) i0;     case 93: goto $c1 = (char) i0;     case 94: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 95: goto $c1 = (char) i0;     case 96: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 97: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 98: goto return 8;     case 99: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 100: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 101: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 102: goto return 12;     case 103: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 104: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 105: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 106: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 107: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 108: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 109: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 110: goto return 10;     case 111: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 112: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 113: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 114: goto return 13;     case 115: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 116: goto return 9;     case 117: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 118: goto return 11;     default: goto $r0 = new com.alibaba.fastjson2.JSONException; };	$r0 = new com.alibaba.fastjson2.JSONException;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("unclosed.str \'\\");	$c2 = (char) i0;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = virtualinvoke r1.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r5);	specialinvoke $r0.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r6);	throw $r0
;block_num 2