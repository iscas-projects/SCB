(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-1380519146 (String (Array Int Int) Int Int) void)
(declare-fun Int_parseInt/1370970945 (String) Int)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const var3856 (Array Int Int)) ; Statement: r0 := @parameter0: byte[] 
(assert (not (= var3856 null-__Array__Int__Int__)))
(declare-const var3357 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var3357 null-Int)))
(declare-const var3177 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var3177 null-Int)))
 ; Statement: tableswitch(i0) {     case 1: goto b123 = r0[i1];     case 2: goto b124 = r0[i1];     case 3: goto b126 = r0[i1];     case 4: goto b129 = r0[i1];     case 5: goto b133 = r0[i1];     case 6: goto b138 = r0[i1];     case 7: goto b144 = r0[i1];     case 8: goto b151 = r0[i1];     default: goto $r2 = new java.lang.String; } 
(assert (and (not (= var3177 8)) (and (not (= var3177 7)) (and (not (= var3177 6)) (and (not (= var3177 5)) (and (not (= var3177 4)) (and (not (= var3177 3)) (and (not (= var3177 2)) (and (not (= var3177 1)) true))))))))) ; Intersect: Negate: Cond: i0 == 8   and Intersect: Negate: Cond: i0 == 7   and Intersect: Negate: Cond: i0 == 6   and Intersect: Negate: Cond: i0 == 5   and Intersect: Negate: Cond: i0 == 4   and Intersect: Negate: Cond: i0 == 3   and Intersect: Negate: Cond: i0 == 2   and Intersect: Negate: Cond: i0 == 1   and Non Conditional        
(define-const var1212 String String-init) ; Statement: $r2 = new java.lang.String 
(assert true)
;(assert (<init>/-1380519146 var1212 var3856 var3357 var3177)) ; Statement: specialinvoke $r2.<java.lang.String: void <init>(byte[],int,int)>(r0, i1, i0) 

(declare-const var1212!1 String)
(declare-const var3856!1 (Array Int Int))
(declare-const var3357!1 Int)
(declare-const var3177!1 Int)
(define-const var969 Int (Int_parseInt/1370970945 var1212!1)) ; Statement: $i158 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>($r2) 
 ; Statement: return $i158 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.String), <init>/-1380519146=([java.lang.String, byte[], int, int], void), Int_parseInt/1370970945=([java.lang.String], int)}
; {var3856=r0, var3357=i1, var3177=i0, var1212=$r2, var969=$i158}
; {r0=var3856, i1=var3357, i0=var3177, $r2=var1212, $i158=var969}
;seq <java.lang.String: void <init>(byte[],int,int)>
;cnt {"<java.lang.String: void <init>(byte[],int,int)>": 1}
;stmts r0 := @parameter0: byte[];	i1 := @parameter1: int;	i0 := @parameter2: int;	tableswitch(i0) {     case 1: goto b123 = r0[i1];     case 2: goto b124 = r0[i1];     case 3: goto b126 = r0[i1];     case 4: goto b129 = r0[i1];     case 5: goto b133 = r0[i1];     case 6: goto b138 = r0[i1];     case 7: goto b144 = r0[i1];     case 8: goto b151 = r0[i1];     default: goto $r2 = new java.lang.String; };	$r2 = new java.lang.String;	specialinvoke $r2.<java.lang.String: void <init>(byte[],int,int)>(r0, i1, i0);	$i158 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>($r2);	return $i158
;block_num 2