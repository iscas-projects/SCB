(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var739 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun value/1785131824 (var739) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var739 var739)
(declare-const var1723 var739) ; Statement: r1 := @this: com.google.javascript.rhino.Node$SideEffectFlags 
(assert (not (= var1723 null-var739)))
(define-const var893 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var893 "Side effects: ")) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("Side effects: ") 
(declare-const var893!1 String)
(assert (= var893!1 "Side effects: "))
(define-const var453 Int (value/1785131824 var1723)) ; Statement: $i0 = r1.<com.google.javascript.rhino.Node$SideEffectFlags: int value> 
(define-const var3234 Int (bv2nat (bvand ((_ int2bv 64) var453) ((_ int2bv 64) 2)))) ; Statement: $i1 = $i0 & 2 
 ; Statement: if $i1 == 0 goto $i2 = r1.<com.google.javascript.rhino.Node$SideEffectFlags: int value> 
(assert (= var3234 0)) ; Cond: $i1 == 0 
(define-const var1368 Int (value/1785131824 var1723)) ; Statement: $i2 = r1.<com.google.javascript.rhino.Node$SideEffectFlags: int value> 
(define-const var2218 Int (bv2nat (bvand ((_ int2bv 64) var1368) ((_ int2bv 64) 1)))) ; Statement: $i3 = $i2 & 1 
 ; Statement: if $i3 == 0 goto $i4 = r1.<com.google.javascript.rhino.Node$SideEffectFlags: int value> 
(assert (= var2218 0)) ; Cond: $i3 == 0 
(define-const var1854 Int (value/1785131824 var1723)) ; Statement: $i4 = r1.<com.google.javascript.rhino.Node$SideEffectFlags: int value> 
(define-const var1154 Int (bv2nat (bvand ((_ int2bv 64) var1854) ((_ int2bv 64) 8)))) ; Statement: $i5 = $i4 & 8 
 ; Statement: if $i5 == 0 goto $i6 = r1.<com.google.javascript.rhino.Node$SideEffectFlags: int value> 
(assert (= var1154 0)) ; Cond: $i5 == 0 
(define-const var958 Int (value/1785131824 var1723)) ; Statement: $i6 = r1.<com.google.javascript.rhino.Node$SideEffectFlags: int value> 
(define-const var2190 Int (bv2nat (bvand ((_ int2bv 64) var958) ((_ int2bv 64) 4)))) ; Statement: $i7 = $i6 & 4 
 ; Statement: if $i7 == 0 goto $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= var2190 0)) ; Cond: $i7 == 0 
(assert true)
(define-const var1361 String (toString/-2075883882 var893!1)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), value/1785131824=([com.google.javascript.rhino.Node$SideEffectFlags], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var739=com.google.javascript.rhino.Node$SideEffectFlags, var1723=r1, var893=$r0, var453=$i0, var3234=$i1, var1368=$i2, var2218=$i3, var1854=$i4, var1154=$i5, var958=$i6, var2190=$i7, var1361=$r2}
; {com.google.javascript.rhino.Node$SideEffectFlags=var739, r1=var1723, $r0=var893, $i0=var453, $i1=var3234, $i2=var1368, $i3=var2218, $i4=var1854, $i5=var1154, $i6=var958, $i7=var2190, $r2=var1361}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.rhino.Node$SideEffectFlags;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("Side effects: ");	$i0 = r1.<com.google.javascript.rhino.Node$SideEffectFlags: int value>;	$i1 = $i0 & 2;	if $i1 == 0 goto $i2 = r1.<com.google.javascript.rhino.Node$SideEffectFlags: int value>;	$i2 = r1.<com.google.javascript.rhino.Node$SideEffectFlags: int value>;	$i3 = $i2 & 1;	if $i3 == 0 goto $i4 = r1.<com.google.javascript.rhino.Node$SideEffectFlags: int value>;	$i4 = r1.<com.google.javascript.rhino.Node$SideEffectFlags: int value>;	$i5 = $i4 & 8;	if $i5 == 0 goto $i6 = r1.<com.google.javascript.rhino.Node$SideEffectFlags: int value>;	$i6 = r1.<com.google.javascript.rhino.Node$SideEffectFlags: int value>;	$i7 = $i6 & 4;	if $i7 == 0 goto $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 5