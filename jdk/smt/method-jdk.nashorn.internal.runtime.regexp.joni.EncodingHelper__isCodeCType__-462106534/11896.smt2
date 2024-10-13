(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2530 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2530-init () var2530)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1084991535 (var2530 String) void)
(declare-const null-Int Int)
(declare-const var2557 Int) ; Statement: i1 := @parameter0: int 
(assert (not (= var2557 null-Int)))
(declare-const var3867 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3867 null-Int)))
 ; Statement: tableswitch(i0) {     case 0: goto $z4 = staticinvoke <jdk.nashorn.internal.runtime.regexp.joni.EncodingHelper: boolean isNewLine(int)>(i1);     case 1: goto $i21 = staticinvoke <java.lang.Character: int getType(int)>(i1);     case 2: goto if i1 == 9 goto $z6 = 1;     case 3: goto i24 = staticinvoke <java.lang.Character: int getType(int)>(i1);     case 4: goto $z3 = staticinvoke <jdk.nashorn.internal.runtime.regexp.joni.EncodingHelper: boolean isDigit(int)>(i1);     case 5: goto tableswitch(i1) {     case 9: goto return 0;     case 10: goto return 0;     case 11: goto return 0;     case 12: goto return 0;     case 13: goto return 0;     default: goto i25 = staticinvoke <java.lang.Character: int getType(int)>(i1); };     case 6: goto $z2 = staticinvoke <java.lang.Character: boolean isLowerCase(int)>(i1);     case 7: goto i26 = staticinvoke <java.lang.Character: int getType(int)>(i1);     case 8: goto $i11 = staticinvoke <java.lang.Character: int getType(int)>(i1);     case 9: goto tableswitch(i1) {     case 9: goto return 1;     case 10: goto return 1;     case 11: goto return 1;     case 12: goto return 1;     case 13: goto return 1;     default: goto $i8 = staticinvoke <java.lang.Character: int getType(int)>(i1); };     case 10: goto $z1 = staticinvoke <java.lang.Character: boolean isUpperCase(int)>(i1);     case 11: goto $z0 = staticinvoke <jdk.nashorn.internal.runtime.regexp.joni.EncodingHelper: boolean isXDigit(int)>(i1);     case 12: goto $i5 = staticinvoke <java.lang.Character: int getType(int)>(i1);     case 13: goto $i2 = staticinvoke <java.lang.Character: int getType(int)>(i1);     case 14: goto if i1 >= 128 goto $z14 = 0;     default: goto $r6 = new java.lang.RuntimeException; } 
(assert (and (not (= var3867 14)) (and (not (= var3867 13)) (and (not (= var3867 12)) (and (not (= var3867 11)) (and (not (= var3867 10)) (and (not (= var3867 9)) (and (not (= var3867 8)) (and (not (= var3867 7)) (and (not (= var3867 6)) (and (not (= var3867 5)) (and (not (= var3867 4)) (and (not (= var3867 3)) (and (not (= var3867 2)) (and (not (= var3867 1)) (and (not (= var3867 0)) true)))))))))))))))) ; Intersect: Negate: Cond: i0 == 14   and Intersect: Negate: Cond: i0 == 13   and Intersect: Negate: Cond: i0 == 12   and Intersect: Negate: Cond: i0 == 11   and Intersect: Negate: Cond: i0 == 10   and Intersect: Negate: Cond: i0 == 9   and Intersect: Negate: Cond: i0 == 8   and Intersect: Negate: Cond: i0 == 7   and Intersect: Negate: Cond: i0 == 6   and Intersect: Negate: Cond: i0 == 5   and Intersect: Negate: Cond: i0 == 4   and Intersect: Negate: Cond: i0 == 3   and Intersect: Negate: Cond: i0 == 2   and Intersect: Negate: Cond: i0 == 1   and Intersect: Negate: Cond: i0 == 0   and Non Conditional               
(define-const var2413 var2530 var2530-init) ; Statement: $r6 = new java.lang.RuntimeException 
(define-const var525 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var525)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var525!1 String)
(assert (= var525!1 ""))
(assert true)
(define-const var2136 String (append/672562846 var525!1 "illegal character type: ")) ; Statement: $r2 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("illegal character type: ") 
(declare-const var525!2 String)
(assert (= var525!2 (str.++ var525!1 "illegal character type: ")))
(assert true)
(define-const var893 String (append/-1001720160 var2136 var3867)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var2136!1 String)
(assert (str.prefixof var2136 var2136!1))
(assert true)
(define-const var1267 String (toString/-2075883882 var893)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1084991535 var2413 var1267)) ; Statement: specialinvoke $r6.<java.lang.RuntimeException: void <init>(java.lang.String)>($r4) 

(declare-const var2413!1 var2530)
(declare-const var1267!1 String)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {var2530-init=([], java.lang.RuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1084991535=([java.lang.RuntimeException, java.lang.String], void)}
; {var2557=i1, var3867=i0, var2530=java.lang.RuntimeException, var2413=$r6, var525=$r5, var2136=$r2, var893=$r3, var1267=$r4}
; {i1=var2557, i0=var3867, java.lang.RuntimeException=var2530, $r6=var2413, $r5=var525, $r2=var2136, $r3=var893, $r4=var1267}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts i1 := @parameter0: int;	i0 := @parameter1: int;	tableswitch(i0) {     case 0: goto $z4 = staticinvoke <jdk.nashorn.internal.runtime.regexp.joni.EncodingHelper: boolean isNewLine(int)>(i1);     case 1: goto $i21 = staticinvoke <java.lang.Character: int getType(int)>(i1);     case 2: goto if i1 == 9 goto $z6 = 1;     case 3: goto i24 = staticinvoke <java.lang.Character: int getType(int)>(i1);     case 4: goto $z3 = staticinvoke <jdk.nashorn.internal.runtime.regexp.joni.EncodingHelper: boolean isDigit(int)>(i1);     case 5: goto tableswitch(i1) {     case 9: goto return 0;     case 10: goto return 0;     case 11: goto return 0;     case 12: goto return 0;     case 13: goto return 0;     default: goto i25 = staticinvoke <java.lang.Character: int getType(int)>(i1); };     case 6: goto $z2 = staticinvoke <java.lang.Character: boolean isLowerCase(int)>(i1);     case 7: goto i26 = staticinvoke <java.lang.Character: int getType(int)>(i1);     case 8: goto $i11 = staticinvoke <java.lang.Character: int getType(int)>(i1);     case 9: goto tableswitch(i1) {     case 9: goto return 1;     case 10: goto return 1;     case 11: goto return 1;     case 12: goto return 1;     case 13: goto return 1;     default: goto $i8 = staticinvoke <java.lang.Character: int getType(int)>(i1); };     case 10: goto $z1 = staticinvoke <java.lang.Character: boolean isUpperCase(int)>(i1);     case 11: goto $z0 = staticinvoke <jdk.nashorn.internal.runtime.regexp.joni.EncodingHelper: boolean isXDigit(int)>(i1);     case 12: goto $i5 = staticinvoke <java.lang.Character: int getType(int)>(i1);     case 13: goto $i2 = staticinvoke <java.lang.Character: int getType(int)>(i1);     case 14: goto if i1 >= 128 goto $z14 = 0;     default: goto $r6 = new java.lang.RuntimeException; };	$r6 = new java.lang.RuntimeException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("illegal character type: ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r6.<java.lang.RuntimeException: void <init>(java.lang.String)>($r4);	throw $r6
;block_num 2