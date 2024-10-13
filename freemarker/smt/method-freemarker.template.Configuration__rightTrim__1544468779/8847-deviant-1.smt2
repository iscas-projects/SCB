(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1935 0)
(declare-sort var1462 0)
(declare-sort var3690 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-fun var3690_isWhitespace/-755916491 (Int) Bool)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-const null-var1935 var1935)
(declare-const null-String String)
(declare-const var850 var1935) ; Statement: r2 := @this: freemarker.template.Configuration 
(assert (not (= var850 null-var1935)))
(declare-const var648 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var648 null-String)))
(assert true)
(define-const var3375 Int (length/-134980193 var648)) ; Statement: i2 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert true) ; Non Conditional
 ; Statement: if i2 <= 0 goto $r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i2) 
(assert (not (<= var3375 0))) ; Negate: Cond: i2 <= 0  
(define-const var835 Int (- var3375 1)) ; Statement: $i0 = i2 - 1 
(assert (and true (and (> (str.len var648) var835) (<= 0 var835))))
(define-const var1229 Int (charAt/698050440 var648 var835)) ; Statement: $c1 = virtualinvoke r0.<java.lang.String: char charAt(int)>($i0) 
(define-const var113 Bool (var3690_isWhitespace/-755916491 var1229)) ; Statement: $z0 = staticinvoke <java.lang.Character: boolean isWhitespace(char)>($c1) 
 ; Statement: if $z0 == 0 goto $r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i2) 
(assert (= (ite var113 1 0) 0)) ; Cond: $z0 == 0 
(assert (not (and true (and (>= 0 0) (>= (str.len var648) var3375) (>= var3375 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), charAt/698050440=([java.lang.String, int], char), var3690_isWhitespace/-755916491=([char], boolean), substring/-1240304868=([java.lang.String, int, int], java.lang.String)}
; {var1935=freemarker.template.Configuration, var850=r2, var648=r0, var1462=null_type, var3375=i2, var835=$i0, var1229=$c1, var3690=java.lang.Character, var113=$z0, var2032=$r1}
; {freemarker.template.Configuration=var1935, r2=var850, r0=var648, null_type=var1462, i2=var3375, $i0=var835, $c1=var1229, java.lang.Character=var3690, $z0=var113, $r1=var2032}
;seq <java.lang.String: int length()>;	<java.lang.String: char charAt(int)>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: char charAt(int)>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r2 := @this: freemarker.template.Configuration;	r0 := @parameter0: java.lang.String;	i2 = virtualinvoke r0.<java.lang.String: int length()>();	if i2 <= 0 goto $r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i2);	$i0 = i2 - 1;	$c1 = virtualinvoke r0.<java.lang.String: char charAt(int)>($i0);	$z0 = staticinvoke <java.lang.Character: boolean isWhitespace(char)>($c1);	if $z0 == 0 goto $r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i2);	$r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i2);	return $r1
;block_num 4