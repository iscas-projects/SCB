(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1652 0)
(declare-sort var821 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var821_reverse/-339691519 (String) String)
(declare-fun arr-String-init () (Array Int String))
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun toString/-2075883882 ((s String)) String s)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-String String)
(declare-const var215 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var215 null-String)))
(assert true)
(define-const var1674 Int (indexOf/-1209756239 var215 ".")) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>(".") 
(define-const var2420 String "") ; Statement: r40 = "" 
(define-const var1763 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i11 = (int) -1 
 ; Statement: if i0 <= $i11 goto r41 = r0 
(assert (<= var1674 var1763)) ; Cond: i0 <= $i11 
(define-const var687 String var215) ; Statement: r41 = r0 
(assert true) ; Non Conditional
(define-const var3070 String (var821_reverse/-339691519 var687)) ; Statement: $r38 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String reverse(java.lang.String)>(r41) 
(define-const var83 String var3070) ; Statement: r42 = $r38 
(define-const var2862 (Array Int String) arr-String-init) ; Statement: $r39 = newarray (java.lang.String)[5] 
(assert true)
(define-const var330 Int (length/-134980193 var3070)) ; Statement: $i1 = virtualinvoke $r38.<java.lang.String: int length()>() 
(define-const var1684 Int (mod var330 3)) ; Statement: $i2 = $i1 % 3 
 ; Statement: lookupswitch($i2) {     case 1: goto $r46 = new java.lang.StringBuilder;     case 2: goto $r47 = new java.lang.StringBuilder;     default: goto $r48 = new java.lang.StringBuilder; } 
(assert (and (not (= var1684 2)) (and (not (= var1684 1)) true))) ; Intersect: Negate: Cond: $i2 == 2   and Intersect: Negate: Cond: $i2 == 1   and Non Conditional  
(define-const var1240 String String-init) ; Statement: $r48 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1240)) ; Statement: specialinvoke $r48.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1240!1 String)
(assert (= var1240!1 ""))
(define-const var537 String var1240!1) ; Statement: r44 = $r48 
(define-const var1878 Int 0) ; Statement: i7 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var2021 Int (length/-134980193 var83)) ; Statement: $i8 = virtualinvoke r42.<java.lang.String: int length()>() 
(define-const var495 Int (div var2021 3)) ; Statement: $i9 = $i8 / 3 
 ; Statement: if i7 >= $i9 goto r45 = "" 
(assert (>= var1878 var495)) ; Cond: i7 >= $i9 
(define-const var597 String "") ; Statement: r45 = "" 
(define-const var212 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i13 = (int) -1 
 ; Statement: if i0 <= $i13 goto $r52 = new java.lang.StringBuilder 
(assert (<= var1674 var212)) ; Cond: i0 <= $i13 
(define-const var333 String String-init) ; Statement: $r52 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var333)) ; Statement: specialinvoke $r52.<java.lang.StringBuilder: void <init>()>() 
(declare-const var333!1 String)
(assert (= var333!1 ""))
(assert true)
(define-const var2019 String (toString/-2075883882 var537)) ; Statement: $r5 = virtualinvoke r44.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var1287 String (trim/-847153721 var2019)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.String: java.lang.String trim()>() 
(assert true)
(define-const var3832 String (append/672562846 var333!1 var1287)) ; Statement: $r7 = virtualinvoke $r52.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var333!2 String)
(assert (= var333!2 (str.++ var333!1 var1287)))
(assert true)
(define-const var3406 String (append/672562846 var3832 " ")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ") 
(declare-const var3832!1 String)
(assert (= var3832!1 (str.++ var3832 " ")))
(assert true)
(define-const var1913 String (append/672562846 var3406 var597)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r45) 
(declare-const var3406!1 String)
(assert (= var3406!1 (str.++ var3406 var597)))
(assert true)
(define-const var1417 String (append/672562846 var1913 "ONLY")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ONLY") 
(declare-const var1913!1 String)
(assert (= var1913!1 (str.++ var1913 "ONLY")))
(assert true)
(define-const var1065 String (toString/-2075883882 var1417)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1209756239=([java.lang.String, java.lang.String], int), cast-from-Int-to-Int=([int], int), var821_reverse/-339691519=([java.lang.String], java.lang.String), arr-String-init=([], java.lang.String[]), length/-134980193=([java.lang.String], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), trim/-847153721=([java.lang.String], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var215=r0, var1652=null_type, var1674=i0, var2420=r40, var1763=$i11, var687=r41, var821=cn.hutool.core.util.StrUtil, var3070=$r38, var83=r42, var2862=$r39, var330=$i1, var1684=$i2, var1240=$r48, var537=r44, var1878=i7, var2021=$i8, var495=$i9, var597=r45, var212=$i13, var333=$r52, var2019=$r5, var1287=$r6, var3832=$r7, var3406=$r8, var1913=$r9, var1417=$r10, var1065=$r11}
; {r0=var215, null_type=var1652, i0=var1674, r40=var2420, $i11=var1763, r41=var687, cn.hutool.core.util.StrUtil=var821, $r38=var3070, r42=var83, $r39=var2862, $i1=var330, $i2=var1684, $r48=var1240, r44=var537, i7=var1878, $i8=var2021, $i9=var495, r45=var597, $i13=var212, $r52=var333, $r5=var2019, $r6=var1287, $r7=var3832, $r8=var3406, $r9=var1913, $r10=var1417, $r11=var1065}
;seq <java.lang.String: int indexOf(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: java.lang.String trim()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int indexOf(java.lang.String)>": 1,"<java.lang.String: int length()>": 2,"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.String: java.lang.String trim()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4}
;stmts r0 := @parameter0: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>(".");	r40 = "";	$i11 = (int) -1;	if i0 <= $i11 goto r41 = r0;	r41 = r0;	$r38 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String reverse(java.lang.String)>(r41);	r42 = $r38;	$r39 = newarray (java.lang.String)[5];	$i1 = virtualinvoke $r38.<java.lang.String: int length()>();	$i2 = $i1 % 3;	lookupswitch($i2) {     case 1: goto $r46 = new java.lang.StringBuilder;     case 2: goto $r47 = new java.lang.StringBuilder;     default: goto $r48 = new java.lang.StringBuilder; };	$r48 = new java.lang.StringBuilder;	specialinvoke $r48.<java.lang.StringBuilder: void <init>()>();	r44 = $r48;	i7 = 0;	$i8 = virtualinvoke r42.<java.lang.String: int length()>();	$i9 = $i8 / 3;	if i7 >= $i9 goto r45 = "";	r45 = "";	$i13 = (int) -1;	if i0 <= $i13 goto $r52 = new java.lang.StringBuilder;	$r52 = new java.lang.StringBuilder;	specialinvoke $r52.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke r44.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = virtualinvoke $r5.<java.lang.String: java.lang.String trim()>();	$r7 = virtualinvoke $r52.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r45);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ONLY");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	return $r11
;block_num 7