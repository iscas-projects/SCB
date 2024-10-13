(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2485 0)
(declare-sort var1632 0)
(declare-sort var3871 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1632_getDefault/-641693464 () var1632)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var3871-init () var3871)
(declare-fun <init>/1909349671 (var3871 String String) void)
(declare-fun hasMoreTokens/711654492 (var3871) Bool)
(declare-fun var1632-init () var1632)
(declare-fun <init>/1336938971 (var1632 String String) void)
(declare-const null-String String)
(declare-const var615 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var615 null-String)))
 ; Statement: if r3 != null goto staticinvoke <java.util.Locale: java.util.Locale getDefault()>() 
(assert (not (= var615 null-String))) ; Cond: r3 != null 
;(assert var1632_getDefault/-641693464) ; Statement: staticinvoke <java.util.Locale: java.util.Locale getDefault()>() 
(assert true)
(define-const var227 Int (length/-134980193 var615)) ; Statement: $i0 = virtualinvoke r3.<java.lang.String: int length()>() 
 ; Statement: if $i0 <= 0 goto $r8 = new java.util.StringTokenizer 
(assert (<= var227 0)) ; Cond: $i0 <= 0 
(define-const var3049 var3871 var3871-init) ; Statement: $r8 = new java.util.StringTokenizer 
(assert true)
;(assert (<init>/1909349671 var3049 var615 ",_ ")) ; Statement: specialinvoke $r8.<java.util.StringTokenizer: void <init>(java.lang.String,java.lang.String)>(r3, ",_ ") 

(declare-const var3049!1 var3871)
(declare-const var615!1 String)
(declare-const var576 String)
(define-const var826 String "") ; Statement: r5 = "" 
(define-const var1504 String "") ; Statement: r6 = "" 
(assert true)
(define-const var1928 Bool (hasMoreTokens/711654492 var3049!1)) ; Statement: $z2 = virtualinvoke $r8.<java.util.StringTokenizer: boolean hasMoreTokens()>() 
 ; Statement: if $z2 == 0 goto $z0 = virtualinvoke $r8.<java.util.StringTokenizer: boolean hasMoreTokens()>() 
(assert (= (ite var1928 1 0) 0)) ; Cond: $z2 == 0 
(assert true)
(define-const var2437 Bool (hasMoreTokens/711654492 var3049!1)) ; Statement: $z0 = virtualinvoke $r8.<java.util.StringTokenizer: boolean hasMoreTokens()>() 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke $r8.<java.util.StringTokenizer: boolean hasMoreTokens()>() 
(assert (= (ite var2437 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var2294 Bool (hasMoreTokens/711654492 var3049!1)) ; Statement: $z1 = virtualinvoke $r8.<java.util.StringTokenizer: boolean hasMoreTokens()>() 
 ; Statement: if $z1 != 0 goto $r10 = new java.util.Locale 
(assert (not (not (= (ite var2294 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(define-const var652 var1632 var1632-init) ; Statement: $r9 = new java.util.Locale 
(assert true)
;(assert (<init>/1336938971 var652 var826 var1504)) ; Statement: specialinvoke $r9.<java.util.Locale: void <init>(java.lang.String,java.lang.String)>(r5, r6) 

(declare-const var652!1 var1632)
(declare-const var826!1 String)
(declare-const var1504!1 String)
(define-const var1329 var1632 var652!1) ; Statement: r7 = $r9 
 ; Statement: goto [?= return r7] 
(assert true) ; Non Conditional
 ; Statement: return r7 
(check-sat)
(get-model)
(get-unsat-core)
; {var1632_getDefault/-641693464=([], java.util.Locale), length/-134980193=([java.lang.String], int), var3871-init=([], java.util.StringTokenizer), <init>/1909349671=([java.util.StringTokenizer, java.lang.String, java.lang.String], void), hasMoreTokens/711654492=([java.util.StringTokenizer], boolean), var1632-init=([], java.util.Locale), <init>/1336938971=([java.util.Locale, java.lang.String, java.lang.String], void)}
; {var615=r3, var2485=null_type, var1632=java.util.Locale, var227=$i0, var3871=java.util.StringTokenizer, var3049=$r8, var576=",_ ", var826=r5, var1504=r6, var1928=$z2, var2437=$z0, var2294=$z1, var652=$r9, var1329=r7}
; {r3=var615, null_type=var2485, java.util.Locale=var1632, $i0=var227, java.util.StringTokenizer=var3871, $r8=var3049, ",_ "=var576, r5=var826, r6=var1504, $z2=var1928, $z0=var2437, $z1=var2294, $r9=var652, r7=var1329}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r3 := @parameter0: java.lang.String;	if r3 != null goto staticinvoke <java.util.Locale: java.util.Locale getDefault()>();	staticinvoke <java.util.Locale: java.util.Locale getDefault()>();	$i0 = virtualinvoke r3.<java.lang.String: int length()>();	if $i0 <= 0 goto $r8 = new java.util.StringTokenizer;	$r8 = new java.util.StringTokenizer;	specialinvoke $r8.<java.util.StringTokenizer: void <init>(java.lang.String,java.lang.String)>(r3, ",_ ");	r5 = "";	r6 = "";	$z2 = virtualinvoke $r8.<java.util.StringTokenizer: boolean hasMoreTokens()>();	if $z2 == 0 goto $z0 = virtualinvoke $r8.<java.util.StringTokenizer: boolean hasMoreTokens()>();	$z0 = virtualinvoke $r8.<java.util.StringTokenizer: boolean hasMoreTokens()>();	if $z0 == 0 goto $z1 = virtualinvoke $r8.<java.util.StringTokenizer: boolean hasMoreTokens()>();	$z1 = virtualinvoke $r8.<java.util.StringTokenizer: boolean hasMoreTokens()>();	if $z1 != 0 goto $r10 = new java.util.Locale;	$r9 = new java.util.Locale;	specialinvoke $r9.<java.util.Locale: void <init>(java.lang.String,java.lang.String)>(r5, r6);	r7 = $r9;	goto [?= return r7];	return r7
;block_num 7