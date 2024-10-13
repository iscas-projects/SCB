(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var727 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const var2803 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2803 null-String)))
(define-const var632 Bool (ite (= 1 0) true false)) ; Statement: z1 = 0 
(define-const var3895 String null-String) ; Statement: r1 = null 
(define-const var3409 String null-String) ; Statement: r4 = null 
(define-const var2767 String null-String) ; Statement: r3 = null 
(define-const var3726 String null-String) ; Statement: r2 = null 
(assert true)
(define-const var1808 Int (length/-134980193 var2803)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: tableswitch($i0) {     case 2: goto c32 = virtualinvoke r0.<java.lang.String: char charAt(int)>(1);     case 3: goto $c18 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0);     case 4: goto $c5 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0);     case 5: goto $c4 = virtualinvoke r0.<java.lang.String: char charAt(int)>(2);     case 6: goto $c3 = virtualinvoke r0.<java.lang.String: char charAt(int)>(1);     case 7: goto $c2 = virtualinvoke r0.<java.lang.String: char charAt(int)>(1);     case 8: goto $c1 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0);     case 9: goto c39 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0);     case 10: goto c40 = virtualinvoke r0.<java.lang.String: char charAt(int)>(1);     case 11: goto if r2 == null goto return z1;     case 12: goto r1 = "synchronized";     default: goto if r2 == null goto return z1; } 
(assert (and (not (= var1808 10)) (and (not (= var1808 9)) (and (not (= var1808 8)) (and (not (= var1808 7)) (and (not (= var1808 6)) (and (not (= var1808 5)) (and (not (= var1808 4)) (and (not (= var1808 3)) (and (not (= var1808 2)) true)))))))))) ; Intersect: Negate: Cond: $i0 == 10   and Intersect: Negate: Cond: $i0 == 9   and Intersect: Negate: Cond: $i0 == 8   and Intersect: Negate: Cond: $i0 == 7   and Intersect: Negate: Cond: $i0 == 6   and Intersect: Negate: Cond: $i0 == 5   and Intersect: Negate: Cond: $i0 == 4   and Intersect: Negate: Cond: $i0 == 3   and Intersect: Negate: Cond: $i0 == 2   and Non Conditional         
 ; Statement: if r2 == null goto return z1 
(assert (= var3726 null-String)) ; Cond: r2 == null 
 ; Statement: return z1 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var2803=r0, var727=null_type, var632=z1, var3895=r1, var3409=r4, var2767=r3, var3726=r2, var1808=$i0}
; {r0=var2803, null_type=var727, z1=var632, r1=var3895, r4=var3409, r3=var2767, r2=var3726, $i0=var1808}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	z1 = 0;	r1 = null;	r4 = null;	r3 = null;	r2 = null;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	tableswitch($i0) {     case 2: goto c32 = virtualinvoke r0.<java.lang.String: char charAt(int)>(1);     case 3: goto $c18 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0);     case 4: goto $c5 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0);     case 5: goto $c4 = virtualinvoke r0.<java.lang.String: char charAt(int)>(2);     case 6: goto $c3 = virtualinvoke r0.<java.lang.String: char charAt(int)>(1);     case 7: goto $c2 = virtualinvoke r0.<java.lang.String: char charAt(int)>(1);     case 8: goto $c1 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0);     case 9: goto c39 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0);     case 10: goto c40 = virtualinvoke r0.<java.lang.String: char charAt(int)>(1);     case 11: goto if r2 == null goto return z1;     case 12: goto r1 = "synchronized";     default: goto if r2 == null goto return z1; };	if r2 == null goto return z1;	return z1
;block_num 3