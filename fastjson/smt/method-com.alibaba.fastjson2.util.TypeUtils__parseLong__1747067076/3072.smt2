(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-253222812 (String (Array Int Int) Int Int) void)
(declare-fun Int_parseLong/-436876155 (String) Int)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const var3913 (Array Int Int)) ; Statement: r0 := @parameter0: char[] 
(assert (not (= var3913 null-__Array__Int__Int__)))
(declare-const var130 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var130 null-Int)))
(declare-const var1818 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var1818 null-Int)))
 ; Statement: tableswitch(i0) {     case 1: goto c159 = r0[i1];     case 2: goto c160 = r0[i1];     case 3: goto c162 = r0[i1];     case 4: goto c165 = r0[i1];     case 5: goto c169 = r0[i1];     case 6: goto c174 = r0[i1];     case 7: goto c180 = r0[i1];     case 8: goto c187 = r0[i1];     default: goto $r2 = new java.lang.String; } 
(assert (and (not (= var1818 8)) (and (not (= var1818 7)) (and (not (= var1818 6)) (and (not (= var1818 5)) (and (not (= var1818 4)) (and (not (= var1818 3)) (and (not (= var1818 2)) (and (not (= var1818 1)) true))))))))) ; Intersect: Negate: Cond: i0 == 8   and Intersect: Negate: Cond: i0 == 7   and Intersect: Negate: Cond: i0 == 6   and Intersect: Negate: Cond: i0 == 5   and Intersect: Negate: Cond: i0 == 4   and Intersect: Negate: Cond: i0 == 3   and Intersect: Negate: Cond: i0 == 2   and Intersect: Negate: Cond: i0 == 1   and Non Conditional        
(define-const var3316 String String-init) ; Statement: $r2 = new java.lang.String 
(assert true)
;(assert (<init>/-253222812 var3316 var3913 var130 var1818)) ; Statement: specialinvoke $r2.<java.lang.String: void <init>(char[],int,int)>(r0, i1, i0) 

(declare-const var3316!1 String)
(declare-const var3913!1 (Array Int Int))
(declare-const var130!1 Int)
(declare-const var1818!1 Int)
(define-const var35 Int (Int_parseLong/-436876155 var3316!1)) ; Statement: $l194 = staticinvoke <java.lang.Long: long parseLong(java.lang.String)>($r2) 
 ; Statement: return $l194 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.String), <init>/-253222812=([java.lang.String, char[], int, int], void), Int_parseLong/-436876155=([java.lang.String], long)}
; {var3913=r0, var130=i1, var1818=i0, var3316=$r2, var35=$l194}
; {r0=var3913, i1=var130, i0=var1818, $r2=var3316, $l194=var35}
;seq <java.lang.String: void <init>(char[],int,int)>
;cnt {"<java.lang.String: void <init>(char[],int,int)>": 1}
;stmts r0 := @parameter0: char[];	i1 := @parameter1: int;	i0 := @parameter2: int;	tableswitch(i0) {     case 1: goto c159 = r0[i1];     case 2: goto c160 = r0[i1];     case 3: goto c162 = r0[i1];     case 4: goto c165 = r0[i1];     case 5: goto c169 = r0[i1];     case 6: goto c174 = r0[i1];     case 7: goto c180 = r0[i1];     case 8: goto c187 = r0[i1];     default: goto $r2 = new java.lang.String; };	$r2 = new java.lang.String;	specialinvoke $r2.<java.lang.String: void <init>(char[],int,int)>(r0, i1, i0);	$l194 = staticinvoke <java.lang.Long: long parseLong(java.lang.String)>($r2);	return $l194
;block_num 2