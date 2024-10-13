(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var199 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-253222812 (String (Array Int Int) Int Int) void)
(declare-fun var199_parseBoolean/746105335 (String) Bool)
(declare-fun var199_valueOf/1602327315 (Bool) var199)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const var468 (Array Int Int)) ; Statement: r0 := @parameter0: char[] 
(assert (not (= var468 null-__Array__Int__Int__)))
(declare-const var567 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var567 null-Int)))
(declare-const var122 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var122 null-Int)))
 ; Statement: tableswitch(i0) {     case 0: goto return null;     case 1: goto c18 = r0[i1];     case 2: goto $r7 = new java.lang.String;     case 3: goto $r7 = new java.lang.String;     case 4: goto $c11 = r0[i1];     case 5: goto $c2 = r0[i1];     default: goto $r7 = new java.lang.String; } 
(assert (and (not (= var122 1)) (and (not (= var122 0)) true))) ; Intersect: Negate: Cond: i0 == 1   and Intersect: Negate: Cond: i0 == 0   and Non Conditional  
(define-const var1860 String String-init) ; Statement: $r7 = new java.lang.String 
(assert true)
;(assert (<init>/-253222812 var1860 var468 var567 var122)) ; Statement: specialinvoke $r7.<java.lang.String: void <init>(char[],int,int)>(r0, i1, i0) 

(declare-const var1860!1 String)
(declare-const var468!1 (Array Int Int))
(declare-const var567!1 Int)
(declare-const var122!1 Int)
(define-const var3021 Bool (var199_parseBoolean/746105335 var1860!1)) ; Statement: $z0 = staticinvoke <java.lang.Boolean: boolean parseBoolean(java.lang.String)>($r7) 
(define-const var3354 var199 (var199_valueOf/1602327315 var3021)) ; Statement: $r6 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>($z0) 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.String), <init>/-253222812=([java.lang.String, char[], int, int], void), var199_parseBoolean/746105335=([java.lang.String], boolean), var199_valueOf/1602327315=([boolean], java.lang.Boolean)}
; {var468=r0, var567=i1, var122=i0, var1860=$r7, var199=java.lang.Boolean, var3021=$z0, var3354=$r6}
; {r0=var468, i1=var567, i0=var122, $r7=var1860, java.lang.Boolean=var199, $z0=var3021, $r6=var3354}
;seq <java.lang.String: void <init>(char[],int,int)>
;cnt {"<java.lang.String: void <init>(char[],int,int)>": 1}
;stmts r0 := @parameter0: char[];	i1 := @parameter1: int;	i0 := @parameter2: int;	tableswitch(i0) {     case 0: goto return null;     case 1: goto c18 = r0[i1];     case 2: goto $r7 = new java.lang.String;     case 3: goto $r7 = new java.lang.String;     case 4: goto $c11 = r0[i1];     case 5: goto $c2 = r0[i1];     default: goto $r7 = new java.lang.String; };	$r7 = new java.lang.String;	specialinvoke $r7.<java.lang.String: void <init>(char[],int,int)>(r0, i1, i0);	$z0 = staticinvoke <java.lang.Boolean: boolean parseBoolean(java.lang.String)>($r7);	$r6 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>($z0);	return $r6
;block_num 2