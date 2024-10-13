(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1128 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-1380519146 (String (Array Int Int) Int Int) void)
(declare-fun var1128_parseBoolean/746105335 (String) Bool)
(declare-fun var1128_valueOf/1602327315 (Bool) var1128)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const var1260 (Array Int Int)) ; Statement: r0 := @parameter0: byte[] 
(assert (not (= var1260 null-__Array__Int__Int__)))
(declare-const var2799 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var2799 null-Int)))
(declare-const var1174 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var1174 null-Int)))
 ; Statement: tableswitch(i0) {     case 0: goto return null;     case 1: goto b18 = r0[i1];     case 2: goto $r7 = new java.lang.String;     case 3: goto $r7 = new java.lang.String;     case 4: goto $b11 = r0[i1];     case 5: goto $b2 = r0[i1];     default: goto $r7 = new java.lang.String; } 
(assert (and (not (= var1174 1)) (and (not (= var1174 0)) true))) ; Intersect: Negate: Cond: i0 == 1   and Intersect: Negate: Cond: i0 == 0   and Non Conditional  
(define-const var3625 String String-init) ; Statement: $r7 = new java.lang.String 
(assert true)
;(assert (<init>/-1380519146 var3625 var1260 var2799 var1174)) ; Statement: specialinvoke $r7.<java.lang.String: void <init>(byte[],int,int)>(r0, i1, i0) 

(declare-const var3625!1 String)
(declare-const var1260!1 (Array Int Int))
(declare-const var2799!1 Int)
(declare-const var1174!1 Int)
(define-const var2743 Bool (var1128_parseBoolean/746105335 var3625!1)) ; Statement: $z0 = staticinvoke <java.lang.Boolean: boolean parseBoolean(java.lang.String)>($r7) 
(define-const var1842 var1128 (var1128_valueOf/1602327315 var2743)) ; Statement: $r6 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>($z0) 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.String), <init>/-1380519146=([java.lang.String, byte[], int, int], void), var1128_parseBoolean/746105335=([java.lang.String], boolean), var1128_valueOf/1602327315=([boolean], java.lang.Boolean)}
; {var1260=r0, var2799=i1, var1174=i0, var3625=$r7, var1128=java.lang.Boolean, var2743=$z0, var1842=$r6}
; {r0=var1260, i1=var2799, i0=var1174, $r7=var3625, java.lang.Boolean=var1128, $z0=var2743, $r6=var1842}
;seq <java.lang.String: void <init>(byte[],int,int)>
;cnt {"<java.lang.String: void <init>(byte[],int,int)>": 1}
;stmts r0 := @parameter0: byte[];	i1 := @parameter1: int;	i0 := @parameter2: int;	tableswitch(i0) {     case 0: goto return null;     case 1: goto b18 = r0[i1];     case 2: goto $r7 = new java.lang.String;     case 3: goto $r7 = new java.lang.String;     case 4: goto $b11 = r0[i1];     case 5: goto $b2 = r0[i1];     default: goto $r7 = new java.lang.String; };	$r7 = new java.lang.String;	specialinvoke $r7.<java.lang.String: void <init>(byte[],int,int)>(r0, i1, i0);	$z0 = staticinvoke <java.lang.Boolean: boolean parseBoolean(java.lang.String)>($r7);	$r6 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>($z0);	return $r6
;block_num 2