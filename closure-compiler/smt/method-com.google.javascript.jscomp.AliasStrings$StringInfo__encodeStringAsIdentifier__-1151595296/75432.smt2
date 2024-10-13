(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3624 0)
(declare-sort var611 0)
(declare-sort var3092 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var3092_min/-1112089438 (Int Int) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3624 var3624)
(declare-const null-String String)
(declare-const var3513 var3624) ; Statement: r3 := @this: com.google.javascript.jscomp.AliasStrings$StringInfo 
(assert (not (= var3513 null-var3624)))
(declare-const var3287 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3287 null-String)))
(declare-const var357 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var357 null-String)))
(assert true)
(define-const var3131 Int (length/-134980193 var357)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var703 Int (var3092_min/-1112089438 var3131 20)) ; Statement: i1 = staticinvoke <java.lang.Math: int min(int,int)>(i0, 20) 
(define-const var1930 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1930)) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1930!1 String)
(assert (= var1930!1 ""))
(assert true)
;(assert (append/672562846 var1930!1 var3287)) ; Statement: virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var1930!2 String)
(assert (= var1930!2 (str.++ var1930!1 var3287)))
(define-const var235 Bool (ite (= 1 0) true false)) ; Statement: z1 = 0 
(define-const var2067 Int 0) ; Statement: i5 = 0 
(assert true) ; Non Conditional
 ; Statement: if i5 >= i1 goto (branch) 
(assert (>= var2067 var703)) ; Cond: i5 >= i1 
 ; Statement: if i0 != i1 goto $i3 = virtualinvoke r0.<java.lang.String: int hashCode()>() 
(assert (not (not (= var3131 var703)))) ; Negate: Cond: i0 != i1  
(assert true)
(define-const var865 String (toString/-2075883882 var1930!2)) ; Statement: $r8 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), var3092_min/-1112089438=([int, int], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3624=com.google.javascript.jscomp.AliasStrings$StringInfo, var3513=r3, var3287=r2, var611=null_type, var357=r0, var3131=i0, var3092=java.lang.Math, var703=i1, var1930=$r11, var235=z1, var2067=i5, var865=$r8}
; {com.google.javascript.jscomp.AliasStrings$StringInfo=var3624, r3=var3513, r2=var3287, null_type=var611, r0=var357, i0=var3131, java.lang.Math=var3092, i1=var703, $r11=var1930, z1=var235, i5=var2067, $r8=var865}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.AliasStrings$StringInfo;	r2 := @parameter0: java.lang.String;	r0 := @parameter1: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	i1 = staticinvoke <java.lang.Math: int min(int,int)>(i0, 20);	$r11 = new java.lang.StringBuilder;	specialinvoke $r11.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	z1 = 0;	i5 = 0;	if i5 >= i1 goto (branch);	if i0 != i1 goto $i3 = virtualinvoke r0.<java.lang.String: int hashCode()>();	$r8 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 4