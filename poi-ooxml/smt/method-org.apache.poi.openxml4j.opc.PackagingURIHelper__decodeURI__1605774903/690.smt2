(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var540 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun toASCIIString/-363261216 (var540) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var540 var540)
(declare-const var868 var540) ; Statement: r1 := @parameter0: java.net.URI 
(assert (not (= var868 null-var540)))
(define-const var248 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var248 64)) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>(int)>(64) 

(declare-const var248!1 String)
(declare-const var3940 Int)
(assert true)
(define-const var2484 String (toASCIIString/-363261216 var868)) ; Statement: r2 = virtualinvoke r1.<java.net.URI: java.lang.String toASCIIString()>() 
(assert true)
(define-const var307 Int (length/-134980193 var2484)) ; Statement: i0 = virtualinvoke r2.<java.lang.String: int length()>() 
(define-const var2668 Int 0) ; Statement: i7 = 0 
(assert true) ; Non Conditional
 ; Statement: if i7 >= i0 goto $r3 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var2668 var307)) ; Cond: i7 >= i0 
(assert true)
(define-const var1252 String (toString/-2075883882 var248!1)) ; Statement: $r3 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), toASCIIString/-363261216=([java.net.URI], java.lang.String), length/-134980193=([java.lang.String], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var540=java.net.URI, var868=r1, var248=$r11, var3940=64, var2484=r2, var307=i0, var2668=i7, var1252=$r3}
; {java.net.URI=var540, r1=var868, $r11=var248, 64=var3940, r2=var2484, i0=var307, i7=var2668, $r3=var1252}
;seq <java.lang.StringBuilder: void <init>(int)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.net.URI;	$r11 = new java.lang.StringBuilder;	specialinvoke $r11.<java.lang.StringBuilder: void <init>(int)>(64);	r2 = virtualinvoke r1.<java.net.URI: java.lang.String toASCIIString()>();	i0 = virtualinvoke r2.<java.lang.String: int length()>();	i7 = 0;	if i7 >= i0 goto $r3 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	$r3 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 3