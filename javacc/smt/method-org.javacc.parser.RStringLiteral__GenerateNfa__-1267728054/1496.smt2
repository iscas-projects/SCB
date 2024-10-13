(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3625 0)
(declare-sort var3990 0)
(declare-sort var1148 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun image/-300401223 (var3625) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var3990-init () var3990)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-fun <init>/-888322663 (var3990 Int) void)
(declare-fun GenerateNfa/1138043873 (var3990 Bool) var1148)
(declare-const null-var3625 var3625)
(declare-const null-Bool Bool)
(declare-const var99 var3625) ; Statement: r0 := @this: org.javacc.parser.RStringLiteral 
(assert (not (= var99 null-var3625)))
(declare-const var839 Bool) ; Statement: z1 := @parameter0: boolean 
(assert (not (= var839 null-Bool)))
(define-const var2976 String (image/-300401223 var99)) ; Statement: $r1 = r0.<org.javacc.parser.RStringLiteral: java.lang.String image> 
(assert true)
(define-const var1878 Int (length/-134980193 var2976)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int length()>() 
 ; Statement: if $i0 != 1 goto $r2 = new org.javacc.parser.NfaState 
(assert (not (not (= var1878 1)))) ; Negate: Cond: $i0 != 1  
(define-const var12 var3990 var3990-init) ; Statement: $r12 = new org.javacc.parser.RCharacterList 
(define-const var883 String (image/-300401223 var99)) ; Statement: $r13 = r0.<org.javacc.parser.RStringLiteral: java.lang.String image> 
(assert (and true (and (> (str.len var883) 0) (<= 0 0))))
(define-const var873 Int (charAt/698050440 var883 0)) ; Statement: $c8 = virtualinvoke $r13.<java.lang.String: char charAt(int)>(0) 
(assert true)
;(assert (<init>/-888322663 var12 var873)) ; Statement: specialinvoke $r12.<org.javacc.parser.RCharacterList: void <init>(char)>($c8) 

(declare-const var12!1 var3990)
(declare-const var873!1 Int)
(assert true)
(define-const var619 var1148 (GenerateNfa/1138043873 var12!1 var839)) ; Statement: $r14 = virtualinvoke $r12.<org.javacc.parser.RCharacterList: org.javacc.parser.Nfa GenerateNfa(boolean)>(z1) 
 ; Statement: return $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {image/-300401223=([org.javacc.parser.RStringLiteral], java.lang.String), length/-134980193=([java.lang.String], int), var3990-init=([], org.javacc.parser.RCharacterList), charAt/698050440=([java.lang.String, int], char), <init>/-888322663=([org.javacc.parser.RCharacterList, char], void), GenerateNfa/1138043873=([org.javacc.parser.RCharacterList, boolean], org.javacc.parser.Nfa)}
; {var3625=org.javacc.parser.RStringLiteral, var99=r0, var839=z1, var2976=$r1, var1878=$i0, var3990=org.javacc.parser.RCharacterList, var12=$r12, var883=$r13, var873=$c8, var1148=org.javacc.parser.Nfa, var619=$r14}
; {org.javacc.parser.RStringLiteral=var3625, r0=var99, z1=var839, $r1=var2976, $i0=var1878, org.javacc.parser.RCharacterList=var3990, $r12=var12, $r13=var883, $c8=var873, org.javacc.parser.Nfa=var1148, $r14=var619}
;seq <java.lang.String: int length()>;	<java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: char charAt(int)>": 1}
;stmts r0 := @this: org.javacc.parser.RStringLiteral;	z1 := @parameter0: boolean;	$r1 = r0.<org.javacc.parser.RStringLiteral: java.lang.String image>;	$i0 = virtualinvoke $r1.<java.lang.String: int length()>();	if $i0 != 1 goto $r2 = new org.javacc.parser.NfaState;	$r12 = new org.javacc.parser.RCharacterList;	$r13 = r0.<org.javacc.parser.RStringLiteral: java.lang.String image>;	$c8 = virtualinvoke $r13.<java.lang.String: char charAt(int)>(0);	specialinvoke $r12.<org.javacc.parser.RCharacterList: void <init>(char)>($c8);	$r14 = virtualinvoke $r12.<org.javacc.parser.RCharacterList: org.javacc.parser.Nfa GenerateNfa(boolean)>(z1);	return $r14
;block_num 2