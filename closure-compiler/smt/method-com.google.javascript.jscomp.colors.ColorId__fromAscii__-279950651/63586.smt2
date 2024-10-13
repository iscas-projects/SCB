(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var334 0)
(declare-sort var3797 0)
(declare-sort var1642 0)
(declare-sort var1673 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var1642_fromBytesAt/-1752401169 (var1673 Int var3797) var1642)
(declare-fun cast-from-String-to-var1673 (String) var1673)
(declare-const null-String String)
(declare-const var1642-ASCII_AT var3797)
(declare-const var2271 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2271 null-String)))
(assert true)
(define-const var3572 Int (length/-134980193 var2271)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var1998 var3797 var1642-ASCII_AT) ; Statement: $r1 = <com.google.javascript.jscomp.colors.ColorId: com.google.javascript.jscomp.colors.ColorId$ByteAt ASCII_AT> 
(define-const var2610 var1642 (var1642_fromBytesAt/-1752401169 (cast-from-String-to-var1673 var2271) var3572 var1998)) ; Statement: $r2 = staticinvoke <com.google.javascript.jscomp.colors.ColorId: com.google.javascript.jscomp.colors.ColorId fromBytesAt(java.lang.Object,int,com.google.javascript.jscomp.colors.ColorId$ByteAt)>(r0, $i0, $r1) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), var1642_fromBytesAt/-1752401169=([java.lang.Object, int, com.google.javascript.jscomp.colors.ColorId$ByteAt], com.google.javascript.jscomp.colors.ColorId), cast-from-String-to-var1673=([java.lang.String], java.lang.Object)}
; {var2271=r0, var334=null_type, var3572=$i0, var3797=com.google.javascript.jscomp.colors.ColorId$ByteAt, var1642=com.google.javascript.jscomp.colors.ColorId, var1998=$r1, var1673=java.lang.Object, var2610=$r2}
; {r0=var2271, null_type=var334, $i0=var3572, com.google.javascript.jscomp.colors.ColorId$ByteAt=var3797, com.google.javascript.jscomp.colors.ColorId=var1642, $r1=var1998, java.lang.Object=var1673, $r2=var2610}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	$r1 = <com.google.javascript.jscomp.colors.ColorId: com.google.javascript.jscomp.colors.ColorId$ByteAt ASCII_AT>;	$r2 = staticinvoke <com.google.javascript.jscomp.colors.ColorId: com.google.javascript.jscomp.colors.ColorId fromBytesAt(java.lang.Object,int,com.google.javascript.jscomp.colors.ColorId$ByteAt)>(r0, $i0, $r1);	return $r2
;block_num 1