(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-253222812 (String (Array Int Int) Int Int) void)
(declare-fun Int_parseInt/1370970945 (String) Int)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const var1554 (Array Int Int)) ; Statement: r0 := @parameter0: char[] 
(assert (not (= var1554 null-__Array__Int__Int__)))
(declare-const var2403 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var2403 null-Int)))
(declare-const var1194 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var1194 null-Int)))
 ; Statement: tableswitch(i0) {     case 1: goto c123 = r0[i1];     case 2: goto c124 = r0[i1];     case 3: goto c126 = r0[i1];     case 4: goto c129 = r0[i1];     case 5: goto c133 = r0[i1];     case 6: goto c138 = r0[i1];     case 7: goto c144 = r0[i1];     case 8: goto c151 = r0[i1];     default: goto $r2 = new java.lang.String; } 
(assert (and (not (= var1194 8)) (and (not (= var1194 7)) (and (not (= var1194 6)) (and (not (= var1194 5)) (and (not (= var1194 4)) (and (not (= var1194 3)) (and (not (= var1194 2)) (and (not (= var1194 1)) true))))))))) ; Intersect: Negate: Cond: i0 == 8   and Intersect: Negate: Cond: i0 == 7   and Intersect: Negate: Cond: i0 == 6   and Intersect: Negate: Cond: i0 == 5   and Intersect: Negate: Cond: i0 == 4   and Intersect: Negate: Cond: i0 == 3   and Intersect: Negate: Cond: i0 == 2   and Intersect: Negate: Cond: i0 == 1   and Non Conditional        
(define-const var710 String String-init) ; Statement: $r2 = new java.lang.String 
(assert true)
;(assert (<init>/-253222812 var710 var1554 var2403 var1194)) ; Statement: specialinvoke $r2.<java.lang.String: void <init>(char[],int,int)>(r0, i1, i0) 

(declare-const var710!1 String)
(declare-const var1554!1 (Array Int Int))
(declare-const var2403!1 Int)
(declare-const var1194!1 Int)
(define-const var3557 Int (Int_parseInt/1370970945 var710!1)) ; Statement: $i158 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>($r2) 
 ; Statement: return $i158 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.String), <init>/-253222812=([java.lang.String, char[], int, int], void), Int_parseInt/1370970945=([java.lang.String], int)}
; {var1554=r0, var2403=i1, var1194=i0, var710=$r2, var3557=$i158}
; {r0=var1554, i1=var2403, i0=var1194, $r2=var710, $i158=var3557}
;seq <java.lang.String: void <init>(char[],int,int)>
;cnt {"<java.lang.String: void <init>(char[],int,int)>": 1}
;stmts r0 := @parameter0: char[];	i1 := @parameter1: int;	i0 := @parameter2: int;	tableswitch(i0) {     case 1: goto c123 = r0[i1];     case 2: goto c124 = r0[i1];     case 3: goto c126 = r0[i1];     case 4: goto c129 = r0[i1];     case 5: goto c133 = r0[i1];     case 6: goto c138 = r0[i1];     case 7: goto c144 = r0[i1];     case 8: goto c151 = r0[i1];     default: goto $r2 = new java.lang.String; };	$r2 = new java.lang.String;	specialinvoke $r2.<java.lang.String: void <init>(char[],int,int)>(r0, i1, i0);	$i158 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>($r2);	return $i158
;block_num 2