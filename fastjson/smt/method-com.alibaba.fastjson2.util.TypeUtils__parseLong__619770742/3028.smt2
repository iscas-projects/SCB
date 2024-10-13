(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-1380519146 (String (Array Int Int) Int Int) void)
(declare-fun Int_parseLong/-436876155 (String) Int)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const var1396 (Array Int Int)) ; Statement: r0 := @parameter0: byte[] 
(assert (not (= var1396 null-__Array__Int__Int__)))
(declare-const var3131 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var3131 null-Int)))
(declare-const var3381 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var3381 null-Int)))
 ; Statement: tableswitch(i0) {     case 1: goto b159 = r0[i1];     case 2: goto b160 = r0[i1];     case 3: goto b162 = r0[i1];     case 4: goto b165 = r0[i1];     case 5: goto b169 = r0[i1];     case 6: goto b174 = r0[i1];     case 7: goto b180 = r0[i1];     case 8: goto b187 = r0[i1];     default: goto $r2 = new java.lang.String; } 
(assert (and (not (= var3381 8)) (and (not (= var3381 7)) (and (not (= var3381 6)) (and (not (= var3381 5)) (and (not (= var3381 4)) (and (not (= var3381 3)) (and (not (= var3381 2)) (and (not (= var3381 1)) true))))))))) ; Intersect: Negate: Cond: i0 == 8   and Intersect: Negate: Cond: i0 == 7   and Intersect: Negate: Cond: i0 == 6   and Intersect: Negate: Cond: i0 == 5   and Intersect: Negate: Cond: i0 == 4   and Intersect: Negate: Cond: i0 == 3   and Intersect: Negate: Cond: i0 == 2   and Intersect: Negate: Cond: i0 == 1   and Non Conditional        
(define-const var1693 String String-init) ; Statement: $r2 = new java.lang.String 
(assert true)
;(assert (<init>/-1380519146 var1693 var1396 var3131 var3381)) ; Statement: specialinvoke $r2.<java.lang.String: void <init>(byte[],int,int)>(r0, i1, i0) 

(declare-const var1693!1 String)
(declare-const var1396!1 (Array Int Int))
(declare-const var3131!1 Int)
(declare-const var3381!1 Int)
(define-const var3105 Int (Int_parseLong/-436876155 var1693!1)) ; Statement: $l194 = staticinvoke <java.lang.Long: long parseLong(java.lang.String)>($r2) 
 ; Statement: return $l194 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.String), <init>/-1380519146=([java.lang.String, byte[], int, int], void), Int_parseLong/-436876155=([java.lang.String], long)}
; {var1396=r0, var3131=i1, var3381=i0, var1693=$r2, var3105=$l194}
; {r0=var1396, i1=var3131, i0=var3381, $r2=var1693, $l194=var3105}
;seq <java.lang.String: void <init>(byte[],int,int)>
;cnt {"<java.lang.String: void <init>(byte[],int,int)>": 1}
;stmts r0 := @parameter0: byte[];	i1 := @parameter1: int;	i0 := @parameter2: int;	tableswitch(i0) {     case 1: goto b159 = r0[i1];     case 2: goto b160 = r0[i1];     case 3: goto b162 = r0[i1];     case 4: goto b165 = r0[i1];     case 5: goto b169 = r0[i1];     case 6: goto b174 = r0[i1];     case 7: goto b180 = r0[i1];     case 8: goto b187 = r0[i1];     default: goto $r2 = new java.lang.String; };	$r2 = new java.lang.String;	specialinvoke $r2.<java.lang.String: void <init>(byte[],int,int)>(r0, i1, i0);	$l194 = staticinvoke <java.lang.Long: long parseLong(java.lang.String)>($r2);	return $l194
;block_num 2