(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2798 0)
(declare-sort var2327 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun Int_parseLong/-436876155 (String) Int)
(declare-const null-var2798 var2798)
(declare-const null-String String)
(declare-const var2743 var2798) ; Statement: r5 := @this: com.mysql.cj.jdbc.StatementImpl 
(assert (not (= var2743 null-var2798)))
(declare-const var3200 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3200 null-String)))
(define-const var1352 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1352)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1352!1 String)
(assert (= var1352!1 ""))
(define-const var1511 Int 0) ; Statement: c4 = 0 
(assert true)
(define-const var1926 Int (length/-134980193 var3200)) ; Statement: i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var3421 Int 0) ; Statement: i5 = 0 
(assert true) ; Non Conditional
 ; Statement: if i5 >= i0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c4) 
(assert (>= var3421 var1926)) ; Cond: i5 >= i0 
(assert true)
;(assert (append/-1166366385 var1352!1 var1511)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c4) 
(declare-const var1352!2 String)
(assert (str.prefixof var1352!1 var1352!2))
(define-const var3883 Int (+ var3421 1)) ; Statement: i6 = i5 + 1 
(assert true) ; Non Conditional
 ; Statement: if i6 >= i0 goto $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var3883 var1926)) ; Cond: i6 >= i0 
(assert true)
(define-const var3018 String (toString/-2075883882 var1352!2)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var764 Int (Int_parseLong/-436876155 var3018)) ; Statement: $l3 = staticinvoke <java.lang.Long: long parseLong(java.lang.String)>($r2) 
(define-const var3690 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3690)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3690!1 String)
(assert (= var3690!1 ""))
(assert true) ; Non Conditional
 ; Statement: if i6 >= i0 goto virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c4) 
(assert (>= var3883 var1926)) ; Cond: i6 >= i0 
(assert true)
;(assert (append/-1166366385 var3690!1 var1511)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c4) 
(declare-const var3690!2 String)
(assert (str.prefixof var3690!1 var3690!2))
(define-const var608 Int (+ var3883 1)) ; Statement: i7 = i6 + 1 
(assert true) ; Non Conditional
 ; Statement: if i7 >= i0 goto $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var608 var1926)) ; Cond: i7 >= i0 
(assert true)
(define-const var1741 String (toString/-2075883882 var3690!2)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3064 Int (Int_parseLong/-436876155 var1741)) ; Statement: $l2 = staticinvoke <java.lang.Long: long parseLong(java.lang.String)>($r4) 
(define-const var3114 Int (- var764 var3064)) ; Statement: $l1 = $l3 - $l2 
 ; Statement: return $l1 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), length/-134980193=([java.lang.String], int), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), Int_parseLong/-436876155=([java.lang.String], long)}
; {var2798=com.mysql.cj.jdbc.StatementImpl, var2743=r5, var3200=r1, var2327=null_type, var1352=$r0, var1511=c4, var1926=i0, var3421=i5, var3883=i6, var3018=$r2, var764=$l3, var3690=$r3, var608=i7, var1741=$r4, var3064=$l2, var3114=$l1}
; {com.mysql.cj.jdbc.StatementImpl=var2798, r5=var2743, r1=var3200, null_type=var2327, $r0=var1352, c4=var1511, i0=var1926, i5=var3421, i6=var3883, $r2=var3018, $l3=var764, $r3=var3690, i7=var608, $r4=var1741, $l2=var3064, $l1=var3114}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r5 := @this: com.mysql.cj.jdbc.StatementImpl;	r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	c4 = 0;	i0 = virtualinvoke r1.<java.lang.String: int length()>();	i5 = 0;	if i5 >= i0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c4);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c4);	i6 = i5 + 1;	if i6 >= i0 goto $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$l3 = staticinvoke <java.lang.Long: long parseLong(java.lang.String)>($r2);	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	if i6 >= i0 goto virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c4);	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c4);	i7 = i6 + 1;	if i7 >= i0 goto $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	$l2 = staticinvoke <java.lang.Long: long parseLong(java.lang.String)>($r4);	$l1 = $l3 - $l2;	return $l1
;block_num 9